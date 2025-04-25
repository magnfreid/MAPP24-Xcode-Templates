# 📦 MAPP24 Xcode Templates

A collection of custom Xcode file templates. Use them to speed up your SwiftUI development with pre-built views, view models, and utilities.

---

## 🔧 Installation

### 💡 Option 1: Manual

1. **Download or clone** this repository to your computer.
2. Move the `MAPP24-Xcode-Templates` folder into Xcode’s templates directory:  
/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates

✅ Tip: In Finder, press **Cmd + Shift + G** and paste in the path above to jump there.
‼️ If Xcode is installed in a custom location, adjust the path accordingly.
---

### 💻 Option 2: Using Terminal (Works Even if Xcode Isn't in /Applications)

```bash
# Clone the repo
git clone https://github.com/magnfreid/MAPP24-Xcode-Templates.git

# Move into the project folder
cd MAPP24-Xcode-Templates

# Copy the templates to your Xcode's template directory
cp -R MAPP24-Xcode-Templates "$(xcode-select -p)/../Library/Developer/Xcode/Templates"
```

✅ Works even if Xcode is installed in a custom location.
♻️ Restart Xcode if it was already open.

How to use: 

- Open Xcode and press Cmd+N to add a new File.
- Scroll down to the MAPP24-Xcode-Templates and pick a template. 

![Skärmavbild 2025-04-25 kl  23 45 11](https://github.com/user-attachments/assets/578b24a2-1cc4-4ee8-a26a-0008d60a21cd)


### 📄 Available Templates

**View + ViewModel (Extension in Same File)**  
Creates an empty SwiftUI view with a `ViewModel` class defined as an extension within the same file.

**View + ViewModel (Separate File)**  
Creates an empty SwiftUI view and a `ViewModel` class in its own separate file.

**Credentials Form**  
Creates a simple login form with fields for email and password. Includes basic error message handling.

**SecretsHandler**  
Generates a utility for securely accessing API keys from a `Secrets.plist` file, which is included in the template.  
Add your API keys to the `Secrets.plist` file manually after creation.

**Important:** Don't forget to add `Secrets.plist` to your `.gitignore` to avoid accidentally committing sensitive information.



  






