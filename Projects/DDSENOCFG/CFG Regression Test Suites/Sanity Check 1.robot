*** Setting ***
Resource    ../Resources/DddPassport.robot
Resource    ../Resources/DddSpace.robot
Resource    ../Resources/Effectivities.robot
Resource    ../Resources/ProductStructure.robot
Resource    ../Resources/RichClient.robot
Resource    ../Resources/VariantManagement.robot
Metadata    \    #link to 3DSpace Application
Resource    ../SETTINGS.robot
*** Variable ***
*** Test Cases ***
Login 3DSpace Admin
    Log    Login to 3DSpace application as ADMIN
    DddSpace.Login    ${dddspace_link}    ${username_admin}    ${password}
Create Leader Member
    Log    Create Leader member
    Create Member As Admin    ${username_leader}
Logout 3DSpace 1
    Log    Logout from 3DSpace application
    Logout
Create Leader Passport
    Log    Create 3DPassport for Leader
    Create 3DPassport Account    ${dddpassport_link}    ${email_leader}    ${username_leader}    ${firstname_leader}    ${lastname_leader}    ${password}    ${country_leader}
    
Login VariantManagement Leader
    Log    Login to 3DSpace application as Leader
    VariantManagement.Login    ${dddspace_link}    ${username_leader}    ${password}
Create Product Line
    Log    Create a new Product Line
    Go to category    product lines
    Create Product Line    AUTO Robot Product Line

Create Model under Product Line
    Log    Create a new Model
    
Create Model Revision A
    Log    Create new Model Revision A
    
Create Configuration Features
    Log    Create Configuration Features set
    
Create Configuration Rule
    Log    Create Configuration Matrix Rule
    
Create Product Configuration
    Log    Create a new Product Configuration
    
Logout 3DSpace 2
    Log    Logout from 3DSpace application

Login Rich Client
    Log    Login to Rich Client

Create Root Product
    Log    Create Root Product
    
Create 3DParts
    Log    Create 3DParts

Attach Configuration Context to root
    Log    Attach Configuration Context to root
    
Assign Effectivity to part 1
    Log    Assign Effectivity to part 1
    
Assign Effectivity to part 2
    Log    Assign Effectivity to part 1

Save 1
    Log    Save progress
    
Explore Root product
    Log    Explore Root product
    
Create a volatile filter
    Log     Create a volatile filter
    
Close client
    Log    Close client
*** Keyword ***