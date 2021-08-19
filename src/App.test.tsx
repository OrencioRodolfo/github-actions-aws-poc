import React from "react";
import { render, screen } from "@testing-library/react";
import App from "./App";

test("renders welcome message", () => {
  render(<App />);
  const linkElement = screen.getByText(/Hey all!/i);
  expect(linkElement).toBeInTheDocument();
});
