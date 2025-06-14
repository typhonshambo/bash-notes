# Bash Scripting Tutorial for Beginners (freeCodeCamp)

A summarized documentation with code examples and notes based on the [freeCodeCamp Bash scripting video tutorial](https://www.youtube.com/watch?v=tK9Oc6AEnR4).

---

## 📁 1. Basic Commands & First Script
```bash
#!/usr/bin/env bash

# Print message
echo "Hello, world!"

# Make it executable
chmod +x script.sh
./script.sh
```

---

## 🧮 2. Variables
```bash
NAME="Alice"
echo "Hello, $NAME"

read -p "Enter your name: " NAME
echo "Hi, $NAME!"

readonly PI=3.14
```

---

## 🧾 3. Positional Parameters
```bash
echo "Script name: $0"
echo "First argument: $1"

# Input validation
if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi
```

---

## 📤 4. Input/Output Redirection
```bash
ls > list.txt       # Overwrites
ls >> list.txt      # Appends
ls notafile 2> error.txt     # stderr
ls * &> combined.txt         # stdout + stderr
```

---

## 📂 5. Conditionals
```bash
if [ "$NAME" = "Alice" ]; then
  echo "Hello, Alice!"
else
  echo "Who are you?"
fi

# File test
if [ -f "$1" ]; then
  echo "File exists"
fi
```

---

## 🧩 6. if‑elif‑else & case
```bash
if [ "$1" = "start" ]; then
  echo "Starting"
elif [ "$1" = "stop" ]; then
  echo "Stopping"
else
  echo "Invalid"
fi

case "$1" in
  start) echo "Start";;
  stop) echo "Stop";;
  *) echo "Unknown command";;
esac
```

---

## 🔁 7. Loops & Arrays
```bash
# For loop
for item in red green blue; do
  echo $item
done

# C-style loop
for (( i=0; i<5; i++ )); do
  echo $i
done

# Arrays
COLORS=(red green blue)
echo "${COLORS[0]}"

for color in "${COLORS[@]}"; do
  echo $color
done
```

---

## 🔧 8. Functions & Exit Status
```bash
greet() {
  echo "Hello, $1"
}

greet Alice

if grep "hello" file.txt; then
  echo "Found"
else
  echo "Not found"
  exit 1
fi
```

---

## 🛠️ 9. Awk & Sed Basics
```bash
# AWK
awk '{print $1}' file.txt

# SED (replace 'foo' with 'bar')
sed 's/foo/bar/g' file.txt
```

---

## 📌 Quick Reference Table
| Feature         | Example                              |
|----------------|---------------------------------------|
| Shebang        | `#!/usr/bin/env bash`                 |
| Variable       | `VAR=value`                           |
| Input          | `read -p "Enter: " VAR`              |
| Conditionals   | `[ -f "$1" ]`, `[ "$a" = "$b" ]`    |
| Case           | `case "$var" in val) ;; esac`        |
| Loop           | `for item in ...; do ...; done`       |
| Function       | `fn() { ... }`                        |
| Awk            | `awk '{print $2}'`                    |
| Sed            | `sed 's/a/b/g'`                        |

---


