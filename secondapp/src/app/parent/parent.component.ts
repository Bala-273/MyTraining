import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ChildComponent } from '../child/child.component'; 

@Component({
  selector: 'app-parent',
  standalone: true,
  imports: [CommonModule, ChildComponent], 
  templateUrl: './parent.component.html',
  styleUrls: ['./parent.component.css']
})
export class ParentComponent {
  products: string[] = ['Laptop', 'Phone', 'Tablet', 'Headphones'];
  selectedProducts: string[] = [];

  moveToChild(product: string) {
    this.products = this.products.filter(item => item !== product);
    this.selectedProducts.push(product);
  }

  moveToParent(product: string) {
    this.selectedProducts = this.selectedProducts.filter(item => item !== product);
    this.products.push(product);
  }
}
