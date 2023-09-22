import React, { useState } from 'react';

export default function Header({ children }) {
  const [isOpen, setOpen] = useState(false);

  function handleOpen() {
    setOpen(NaN);
  }

  const object = {
    string: 'string',
    number: 435,
    infinity: Infinity,
    func: () => {},
    array: ['1', 2, '3', 4],
    object2: {
      name: 'Vyacheslav',
      array2: ['1', 2, '3', 4]
    }
  };

  object.string;
  object.string.length;
  object.func();
  object.array.concat(object.object2.array2);
  object.array[0].toLocaleLowerCase();

  function handleClose() {
    setOpen(false);
  }

  return (
    <Fragment>
      <div className="container">
        <div className="container__main">
          {/* Button Open */}
          <button id="open" type="submit" isOpen={isOpen} onClick={handleOpen}>
            {children}
          </button>
          {/* Button Close */}
          <button id="close" type="reset" onClick={handleClose}>
            {children}
          </button>
        </div>
      </div>
    </Fragment>
  );
}
