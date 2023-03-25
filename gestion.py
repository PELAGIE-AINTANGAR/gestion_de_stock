import tkinter as tk
import mysql.connector
import tkinter.ttk as ttk
from tkinter import messagebox as msg
from tkinter.messagebox import showinfo


# Se connecter à la base de données "boutique"
mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="root",
  database="boutique",
  autocommit = True
)

# Créer la table "categorie"
mycursor = mydb.cursor()
#mycursor.execute("CREATE TABLE categorie (id INT AUTO_INCREMENT PRIMARY KEY, nom VARCHAR(255))")

# Création de la fenêtre principale
root = tk.Tk()
root.title("Gestion de stock")
root.geometry('1250x600')


prod_frame = tk.Label(root, text="liste des Produits")
prod_frame.grid(row=0, column=0, padx=10, pady=10)

frame = ttk.Frame(root)
frame.grid(row=1, column=0, pady=10, padx=10, sticky='nsew')

# Création des cadres pour les produits et les catégories
treeColumns = ('Id', 'Nom',  'description','Prix', 'Quantite', 'Categorie')
tree = ttk.Treeview(frame, columns=treeColumns, show='headings')


# define headings
tree.heading('Id', text='Id')
tree.heading('Nom', text='Nom')
tree.heading('description', text='description')
tree.heading('Prix', text='Prix')
tree.heading('Quantite', text='Quantite')
tree.heading('Categorie', text='Categorie')


# generate sample data

contacts = []
mycursor.execute("SELECT * FROM produit")
for data in mycursor:
    contacts.append(data)
add_nom= []
# add data to the treeview
for contact in contacts:
    if contact[1] not in add_nom:
        tree.insert('', tk.END, values=contact)
        add_nom.append(contact[1])
        print(contact)
    # tree.insert('', tk.END, values=contact)

def item_selected(event):
    for selected_item in tree.selection():
        item = tree.item(selected_item)
        record = str(item['values'])
        # show a message
        showinfo(title='Information', message=','.join(record))


tree.bind('<<TreeviewSelect>>', item_selected)

tree.grid(row=0, column=0, sticky='nsew')

#add a scrollbar
scrollbar = ttk.Scrollbar(root, orient=tk.VERTICAL, command=tree.yview)
scrollbar.grid(row=1, column=1, sticky='ns')
tree.configure(yscroll=scrollbar.set)


# Insérer des données de test dans la table "categorie"
sql = "INSERT INTO categorie (nom) VALUES (%s)"
val = ("Electronique", )
mycursor.execute(sql, val)
val = ("Mode", )
mycursor.execute(sql, val)
val = ("Maison", )
mycursor.execute(sql, val)

# Créer la table "produit"
mycursor = mydb.cursor()
mycursor.execute("ALTER TABLE produit DROP INDEX uc_nom")
mycursor.execute("ALTER TABLE produit ADD CONSTRAINT uc_nom UNIQUE (nom)")


# Insérer des données de test dans la table "produit"
sql = "INSERT IGNORE INTO produit (nom, description, prix, quantite, id_categorie) VALUES (%s, %s, %s, %s, %s)"
val = ("Téléviseur", "Téléviseur OLED 4K", 1500, 10, 1)
mycursor.execute(sql, val)
val = ("Chemise", "Chemise en coton", 50, 50, 2)
mycursor.execute(sql, val)
val = ("Canapé", "Canapé d'angle en cuir", 2000, 5, 3)
mycursor.execute(sql, val)
val = ("Chaise", "Chaise en bois", 100, 20, 3)
mycursor.execute(sql, val)
val = ("Table", "Table en bois", 200, 10, 3)
mycursor.execute(sql, val)

mydb.commit()

def ajouter_produit(nom, description, prix, quantite, categorie_id):# Ajouter un produit à la base de données et dans le TreeView 
    try:
  

        conn = mysql.connector.connect(host='localhost', database='boutique', user='root', password='root')
        cursor = conn.cursor()
        # cursor = conn.cursor()
        if prix:
            prix = int(prix)

        if quantite:
            quantite = int(quantite)

        if categorie_id:
            categorie_id = int(categorie_id)
        

        produit_query = "INSERT INTO produit (nom, description, prix, quantite, id_categorie) VALUES (%s, %s, %s, %s, %s)"
        produit_values = (nom, description, prix, quantite, categorie_id)

        cursor.execute(produit_query, produit_values)
        conn.commit()
        
        print(cursor.rowcount, "produit ajouté avec succès")
        # Ajouter le produit au TreeView
      
        tree.insert('', tk.END, values=(cursor.lastrowid, nom, description, prix, quantite, categorie_id))
        

        
    # except mysql.connector.Error as error:
    #     print("Erreur lors de la connexion à la base de données: {}".format(error))
    finally:
        if (conn.is_connected()):

            cursor.close()
            conn.close()



def modifier_produit(id, nom, description, prix, quantite, categorie_id):
    #cette fonction permet de modifier un produit dans la base de données et dans le TreeView, le resulatat est observer aprés reouverture de la fenêtre
    
    try:
        
        conn = mysql.connector.connect(host='localhost', database='boutique', user='root', password='root')
        cursor = conn.cursor()
        
        if prix:
            prix = int(prix)
            
        if quantite:
            quantite = int(quantite)
            
        if categorie_id:
            categorie_id = int(categorie_id)
            
        if id:
            id = int(id)
            
        selected_item = tree.selection()
     
        produit_query = "UPDATE produit SET nom=%s, description=%s, prix=%s, quantite=%s, id_categorie=%s WHERE id=%s"
        produit_values = (nom, description, prix, quantite, categorie_id, id)
        print(id, nom, description, prix, quantite, categorie_id)

        cursor.execute(produit_query, produit_values)
        conn.commit()
        
        if selected_item: # Si un produit est sélectionné dans le TreeView
            
            tree.item(selected_item, values=(nom, description, prix, quantite, categorie_id)) # Met à jour les valeurs des colonnes
            
        
        print(cursor.rowcount, "produit(s) modifié(s) avec succès")


    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()
    produit_id = cursor.lastrowid
    



def supprimer_produit(id): #cette fonction permet de supprimer un produit dans la base de données et dans le TreeView, le resulatat est observer aprés reouverture de la fenêtre
    try:
        conn = mysql.connector.connect(host='localhost', database='boutique', user='root', password='root')
        cursor = conn.cursor()
        if id:
            id = int(id)
        select_id = "SELECT id FROM produit WHERE id = %s"
            
        produit_query = "DELETE FROM produit WHERE id = %s"
        produit_values = (id, )

        cursor.execute(produit_query, produit_values)
        conn.commit()
    
        if id in tree.get_children():
            tree.delete(select_id)
        print(cursor.rowcount, "produit(s) supprimé(s) avec succès")
        

    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()

#create window
lbl_nom = tk.Label(root, text='Nom')
lbl_nom.place(x=10, y=400, width=150, height=30)

entre_nom = tk.Entry(root, text='')
entre_nom.place(x=150, y=400, width=200, height=30)

lbl_description = tk.Label(root, text='Description')
lbl_description.place(x=10, y=450, width=150, height=30)

entre_description = tk.Entry(root, text='')
entre_description.place(x=150, y=450, width=200, height=30)

lbl_prix = tk.Label(root, text='Prix')
lbl_prix.place(x=10, y=500, width=150, height=30)

entre_prix = tk.Entry(root, text='')
entre_prix.place(x=150, y=500, width=200, height=30)

lbl_quantite = tk.Label(root, text='Quantité')
lbl_quantite.place(x=450, y=400, width=150, height=30)

entre_quantite = tk.Entry(root, text='')
entre_quantite.place(x=600, y=400, width=200, height=30)

lbl_categorie = tk.Label(root, text='Catégorie')
lbl_categorie.place(x=450, y=450, width=150, height=30)

entre_cat = tk.Entry(root, text='')
entre_cat.place(x=600, y=450, width=200, height=30)

lbl_id= tk.Label(root, text='ID')
lbl_id.place(x=450, y=500, width=150, height=30)

entre_id= tk.Entry(root, text='')
entre_id.place(x=600, y=500, width=200, height=30)

#des fonction pour les boutons
def add_produit():
    nom = entre_nom.get()
    description = entre_description.get()
    prix = entre_prix.get()
    quantite = entre_quantite.get()
    categorie_id = entre_cat.get()
    
    print(ajouter_produit(nom, description, prix, quantite, categorie_id))
    

    entre_nom.delete(0, 'end')

    entre_description.delete(0, 'end')
    entre_cat.delete(0, 'end')
    entre_quantite.delete(0, 'end')
    entre_prix.delete(0, 'end')

    entre_nom.focus_set()

def del_produit():
    id = entre_id.get()
    supprimer_produit(id)
    entre_id.delete(0, 'end')
    entre_id.focus_set()

def mod_produit():
    id = entre_id.get()
    nom = entre_nom.get()
    description = entre_description.get()
    prix = entre_prix.get()
    quantite = entre_quantite.get()
    categorie_id = entre_cat.get()

    modifier_produit(id, nom, description, prix, quantite, categorie_id)
    
    entre_id.delete(0, 'end')
    entre_nom.delete(0, 'end')

    entre_description.delete(0, 'end')
    entre_cat.delete(0, 'end')
    entre_quantite.delete(0, 'end')
    entre_prix.delete(0, 'end')

    entre_nom.focus_set()
#boutons
btn_add = tk.Button(root, text='Ajouter', command=add_produit)
btn_add.place(x=20, y=300, width=150, height=30)

btn_del = tk.Button(root, text='Supprimer', command= del_produit)
btn_del.place(x=550, y=300, width=150, height=30)

btn_mod = tk.Button(root, text='Modifier', command= mod_produit)
btn_mod.place(x=1055, y=300, width=150, height=30)

root.mainloop()


