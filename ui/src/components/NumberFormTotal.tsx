interface NumberFormTotalProps {
    total: number
}

const NumberFormTotal = ({ total }: NumberFormTotalProps) => {
    return (
        <div className='bg-slate-700 text-white px-2 py-3 mt-4 rounded-sm'>
          <span>Total: {total}</span>
        </div>
    )
}

export default NumberFormTotal