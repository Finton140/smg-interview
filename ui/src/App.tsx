import { useState } from 'react'
import NumberFormControls from './components/NumberFormControls';
import NumberFormTotal from './components/NumberFormTotal';
import NumberList from './components/NumberList';

function App() {
  const [numberList, setNumberList] = useState<number[]>([])

  const addNumberToNumberList = (newNumber: number) => {
    if (isNaN(newNumber)) return;
    setNumberList([...numberList, newNumber])
  }

  const removeNumberFromNumberList = (index: number) => {
    const newArr = numberList.filter((_, idx) => index !== idx)
    setNumberList(newArr)
  }

  const sumNumberList = (numberList: number[]) => numberList.reduce((prev, curr) => (prev + curr), 0)

  return (
    <main className='flex flex-col items-center'>
      <div className='w-1/3 py-4'>
        <NumberFormControls addButtonAction={addNumberToNumberList} />
        <NumberList listData={numberList} removeButtonAction={removeNumberFromNumberList} />
        <NumberFormTotal total={sumNumberList(numberList)} />
      </div>
    </main>
  )
}

export default App
