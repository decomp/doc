int A, b1, b2, c1, c2, c3, d1, d2, d3, n1, n2, n3, n4, n5, n6, n7, n8, n9;

void f() {

if (A) {
   do {                                // /Region 1.
      while (c1) {                     // |
         n1;                           // |
      }                                // |
      if (c2) {                        // |
         n2;                           // |
         break;                        // |
      }                                // |
      n3;                              // |
   } while (c3);                       // \_
} else {                               // /Region 2.
   if (!b1) {                          // |
      n4;                              // |
   }                                   // |
   if (b1 && b2) {                     // |
      n6;                              // |
   } else {                            // |
      n5;                              // |
   }                                   // |
   n7;                                 // \_
   while ((d1 && d3) || (!d1 && d2)) { // /Region 3.
      n8;                              // |
   }                                   // \_
   n9;
}

}
