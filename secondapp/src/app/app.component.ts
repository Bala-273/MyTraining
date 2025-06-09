import { Component } from '@angular/core';
import { ParentComponent } from './parent/parent.component'; // Import ParentComponent

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [ParentComponent], // Include ParentComponent here
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'secondapp';
}
