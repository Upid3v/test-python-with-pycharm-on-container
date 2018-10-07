import unittest

from upidev_lib import proclamer

class TestMethods(unittest.TestCase):

    def test_proclamer_remotely(self):
        self.assertEqual("Sam et Max, c'est bien", proclamer())
