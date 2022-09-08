import * as React from 'react';
import { useState } from 'react';
import * as ReactDOM from 'react-dom';
import Answer from './Answer';

const AccordionAnswer = ({ question }) => {

  return (
    <div className="accordion" id="accordionAnswer">
      <div className="accordion-item">
        <h2 className="accordion-header" id={`heading${question.id}`}>
          <button
            className="accordion-button collapsed"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target={`#collapse${question.id}`}
            aria-expanded="true"
            aria-controls={`collapse${question.id}`}
          >
            <span className='btn btn-success me-2'>Answer</span>
          </button>
        </h2>
        <div
          id={`collapse${question.id}`}
          className="accordion-collapse collapse"
          aria-labelledby={`heading${question.id}`}
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
