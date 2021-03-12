def swap(array, firstIndex, secondIndex):
  temp = array[firstIndex]
  array[firstIndex] = array[secondIndex]
  array[secondIndex] = temp

  
def indexOfMinimum(array, startIndex):
  minValue = array[startIndex]
  minIndex = startIndex

  for i in xrange(minIndex + 1,len(array)):
    if array[i] < minValue:
      minIndex = i
      minValue = array[i]
  return minIndex


def selectionSort(distance):
  # Write this method
    n = len(distance)
    for i in range(n):
        minPlace = searchMin(distance)
        swap(distance, i, minPlace+1) 

