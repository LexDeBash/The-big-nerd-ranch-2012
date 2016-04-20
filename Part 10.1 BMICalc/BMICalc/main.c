//
//  main.c
//  BMICalc
//
//  Created by Alexey Efimov on 13.04.16.
//  Copyright © 2016 Alexey Efimov. All rights reserved.
//

#include <stdio.h>

// Объявление типа Person
typedef struct {
    float heightInMeters;
    float weightInKilos;
} Person;

float bodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[]) {
    Person efimovAlexey;
    efimovAlexey.weightInKilos = 70.00;
    efimovAlexey.heightInMeters = 1.68;
    float bmi = bodyMassIndex(efimovAlexey);
    printf("person weights %.2f kg.\n", efimovAlexey.weightInKilos);
    printf("person heights %.2f m.\n", efimovAlexey.heightInMeters);
    printf("Efimov Alexey has a BMI of %.2f\n", bmi);
    return 0;
}
