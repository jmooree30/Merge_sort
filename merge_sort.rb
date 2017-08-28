a = [5,2,4,6,1,7,3,9,9,11]

def merge_sort(a)
  if a.length < 2
    return a 
  end 
    sorted = []
    arr1 = merge_sort(a[0..a.length/2-1])
    arr2 = merge_sort(a[a.length/2..a.length])
      until arr1.empty? or arr2.empty?
        sorted << (arr1[0] > arr2[0] ? arr2.shift : arr1.shift)
      end 
      sorted.concat(arr1).concat(arr2)
end
merge_sort(a)
