"""unittests"""
import unittest
from calc import add, difference, multiply


class TestCases(unittest.TestCase):
    """
    class for unit testing
    """

    def test_addition(self):
        """testing addition"""
        self.assertEqual(add(1, 2), 3)

    def test_subtraction(self):
        """testing subtraction"""
        self.assertEqual(difference(10, 7), 3)

    def test_multiply(self):
        """testing multiply"""
        self.assertEqual(multiply(1, 3), 3)


if __name__ == "__main__":
    unittest.main()
