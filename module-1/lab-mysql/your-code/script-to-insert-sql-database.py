import os
import pandas as pd



dfCars = pd.read_table('cars.txt','\t',lineterminator='\r')  
dfCustomers = pd.read_csv('customers.txt', sep='\t', lineterminator='\r')

dfSalespersons = pd.read_csv('salespersons.txt', sep='\t', lineterminator='\r')

dfInvoices = pd.read_csv('invoices.txt', sep='\t', lineterminator='\r')

print(dfCars, dfCustomers, dfSalespersons, dfInvoices)

print(pd.dfCars.values)