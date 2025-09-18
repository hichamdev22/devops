import { render, screen } from '@testing-library/react';
import Home from '../pages/index';

describe('Home page', () => {
  it('affiche le titre Hello DevOps!', () => {
    render(<Home />);
    expect(screen.getByText('Hello DevOps!')).toBeInTheDocument();
  });

  it('affiche le message de bienvenue', () => {
    render(<Home />);
    expect(screen.getByText(/Bienvenue/)).toBeInTheDocument();
  });
});
