import * as React from 'react';
import { useState } from 'react';
import * as ReactDOM from 'react-dom';
import Answer from './Answer';

const AccordionAnswer = ({ question }) => {

  const [isShowAnswer, setIsShowAnswer] = useState(false)

  return (
    <div className="accordion" id="accordionAnswer">
      <div className="accordion-item">
        <h2 className="accordion-header" id="headingOne">
          <button
            className="accordion-button collapsed"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#collapseOne"
            aria-expanded="true"
            aria-controls="collapseOne"
          >
            <span className='btn btn-success me-2'>Answer</span>
          </button>
        </h2>
        <div
          id="collapseOne"
          className="accordion-collapse collapse"
          aria-labelledby="headingOne"
          data-bs-parent="#accordionAnswer"
        > 
          <div className="accordion-body">
            <span>{ question['answer'] }</span>
          </div>
        </div>
      </div>
    </div>
  );
};

export default AccordionAnswer;
