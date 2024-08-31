Author - Kapil Naik(naik.kapil2016@gmail.com)

**The purpose of this Shiny app is to demonstrate how custom JavaScript and CSS can be integrated into a Shiny application to create a dynamic and customizable user interface. Specifically, the app allows users to adjust the width of a container dynamically, showcasing how content and layout can adapt in real-time based on user input. The app is a practical example of how front-end technologies like JavaScript and CSS can enhance the user experience in a Shiny app by enabling responsive design and interactivity.

**Custom CSS Integration:
The custom CSS file (custom.css) is used to style the app's UI elements, particularly the container (custom-container). CSS allows for more precise control over the layout, appearance, and responsiveness of the app. The CSS can define how the container resizes when the slider is adjusted, ensuring the content scales appropriately. CSS is used to apply consistent styling to elements like columns and plots, ensuring a cohesive visual design.
Example Usage: In the application code, the CSS might include rules like .custom-container { width: 1500px; } to set the initial width, and these styles can be updated dynamically using JavaScript.

**Custom JavaScript Integration:
 The custom JavaScript file (custom.js) handles dynamic updates to the CSS, allowing the app to respond in real-time to user inputs (e.g., adjusting the width of the container). JavaScript is essential for enabling interactive features that go beyond what Shiny's reactive framework provides out of the box. The JavaScript listens for messages sent from the Shiny server and updates the CSS of the custom-container accordingly. This allows for real-time adjustments to the layout without requiring a page reload.
Interactivity: JavaScript can also handle other interactive elements, like animations or transitions, enhancing the user experience.
