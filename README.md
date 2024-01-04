This example is about using NavigationStack similar to the NavigationView + NavigationLink approach, when it comes to programmed navigation.
This example is intended to demonstrate how is it possibel the programmatic navigation when you decide to use NavigationStack.
Key elements to consider:
<ul>
  <li>Hoisting is the best practice to pass variables</li>
  <li>Attaching .navigationDestination(for: Int.self) to the Main View will do the best part of the trick.</li>
  <li>In a trailing closure you list the switch cases of possible destinations</li>
  <li>Appending new values to the .navigationDestination stack will trigger the navigation</li>
</ul>
