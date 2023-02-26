import { useRef } from "react"
import Button from "./Button"
import NumberInput from "./NumberInput"

interface NumberFormControlsProps {
    addButtonAction: (newNumber: number) => void
}

const NumberFormControls = ({ addButtonAction }: NumberFormControlsProps) => {
    const numberInputRef = useRef<HTMLInputElement>(null)

    return (
        <div className='flex gap-4 items-center py-4'>
          <NumberInput ref={numberInputRef} />
          <Button onClick={_ => addButtonAction(parseInt(numberInputRef.current?.value ?? ''))}>Add</Button>
        </div>
    )
}

export default NumberFormControls