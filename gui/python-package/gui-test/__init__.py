from gi.repository import Gtk

class Handler:
    def __init__(self, *args):
        self.counter = 0

    def on_window1_destroy(self, *args):
        Gtk.main_quit(*args)

    def on_button1_clicked(self, widget):
        self.counter += 1
        widget.set_label("Hello, World!\nClick count = %i" % self.counter)

def gui():
    builder = Gtk.Builder()
    builder.add_from_file("clickme.glade")
    builder.connect_signals(Handler())
    window = builder.get_object("window1")
    window.show_all()
    Gtk.main()


