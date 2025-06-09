import { Component, Input, Output, EventEmitter } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-child',
  standalone: true,
  imports: [CommonModule], // Import CommonModule for Angular directives
  templateUrl: './child.component.html',
  styleUrls: ['./child.component.css']
})
export class ChildComponent {
  @Input() selectedProducts: string[] = [];
  @Output() returnToParent = new EventEmitter<string>();

  moveToParent(product: string) {
    this.returnToParent.emit(product);
  }
}
