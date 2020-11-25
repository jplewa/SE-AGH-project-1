import copy
import sys

from PyQt5 import QtWidgets
from PyQt5.QtWidgets import QMessageBox

import controller
import data
from gui.interface import Ui_MainWindow


class MainWindow(QtWidgets.QMainWindow, Ui_MainWindow):
    def __init__(self, parent=None):
        QtWidgets.QMainWindow.__init__(self, parent)
        self.ui = Ui_MainWindow()
        self.ui.setupUi(self)
        self.ui.is_edible_button.clicked.connect(self.is_edible_button_clicked)
        self.ui.clear_selected_button.clicked.connect(self.clear_selected)
        self.buttons_groups = [self.ui.cap_shape_group, self.ui.cap_surface_group, self.ui.cap_color_group,
                                     self.ui.stalk_root_group, self.ui.stalk_color_above_ring_group,
                                     self.ui.stalk_color_below_ring_group, self.ui.gill_spacing_group,
                                     self.ui.ring_number_group, self.ui.veil_color_group]
        self.controller = controller.Controller()
        self.data = {}

    def is_edible_button_clicked(self):
        self.data = copy.deepcopy(data.data)
        self.check_values()
        result = self.controller.calculate(self.data)
        QMessageBox.about(self, 'Info', 'This mushroom is {}.'.format(result))

    def clear_selected(self):
        for buttons_group in self.buttons_groups:
            checked = buttons_group.checkedButton()
            if checked:
                buttons_group.setExclusive(False)
                checked.setChecked(False)
                buttons_group.setExclusive(True)

    def check_values(self):
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

    def check_cap_shape(self):
        if self.ui.cap_shape_flat.isChecked():
            self.data['cap']['shape']['flat'] = 'xpositive'
        if self.ui.cap_shape_bell.isChecked():
            self.data['cap']['shape']['bell'] = 'xpositive'
        if self.ui.cap_shape_convex.isChecked():
            self.data['cap']['shape']['convex'] = 'xpositive'
        if self.ui.cap_shape_conical.isChecked():
            self.data['cap']['shape']['conical'] = 'xpositive'

    def check_cap_surface(self):
        if self.ui.cap_surface_scaly.isChecked():
            self.data['cap']['surface']['scaly'] = 'xpositive'
        elif self.ui.cap_surface_smooth.isChecked():
            self.data['cap']['surface']['smooth'] = 'xpositive'
        elif self.ui.cap_surface_fibrous.isChecked():
            self.data['cap']['surface']['fibrous'] = 'xpositive'

    def check_cap_color(self):
        if self.ui.cap_color_white.isChecked():
            self.data['cap']['color']['white'] = 'xpositive'
        elif self.ui.cap_color_pink.isChecked():
            self.data['cap']['color']['pink'] = 'xpositive'
        elif self.ui.cap_color_brown.isChecked():
            self.data['cap']['color']['brown'] = 'xpositive'

    def check_bruises(self):
        if self.ui.bruises_true.isChecked():
            self.data['bruises']['presence']['visible'] = 'xpositive'
        elif self.ui.bruises_false.isChecked():
            self.data['bruises']['presence']['visible'] = 'xnegative'

    def check_stalk_root(self):
        if self.ui.stalk_root_bulbous.isChecked():
            self.data['stalk_root']['shape']['bulbous'] = 'xpositive'
        elif self.ui.stalk_root_club.isChecked():
            self.data['stalk_root']['shape']['club'] = 'xpositive'
        elif self.ui.stalk_root_equal.isChecked():
            self.data['stalk_root']['shape']['equal'] = 'xpositive'

    def check_stalk_color_above_ring(self):
        if self.ui.stalk_color_above_ring_white.isChecked():
            self.data['stalk_above_ring']['color']['white'] = 'xpositive'
        elif self.ui.stalk_color_above_ring_red.isChecked():
            self.data['stalk_above_ring']['color']['red'] = 'xpositive'

    def check_stalk_color_below_ring(self):
        if self.ui.stalk_color_below_ring_white.isChecked():
            self.data['stalk_below_ring']['color']['white'] = 'xpositive'
        elif self.ui.stalk_color_below_ring_red.isChecked():
            self.data['stalk_below_ring']['color']['red'] = 'xpositive'

    def check_gill_spacing(self):
        if self.ui.gill_spacing_close.isChecked():
            self.data['gills']['spacing']['close'] = 'xpositive'
        elif self.ui.gill_spacing_crowded.isChecked():
            self.data['gills']['spacing']['crowded'] = 'xpositive'

    def check_ring_number(self):
        if self.ui.ring_number_none.isChecked():
            self.data['rings']['number']['none'] = 'xpositive'
        elif self.ui.ring_number_one.isChecked():
            self.data['rings']['number']['one'] = 'xpositive'
        elif self.ui.ring_number_two.isChecked():
            self.data['rings']['number']['two'] = 'xpositive'

    def check_veil_color(self):
        if self.ui.veil_color_white.isChecked():
            self.data['veil']['color']['white'] = 'xpositive'
        elif self.ui.veil_color_yellow.isChecked():
            self.data['veil']['color']['yellow'] = 'xpositive'
        elif self.ui.veil_color_orange.isChecked():
            self.data['veil']['color']['orange'] = 'xpositive'
        elif self.ui.veil_color_brown.isChecked():
            self.data['veil']['color']['brown'] = 'xpositive'


def main():
    app = QtWidgets.QApplication(sys.argv)
    window = MainWindow()
    window.show()
    app.exec_()


if __name__ == '__main__':
    main()
