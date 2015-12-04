__author__ = 'lee'

from pyswip import Prolog
from Tkinter import *
from PIL import Image, ImageTk


def create_query(age, money, family, location):
    return "advisor:is_suitable_car(client(%s, %s, %s, %s), Car)." % (age, money, family, location)

#window for viewing results
class ResultsWatchWindow:
    
    def __init__(self,master,images,texts):
        self.akt=0
        self.l=len(images)
        self.images=images
        self.texts=texts
        #text on top
        textFirstPart=Label(master,text="Here is a list of suitable cars.")
        textSecondPart=Label(master,text="Use arrow buttons to switch.")
        textFirstPart.pack()
        textSecondPart.pack()
        #image
        self.imageLabel=Label(master,image=self.images[self.akt])
        img_label.image=self.images[self.akt]
        self.imageLabel.pack()
        #Current image indicator
        self.currentImageLabel=Label(master,
                                text=self.texts[self.akt]+" (image "+str(self.akt+1)+"/"+str(self.l)+")")
        self.currentImageLabel.pack()
        #arrows on bottom        
        arrowsPanel=Frame(master)
        left=Button(arrowsPanel,text="<---",command=self.switchLeft)
        right=Button(arrowsPanel,text="--->",command=self.switchRight)
        left.pack(side=LEFT)
        right.pack(side=LEFT)
        arrowsPanel.pack()
        
        
    def switchLeft(self):
        if self.akt==0:
            self.akt=self.l-1
        else:
            self.akt=self.akt-1
        self.imageLabel.configure(image=self.images[self.akt])
        self.imageLabel.image=self.images[self.akt]
        self.currentImageLabel.configure(
            text=self.texts[self.akt]+" (image "+str(self.akt+1)+"/"+str(self.l)+")")

    def switchRight(self):
        if self.akt==self.l-1:
            self.akt=0
        else:
            self.akt=self.akt+1
        self.imageLabel.configure(image=self.images[self.akt])
        self.imageLabel.image=self.images[self.akt]
        self.currentImageLabel.configure(
            text=self.texts[self.akt]+" (image "+str(self.akt+1)+"/"+str(self.l)+")")


def create_information_frame(query_txt, choices, var):
    label = Label(top, text=query_txt)
    label.pack()
    frame = Frame(top)
    var.set(0)
    for text, i in choices:
        b = Radiobutton(frame, text=text, variable=var, value=i)
        b.pack(side=LEFT)
    frame.pack()


if __name__ == "__main__":
    top = Tk()

    p = Prolog()
    p.consult("advisor.pl")
    print "Witaj w AutomobileAdvisor!!"
    print "Program pomoze w wyborze odpowiedniego dla ciebie auta przy pomocy paru pytan"
    print "W jakim jestes wieku(wpisz numer)? 0 - mlody 1 - sredni 2 - podeszly"

    age_query_text = "How old are you?"
    age_choices = [
            ("young", "young"),
            ("mid", "mid"),
            ("old", "old")
    ]
    age_var = StringVar()
    create_information_frame(age_query_text, age_choices, age_var)

    money_query_txt = "How rich are you?"
    money_choices=[
        ("poor","poor"),
        ("average","average"),
        ("rich","rich")
    ]
    money_var=StringVar()
    create_information_frame(money_query_txt, money_choices, money_var)

    family_query_txt = "What is your marital status?"
    family_choices=[
        ("single","single"),
        ("married","married")
        ]
    family_var=StringVar()
    create_information_frame(family_query_txt, family_choices, family_var)

    location_query_txt = "What is your location?"
    location_choice = [
        ("smallcity", "smallcity"),
        ("bigcity", "bigcity"),
        ("village", "village")
    ]
    location_var = StringVar()
    create_information_frame(location_query_txt, location_choice, location_var)

    img_label = Label(top)
    img_label.pack()

    def callback():       
        top.destroy()
        newTop=Tk()
        
        images=[]
        texts=[]

        print age_var.get()
        print money_var.get()
        print family_var.get()
        res = p.query(create_query(age_var.get(), money_var.get(), family_var.get(), location_var.get()))
        for r in res:
            print(r["Car"])
            #XXX change if the text gets more sophisticated
            texts.append(r["Car"])
            images.append(ImageTk.PhotoImage(Image.open("res/"+str(r["Car"])+".jpg")))
            print "res/"+str(r["Car"])+".jpg"

        akt=0
        l=len(images)

        if l>0:
            resultsWatchWindow=ResultsWatchWindow(newTop,images,texts)
        else:
            text=Label(newTop,text="Sorry, but there is no suitable car for you.")
            text.pack()
        
        #newTop.destroy()
        

    
    button=Button(top,text="OK",command=callback)
    button.pack()
    
    top.mainloop()


    
