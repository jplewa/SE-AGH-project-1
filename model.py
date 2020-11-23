import sys

from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QMessageBox

from gui.interface import Ui_MainWindow


class MainWindow(QtWidgets.QMainWindow, Ui_MainWindow):
    def __init__(self, parent=None):
        QtWidgets.QMainWindow.__init__(self, parent)
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.is_edible_button.clicked.connect(self.on_is_edible_button_clicked)
        self.data = {'cap_shape': '',
                     'cap_surface': '',
                     'cap_color': '',
                     'bruises': '',
                     'stalk_root': '',
                     'stalk_color_above_ring': '',
                     'stalk_color_below_ring': '',
                     'gill_spacing': '',
                     'ring_number': '',
                     'veil_color': ''}

    def on_is_edible_button_clicked(self):
        self.check_cap_shape()
        self.check_cap_surface()
        self.check_cap_color()
        self.check_bruises()
        self.check_stalk_root()
        self.check_stalk_color_above_ring()
        self.check_stalk_color_below_ring()
        self.check_gill_spacing()
        self.check_ring_number()
        self.check_veil_color()
        if '' in self.data.values():
            QMessageBox.about(self, 'Successful', 'Please select an option for each attribute.')
        else:
            QMessageBox.about(self, 'Error', 'Selected options: {}.'.format(str(self.data)))

    def check_cap_shape(self):
        if self.ui.cap_shape_flat.isChecked():
            self.data['cap_shape'] = 'flat'
        elif self.ui.cap_shape_bell.isChecked():
            self.data['cap_shape'] = 'bell'
        elif self.ui.cap_shape_convex.isChecked():
            self.data['cap_shape'] = 'convex'
        elif self.ui.cap_shape_conical.isChecked():
            self.data['cap_shape'] = 'conical'

    def check_cap_surface(self):
        if self.ui.cap_surface_scaly.isChecked():
            self.data['cap_surface'] = 'scaly'
        elif self.ui.cap_surface_smooth.isChecked():
            self.data['cap_surface'] = 'smooth'
        elif self.ui.cap_surface_fibrous.isChecked():
            self.data['cap_surface'] = 'fibrous'

    def check_cap_color(self):
        if self.ui.cap_color_white.isChecked():
            self.data['cap_color'] = 'white'
        elif self.ui.cap_color_pink.isChecked():
            self.data['cap_color'] = 'pink'
        elif self.ui.cap_color_brown.isChecked():
            self.data['cap_color'] = 'brown'

    def check_bruises(self):
        if self.ui.bruises_true.isChecked():
            self.data['bruises'] = 'true'
        elif self.ui.bruises_false.isChecked():
            self.data['bruises'] = 'false'

    def check_stalk_root(self):
        if self.ui.stalk_root_bulbous.isChecked():
            self.data['stalk_root'] = 'bulbous'
        elif self.ui.stalk_root_club.isChecked():
            self.data['stalk_root'] = 'club'
        elif self.ui.stalk_root_equal.isChecked():
            self.data['stalk_root'] = 'equal'

    def check_stalk_color_above_ring(self):
        if self.ui.stalk_color_above_ring_white.isChecked():
            self.data['stalk_color_above_ring'] = 'white'
        elif self.ui.stalk_color_above_wing_red.isChecked():  # todo fix typo
            self.data['stalk_color_above_ring'] = 'red'

    def check_stalk_color_below_ring(self):
        if self.ui.stalk_color_below_ring_white.isChecked():
            self.data['stalk_color_below_ring'] = 'white'
        elif self.ui.stalk_color_below_ring_red.isChecked():
            self.data['stalk_color_below_ring'] = 'red'

    def check_gill_spacing(self):
        if self.ui.gill_spacing_close.isChecked():
            self.data['gill_spacing'] = 'close'
        elif self.ui.gill_spacing_crowded.isChecked():
            self.data['gill_spacing'] = 'crowded'

    def check_ring_number(self):
        if self.ui.ring_number_none.isChecked():
            self.data['ring_number'] = 'none'
        elif self.ui.ring_number_one.isChecked():
            self.data['ring_number'] = 'one'
        elif self.ui.ring_number_two.isChecked():
            self.data['ring_number'] = 'two'

    def check_veil_color(self):
        if self.ui.veil_color_white.isChecked():
            self.data['veil_color'] = 'white'
        elif self.ui.veil_color_yellow.isChecked():
            self.data['veil_color'] = 'yellow'
        elif self.ui.veil_color_orange.isChecked():
            self.data['veil_color'] = 'orange'
        elif self.ui.veil_color_brown.isChecked():
            self.data['veil_color'] = 'brown'


def main():
    app = QtWidgets.QApplication(sys.argv)
    window = MainWindow()
    window.show()
    app.exec_()


if __name__ == '__main__':
    main()
