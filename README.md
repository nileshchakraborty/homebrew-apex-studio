# homebrew-apex-studio

Official Homebrew tap for [Apex Studio](https://github.com/nileshchakraborty/apex-studio) — Cognitive Invariant AI IDE & Engine powered by ApexPhi, ApexMistral, and ApexQwen.

---

## 🚀 Installation

### Option 1: Standalone Desktop App (Recommended)
To install the standalone native macOS desktop application (`Apex Studio.app`):

```bash
brew install --cask nileshchakraborty/apex-studio/apex-studio
```
Or tap first:
```bash
brew tap nileshchakraborty/apex-studio
brew trust nileshchakraborty/apex-studio  # Homebrew 7.0+
brew install --cask apex-studio
```

### Option 2: CLI & Backend Engine Daemon
To install the command-line interface and background service:

```bash
brew install nileshchakraborty/apex-studio/apex-studio
```

### In a Brewfile
```ruby
tap "nileshchakraborty/apex-studio"
cask "apex-studio" # For standalone Desktop App
brew "apex-studio" # For CLI & Engine Daemon
```

---

## 🛠️ Getting Started

### 1. Install the VS Code / Cursor Extension
Once installed via Homebrew, install the packaged extension bundle into your editor:

```bash
# For VS Code:
code --install-extension $(brew --prefix apex-studio)/share/apex-studio/apex-studio.vsix

# For Cursor:
cursor --install-extension $(brew --prefix apex-studio)/share/apex-studio/apex-studio.vsix
```

### 2. Start the Engine Daemon
Run the background daemon via Homebrew Services:
```bash
brew services start apex-studio
```
Or run directly in the foreground:
```bash
apex-engine
```

### 3. Use the CLI
```bash
# View available models in Ollama and active selections
apex-studio models

# Switch model suites (Phi-14B, Mistral-22B, Qwen-14B)
apex-studio set-model --suite mistral

# Plan a feature using autonomous web search
apex-studio plan "Implement JWT authentication middleware"

# Actuate planned steps with AST validation and verification
apex-studio act --all
```

---

## 🛡️ macOS Gatekeeper & Out-of-the-Box Execution

> [!NOTE]
> Apex Studio is open-source software built transparently on GitHub. Because it is distributed directly from open-source releases without a paid Apple Developer subscription notarization ticket, macOS Sequoia, Sonoma, and earlier versions would normally trigger Gatekeeper quarantine dialogs (*"Apple cannot check Apex Studio for malicious software"*).
>
> The Homebrew Formula includes automated `post_install` quarantine removal (`xattr -d com.apple.quarantine`) on all installed wrapper scripts and extension bundles so Apex Studio launches out-of-the-box seamlessly without requiring manual quarantine bypass or security prompts!

---

## 🔄 Upgrading

To upgrade Apex Studio to the latest release:

```bash
brew update
brew upgrade apex-studio
```

---

## 📚 Documentation & Upstream Project

- **Apex Studio Repository**: [https://github.com/nileshchakraborty/apex-studio](https://github.com/nileshchakraborty/apex-studio)
- **Homebrew Documentation**: [https://docs.brew.sh](https://docs.brew.sh)
