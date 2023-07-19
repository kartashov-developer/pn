JavaScript .
Modern JavaScript Tutorial & Just JavaScript are great intros.

Metaphysics and JavaScript is a nice talk.

Notes
You can define and run the function straight away by enclosing it in parenthesis and adding empty () after
In JavaScript, a type is a runtime tag describing the actual kind of data you have at runtime.
A property is any value attached to an object. A method is a property that is a function.
this, always references the owner of the function it is in, for this case — since it is now out of scope — the window/global object.
Can type debugger in JS/TS to activate debugger at that point.
Can console.log({ myConst }) to log the variable with the value as an object so you see the variable name & the value. As opposed to doing console.log(myConst, 'myConst').
Periodic reminder that await import('//dev.jspm.io/[pkg]') allows you to import anything from npm in the browser instantly. I often use this in the console to test things out.
Between typescript and prettier, there is very little justification for eslint.
JS proxy can observe a nested object for changes made to it. That means there's none of the traditional selecting or diffing.
One optimization that turned out well: storing JavaScript strings as either UTF-16 or UTF-8, depending on whats inside. It turns out this is also what JavaScript engines do, so it makes converting from a string in a JavaScript VM to a string in Bun's AST fast.
Stop using strings concatenation to create and edit URLs in JS. All major browsers have great built-in functionality for URL parsing & manipulation.
Use arrow functions for 1-line functions only, otherwise named functions are always the best choice: better stack trace, better tracing and more readable.
Code
js
// Click on buttons in a page
// https://twitter.com/brian_lovin/status/1240662440666222597

let buttons = document.getElementsByClassName("unfollow")

for (let [i, v] of [...buttons].entries()) {
  setTimeout(() => {
    buttons[i].click()
  }, i * 500)
}
js
// Go to specific URL
window.location.href = "https://www.google.com"
js
// Speed up video playback. Put in console of open page.
$("video").playbackRate = 2
js
// click on all the expand buttons on https://github.com/
var inputs = document.querySelectorAll("svg[aria-label=Expand]")
var buttons = Array.from(inputs).map((e) => e.parentElement.parentElement)
buttons.forEach((b) => b.click())
js
// start/close PiP video from currently open tab
var video = document.querySelectorAll("video")[0]
if (
  video !== undefined &&
  video.webkitSupportsPresentationMode &&
  typeof video.webkitSetPresentationMode === "function"
) {
  video.webkitSetPresentationMode(
    video.webkitPresentationMode === "picture-in-picture"
      ? "inline"
      : "picture-in-picture"
  )
}
Links
JavaScript. The Core
Modern JavaScript Tutorial (HN) (HN)
You don't know JS books
JS in 14 minutes
2017 JavaScript Rising Stars
ES6 features
The Definitive Guide to Object-Oriented JavaScript - Amazing video to understand JS inheritance & objects.
JavaScript: The Core
JavaScript is Good, Actually (HN)
JavaScript Algorithms - Algorithms and data structures implemented in JavaScript with explanations and links to further readings. (HN)
EC6 Features
Clean Code concepts adapted for JavaScript
Ask HN: “Expert Level” JavaScript questions?
Benefits of prototypal inheritance over classical?
Pax - Fastest JavaScript bundler in the galaxy.
Philip Roberts: What the heck is the event loop anyway? (2014)
Jake Archibald: In The Loop (2018)
Yonatan Kra - The Event Loop and your code (2020)
BundlePhobia - Find the cost of adding a npm package to your bundle. (Code) (Tweet)
An Overview of JavaScript Testing in 2018
Introduction to ES6 Promises – The Four Functions You Need To Avoid Callback Hell
Nice ES6/Promises/React cheat sheets
JavaScript Visualizer - Tool for visualizing Execution Context, Hoisting, Closures, and Scopes in JavaScript.
WallabyJS - Integrated continuous testing tool for JavaScript.
ES6 features
The State of JavaScript - The State of the Web (2018)
A Quick Tour Of ES6 (Or, The Bits You’ll Actually Use)
JavaScript on the Desktop, Fast and Slow (2018)
ES6 for humans
33 concepts every JavaScript developer should know
Design Patterns JS - All the 23 (GoF) design patterns implemented in JavaScript.
Standard Library Proposal
30 seconds of code - Curated collection of useful JavaScript snippets that you can understand in 30 seconds or less.
puppet-run - Run anything JavaScript in a headless Chrome from your command line.
Yalc - Better workflow than npm | yarn link for package authors.
ECMAScript proposals
FromJS - See where each character on the screen came from in code.
RunJS - Scratchpad for your thoughts, a playground for your creativity.
Pragmatic, balanced FP in JavaScript book
Pack - Helps you build amazing packages without the hassle.
Learning JavaScript (2016)
@pika/web - Install npm dependencies that run directly in the browser. No Browserify, Webpack or import maps required.
Sucrase - Super-fast alternative to Babel for when you can target modern JS runtimes. (Web)
Airbnb JavaScript Style Guide
JavaScript Developer's Reading List - List of hand-picked books and articles for JavaScript developers.
Promisees - Promise visualization playground for the adventurous.
promise-fun - Promise packages, patterns, chat, and tutorials.
Perflink - JavaScript performance benchmarks that you can share via URL.
Mostly adequate guide to FP (in JavaScript) (Code) (HN)
Volta - JavaScript Launcher. (Web) (HN)
Modern JS Cheat Sheet
Fastpack - Pack JavaScript fast & easy.
Reference implementation for the JavaScript Binary AST format
Babel Handbook
List of (Advanced) JavaScript Questions
Faster script loading with BinaryAST? (2019)
recast - JavaScript syntax tree transformer, nondestructive pretty-printer, and automatic source map generator.
Madge - Create graphs from your CommonJS, AMD or ES6 module dependencies.
npmfs - JavaScript Package Inspector.
Fantasy Land Specification - Specification for interoperability of common algebraic structures in JavaScript.
Meriyah - 100% compliant, self-hosted javascript parser with high focus on both performance and stability.
The cost of JavaScript in 2019 (HN)
Poi - Zero-config bundler for JavaScript applications.
Advanced JavaScript Course
Jay - Supercharged JavaScript REPL.
Data Structures and Algorithms in JavaScript
JavaScript & Node.js Testing Best Practices
Just - Library that organizes build tasks for your JS projects.
ECMAScript (JS) specification (Code) (Web version 2)
André Staltz: Two Fundamental Abstractions - Uphill Conf 2018
JSMonday - Weekly JS inspiration.
Chevrotain - Parser Building Toolkit for JavaScript.
Comprehensive list of new ES features
Exploring JS: JavaScript books for programmers
JavaScript for Impatient Programmers book (HN) (HN)
Exploring ES2018 and ES2019
Ecma TC39 GitHub
TC39 Meeting Notes
Mesh Spreadsheet - Visualise data and edit JavaScript code using a spreadsheet interface. (Web)
Immutable JavaScript Data Structures with Immer (2019)
Immutability is Changing - From Immutable.js to Immer (2019)
Tenko - 100% spec compliant ES2020 JavaScript parser written in JS.
code-red - Experimental toolkit for writing x-to-JavaScript compilers.
Reduce in JavaScript (2019)
Pika - New kind of package registry for the modern web.
Brian Holt: Futurist Code Bases: Integrating JS of the Future Today (2019)
JS TLDR - Zen mode web-documentation. (Code) (Article)
Currying Functions in ES6 (2016)
Manipulating AST with JavaScript (2019)
Is JavaScript Statically or Dynamically Scoped? (2018)
Fixed-point combinators in JavaScript: Memoizing recursive functions
runpkg - Lets you navigate any JavaScript package on npm thanks to unpkg.com.
What is this in JavaScript?
Beginner JavaScript course
ES6 Cheat Sheet
JavaScript Visualized: Event Loop (2019)
JavaScript Visualized: Scope (Chain) (2019)
JavaScript Visualized: Hoisting (2019)
Fuzzilli - JavaScript Engine Fuzzer.
Deep JavaScript: Theory and techniques (2019) (HN)
JavaScript Adaption of Structure and Interpretation of Computer Programs (HN) (Code)
State of JS 2019 (HN)
Cancelation without Breaking a Promise (2016) - Reflecting on what was so tricky about cancelable Promises, embracing functional purity as a solution.
ECMAScript Discussion Archives (Code)
What Is JavaScript Made Of? (2019)
JavaScript Visualized: Prototypal Inheritance (2020)
Y: The Most Beautiful Idea in Computer Science explained in JavaScript (2018)
2019 JavaScript Rising Stars (Code)
Best of JS - Best of JavaScript, HTML and CSS. (Code) (Web Timeline) (HN)
omggif - JavaScript implementation of a GIF 89a encoder and decoder.
Sampling bias, FDR, and The State of JS (2020)
JavaScript Visualized: Generators and Iterators (2020)
jsep - JavaScript Expression Parser.
JS Tips & Tidbits
I have been underestimating JS (2020) - Understanding V8 and NodeJS Steams.
Микроптимизации производительности и JavaScript (2020)
Taming the asynchronous beast with CSP channels in JavaScript (2014)
Debounce vs Throttle: Definitive Visual Guide (2019)
GistLink - Code apps or components. See them render as you type. Share your creations via URL.
source-map-explorer - Analyze and debug space usage through source maps.
Diglett - Keep your JS project lean by detecting duplicate dependencies.
Learn Vanilla JS Roadmap
Learn JavaScript - Easiest way to learn & practice modern JavaScript step by step.
Mini projects built with HTML5, CSS & JavaScript. No frameworks or libraries (HN)
IxJS - Interactive Extensions for JavaScript.
Renovate - Universal dependency update tool that fits into your workflows.
The ECMAScript Ecosystem (2020)
ESbuild - Extremely fast JavaScript bundler and minifier written in Go. (HN) (Architecture) (serverless-esbuild) (Awesome) (Web) (Esbuild plugins) (Tweet) (HN) (Online Playground)
Community plugins for esbuild
Why Is Esbuild Fast? (HN)
bundless - Dev server and bundler for esbuild. (Web)
esbuild-register - Transpile JSX, TypeScript and esnext features on the fly with esbuild.
JavaScript: Understanding the Weird Parts course (2015)
Fastpack - Pack JS code into a single bundle fast & easy.
guijs - App that helps you manage JS projects with a Graphical User Interface.
Rome Toolchain - Linter, compiler, bundler, and more for JavaScript, TypeScript, HTML, Markdown, and CSS. (Web) (HN) (HN 2) (HN 3) (Discord)
Bolt - Super-powered JavaScript project management.
tiny-js - Aims to be an extremely simple (~2000 line) JavaScript interpreter.
JavaScript and TypeScript tooling overview
Seafox - Blazing fast 100% spec compliant, self-hosted javascript parser written in Typescript.
Awesome JavaScript Learning
Awesome Promises
jscodeshift - Toolkit for running codemods over multiple JavaScript or TypeScript files.
React Workout: Reducers with Cassidy Williams (2020)
JavaScript: The First 20 Years (2020)
Awesome Storybook
QuickJS - Small and embeddable JavaScript engine. (Web) (HN) (HN)
Test262: Official ECMAScript Conformance Test Suite
Hegel - Advanced static type checker. (Web) (Intro to Hegel) (HN)
NectarJS - JS God mode. No VM. No Bytecode. No Garbage Collector. Full Compiled and Native binaries.
Eloquent JavaScript book (2018) (HN)
JS.coach - Manually curated list of packages related to React, Vue, Webpack, Babel and PostCSS. (Code)
How to create a reactive state-based UI component with vanilla JS Proxies (2020)
Kite Autocomplete for JavaScript (Article)
Excalidraw: Cool JS Tricks Behind the Scenes - Christopher Chedeau (2020)
Cleaner async JavaScript code without the try/catch mess (2020)
Shifty - Tweening engine for JavaScript. It is a lightweight library meant to be encapsulated by higher level tools.
JS Bits - JavaScript concepts explained with code.
Binary-parser - Parser builder for JavaScript that enables you to write efficient binary parsers in a simple and declarative manner.
estrella - Light-weight runner for the esbuild compiler.
jsparagus - JavaScript parser written in Rust.
Callbag - Standard for JS callbacks that enables lightweight observables and iterables. (Wiki)
JavaScript Standard Style - JavaScript style guide, linter, and formatter. (Code)
Boa - Experimental JavaScript lexer, parser and compiler written in Rust. (Blog) (Reddit)
Understanding JavaScript Execution Context like never before (2020)
Causes of Memory Leaks in JavaScript and How to Avoid Them (2020) (Lobsters)
UI.dev - Master the JavaScript Ecosystem.
Do Not Follow JavaScript Trends (2020) (Lobsters) (HN)
Some things that can be avoided in JS for clearer code (2020)
JS fundamentals and resources to learn them (2020)
A little bit of plain JavaScript can do a lot (2020) (Lobsters) (HN)
Memoization: What, Why, and How (2020)
An Open Source Maintainer's Guide to Publishing npm Packages (2020)
Robust Client-Side JavaScript (2020) (HN)
Visualization of npm dependencies (Code)
How to Learn JavaScript (HN)
Google Closure Compiler - Tool for making JavaScript download and run faster.
JSConf - Conferences for the JavaScript Community.
The history of Promises
Skypack - New kind of JavaScript delivery network. (HN) (Introducing Skypack Discover) (Docs) (skypin)
Openbase - Help developers choose the right JS package for any task - through user reviews and insights about packages' popularity, reliability, activity and more. (HN)
Basho - Shell Automation with Plain JavaScript. (Docs)
What is the JS Event Loop and Call Stack?
Starving the Event Loop with microtasks
GPU.js - GPU accelerated JavaScript. (HN) (HN) (Code)
The JavaScript Promise Tutorial (2020)
Underrated JS array methods (2020)
Javascript Generators, Meet XPath (2020) (Lobsters)
goja - ECMAScript 5.1(+) implementation in Go.
Guide to unit testing in JavaScript
How I wrote the fastest JavaScript memoization library (2017)
JavaScript Playgrounds - Interactive JavaScript sandbox. (Code)
Speakeasy JS - Weekly JavaScript meetup.
Elsa - Minimal, fast and secure QuickJS wrapper written in Go. (HN)
quickjs-rs - Rust wrapper for QuickJS.
RSLint - Extremely fast JavaScript and TypeScript linter and Rust crate. (Web)
Beginner's Series to: JavaScript by Microsoft (Code)
Please stop using CDNs for external Javascript libraries (2020) (Lobsters) (HN)
ESM Hot Module Replacement (ESM-HMR) Spec
esbuild-js - es-build implemented in JS.
Visual Guide to References in JavaScript (2020)
Modern JavaScript features you may have missed (2019)
RegPack - Self-contained packer for size-constrained JS code.
SciterJS - Embeddable HTML/CSS/JavaScript engine. Electron alternative. (HN) (SDK) (JS SDK) (HN)
ESTree Spec - Manipulate JavaScript source code.
Pattern Matching in JavaScript (2020)
How to chain methods in JS in order to write concise and readable code (2020)
npmview - Web application to view npm package files. (Code)
Metadata Reflection API for JS
SurviveJS - Learn JavaScript. From apprentice to master.
Composing Closures and Callbacks in JavaScript (2020)
CJS Module Lexer - Fast lexer to extract named exports via analysis from CommonJS modules.
JavaScript minification (2019)
export-size - Analysis bundle cost for each export of an ESM package.
ESM - Fast, global content delivery network ES Modules.
Benny - Dead simple benchmarking framework for JS/TS libs.
Functional Programming in JS - Composition (Currying, Lodash and Ramda) (2020)
Understanding Modules, Import and Export in JavaScript (2020)
Intent to stop using 'null' in my JS code (HN)
What Makes JavaScript JavaScript? Prototypal Inheritance (2020)
ni - Use the right package manager. Detect whether to use npm/yarn/pnpm.
Making a modern JS library in 2020
JavaScript Interview Questions & Answers
JS Operator Lookup - Search JavaScript Operators.
The state of JavaScript at the end of 2020 (HN)
What the fuck JavaScript - List of funny and tricky JavaScript examples.
1loc - JavaScript Utilities in 1 LOC. (Code)
Component Driven User Interfaces - Open standard for UI component examples based on JavaScript ES6 modules. (Code) (Website Code)
JavaScript Modern Interview Code Challenges
Building a Promise from Scratch (2020)
Tips and tricks for working with types in JavaScript
Astring - Tiny and fast JavaScript code generator from an ESTree-compliant AST.
EStimator.dev - Calculate the size and performance impact of switching to modern JavaScript syntax. (Code)
Publish, ship, and install modern JavaScript for faster applications (2020)
Universal JavaScript Build and Packaging
Maybe you don't need Rust and WASM to speed up your JS (2018)
lage - Task runner in JS monorepos. (Web)
Module Server - System for efficient serving of CommonJS modules to web browsers.
How JavaScript works: exceptions + best practices for synchronous and asynchronous code (2021)
How JavaScript works: an overview of the engine, the runtime, and the call stack (2017) (HN)
Source Map Visualization - Visualization of JavaScript source map data, which is useful for debugging problems with generated source maps. (Code)
Manypkg - Linter for package.json files in Yarn, Bolt or pnpm monorepos.
Putout - Pluggable and configurable code transformer with built-in eslint, babel plugins and jscodeshift codemods support. (Editor)
Prettier Plugin: Organize Imports
A mostly complete guide to error handling in JavaScript (2020)
Awesome FP JS
Perflink - JS Benchmarks.
JavaScript benchmark playground
Element Worklet (2021)
MDN JS Code Examples
Understanding Hoisting in JavaScript (2021)
JavaScript: The Good Parts Book (2008) (Notes) (Notes)
A Model for Reasoning About JavaScript Promises (2017)
JavaScript Minification Benchmarks (HN)
Faster JavaScript Calls (2021) (HN)
Streams — The definitive guide (2021)
Starlight - JS engine in Rust.
Awesome JavaScript
JavaScript and the next decade of data programming (2021) (Tweet)
Glide - Interpreted JavaScript VM written entirely in safe rust.
stricter - Project-wide js-linting tool.
JavaScript Pass By Value Function Parameters
Use console.log() like a pro (2020) (HN)
The complete guide to working with strings in modern JavaScript
Natto.dev - Canvas for JavaScript. (HN)
Kataw - Insane fast JavaScript toolchain.
JS Tooling not in JS - Curated list of JavaScript tooling not written in JavaScript. (HN)
How Slow is JavaScript Really? JavaScript vs C++ (Data Structures & Optimization) (2021)
Duktape - Embeddable Javascript engine with a focus on portability and compact footprint. (Web)
JavaScript for Data Science (Code) (HN)
FIBJS - JavaScript runtime built on Chrome's V8 JavaScript engine.
A JavaScript optimizing compiler (2021)
In-depth exploration of JavaScript iteration protocols (2021)
Elk - Tiny JS engine for embedded systems. (HN)
Endo - Distributed secure JavaScript sandbox, based on SES.
How JavaScript works: 3 types of polymorphism (2021) (HN)
Modern JavaScript: Everything you missed over the last 10 years (2020) (HN)
Rethinking JavaScript Infrastructure (2021)
2D Optics Demos in JavaScript (2021)
Beginner Web Dev - Getting Started with JavaScript Course.
V8 Sparkplug – A non-optimizing JavaScript compiler (2021) (HN)
JavaScript Notes and Reference
JavaScript Bytecode VM - YouTube
Advanced console.log Tips and Tricks (2020) (HN)
Testing JavaScript Applications Book (2021) (Code)
JavaScript Is Weird (HN)
Temporal: Getting started with JavaScript's new date time API (2021) (HN)
Dwitter - Platform to write visual art in JavaScript limited to 140 characters. (Code)
Optimizr - Aggressive compile-time optimizations for modern JavaScript.
Tiny Treeshaker - JavaScript tree shaking in 200 lines of code. (HN)
Tips For Using Async/Await in JavaScript (2021)
export default thing is different to export { thing as default } (2021) (Tweet)
Just JavaScript - Discover and rebuild your JavaScript mental models.
Iterator Helpers - Methods for working with iterators in ECMAScript. (Web)
Loupe - Visualization to help you understand how JavaScript's call stack/event loop/callback queue interact with each other. (Code)
JavaScript on Compute@Edge - Compile JavaScript to WebAssembly and run it on Fastly.
Txiki.js - Tiny JavaScript runtime built with QuickJS and libuv. (HN)
JavaScript error logging - Collection of JavaScript error logging services, and comparisons among them.
Regenerated.Dev - Rethinking JavaScript with Generator Functions.
JavaScript Array Explorer - Find the array method you need without digging through the docs. (Code)
Currying in JavaScript (HN)
Multithreaded JavaScript Book (2021) - Explores the various features that JavaScript runtimes have at their disposal for implementing multithreaded programming.
JS-Interpreter - Sandboxed JavaScript interpreter in JavaScript. Execute arbitrary JavaScript code line by line in isolation and safety.
EStruct - Traverses JavaScript projects and maps all the dependencies and relationships to a JSON.
unbuild - Unified JavaScript build system.
The Shocking Immaturity of JavaScript (2021) (HN)
Nope - Small, simple and fast JS validator.
jstime - Another JavaScript Runtime.
JavaScript Concrete Syntax Tree
Fastly Compute@Edge JS Runtime
Responsible JavaScript Book (Twitter)
Creating Callable Objects in JavaScript (2019)
Reflection at Reflect: The Reflect and Proxy APIs (2021)
Deep-copying in JavaScript (2018) (Tweet)
Reduce minified code size by property mangling
ECMAScript Pattern Matching
JSConf (Twitter)
JS Sockets API Proposal (Tweet)
JS Enum Proposal (Tweet)
JS Records & Tuples Proposal
ECMAScript Proposals (Code)
dum - npm scripts runner written in Rust. (HN)
Esprima-python - ECMAScript parsing infrastructure for multipurpose analysis.
Software Tools in JavaScript by Greg Wilson Book (2021)
ReevaJS - JavaScript engine written from scratch using Kotlin.
Web Developer Tools secrets that shouldn’t be secrets (2021) (Reddit)
The async/await post we promised (2021)
JavaScript Cross-Site Scripting: How it Happens and Mitigation Steps (2021)
JavaScript Self-Profiling API Proposal - Proposal for a programmable JS profiling API for collecting JS profiles from real end-user environments.
Caterwaul - JavaScript-to-JavaScript Compiler. (Web) (HN)
MuJS - Embeddable JavaScript interpreter in C. (Web)
JavaScript Structs: Fixed Layout Objects
HEY is running its JavaScript off import maps (2022)
A pipe operator for JavaScript: introduction and use cases (2022) (HN)
Tera - Lean Secure Runtime for JavaScript.
Ratel - High performance JavaScript to JavaScript compiler with a Rust core.
TC39 – Specifying JavaScript (Web Code)
sane-fmt - Opinionated code formatter for TypeScript and JavaScript.
Run JavaScript in WebAssembly - High-performance, secure, extensible, and OCI-complaint JavaScript runtime for WasmEdge.
Insightful JavaScript Q&A Twitter Thread from Dan Abramov (2022)
The State of JS 2021 (HN)
The Story of Asynchronous JavaScript (2022)
JavaScript on Exercism (Code)
Source Map-Aware Code Generation (2022)
Things you don't need JavaScript for (2022) (HN)
Proposal for Type Syntax in JavaScript (Code) (Reddit) (Tweet) (Reddit) (Tweet) (HN)
First look: adding type annotations to JavaScript (2022) (HN)
Escargot - Memory optimized JavaScript engine for mid-range devices such as mobile phone, tablet and TV.
Pipe Operator (|>) for JavaScript (Tweet) (HN)
Partial Application Syntax for ECMAScript
The Elephant in The Event Loop (2022)
Moon - Rust program for managing JavaScript based monorepo's.
Temporal API - Standard objects and functions for working with dates and times.
How to Read the ECMAScript Specification (Code)
Broken Promises - James Snell, NearForm (2019) (Tweet)
JS Event Loop Visualizer (Tweet)
Google Closure Compiler NPM - Check, compile, optimize and compress JavaScript with Closure-Compiler.
unminify - Unminifies JS stacktrace errors.
JavaScript on GraalVM - High performance implementation of the JavaScript programming language. Built on the GraalVM by Oracle Labs.
I Avoid Async/Await (2022) (HN)
Shift AST - ECMAScript parser that produces a Shift format AST. (Code) (Bending JavaScript with shift-ast)
JavaScript function composition: What’s the big deal? (2022)
How not to write property tests in JavaScript (2021)
Find what JavaScript variables are leaking into the global scope (2022)
Building a JavaScript Bundler (2022) (HN)
ECMAScript proposal: do expressions
Meticulous - Catch JavaScript errors before they hit prod. (HN)
I fell in love with low-JS (2022) (HN) (Lobsters)
TodoMVC App Written in Vanilla JS in 2022
Modern JavaScript environments (2022)
Advanced JavaScript Objects - E-book entirely about JavaScript objects.
JavaScript Module Fragments Proposal - Named, inline JS modules, which can be used for bundling multiple modules into a single JavaScript file.
Design Patters in JS for Humans
devjar - Bundless runtime for your ESM JavaScript project in browser. (Code)
Fast way to do a JS socket API
Processing Arrays non-destructively: for-of vs. .reduce() vs. .flatMap() (2022)
Now and .then: Debugging Async JavaScript - Jenn Creighton (2022)
JavaScript tree-sitter - JavaScript and JSX grammar for tree-sitter.
Awesome JavaScript Interviews - Popular JavaScript / React / Node / Mongo stack Interview questions and their answers.
Monorepos in JavaScript and TypeScript (2022) (HN)
Compiling a Subset of JavaScript to ARM Assembly in Haskell (2022)
ECMAScript Explicit Resource Management
JavaScript: The New Toys Book
Server Rendering in JavaScript Series
Ecma International approves ECMAScript 2022: What’s new?
JS Functions - The Ultimate Guide
JS Module Blocks (Web)
Ask HN: Why is everything in JavaScript changing so fast? (2022)
Stop Using JavaScript Objects (2022)
Mastering Async/Await Book
Roll your own JavaScript runtime (2022) (Code)
Checking if a JavaScript native function is monkey patched (2022)
Optimizing for JavaScript is hard (2022) (Lobsters)
International JavaScript Conference (Twitter)
Dune - Hobby runtime for JavaScript and TypeScript.
Proposal for resizable array buffers
YouTube-dl has a JavaScript interpreter written in 870 lines of Python (HN)
memlab - Testing framework for finding JavaScript memory leaks and analyzing heap snapshots. (Article)
Sandworm - Easy sandboxing for your JavaScript dependencies. (Docs)
Extractors for ECMAScript
Weak JS map (Tweet)
Writing composable SQL using JavaScript by Gajus Kuizinas (2022)
Control the behavior of JavaScript imports with Import Maps (2021) (Tweet)
The power of JS generators
Understanding Generators in ES6 JavaScript with Examples
JavaScript's promised convenience (2022)
ShadowRealms – an ECMAScript proposal for a better eval() (2022)
Why would anyone need JavaScript generator functions? (2022) (HN)
Number.range & BigInt.range JS Proposal
QuickJS Running in WebAssembly (HN)
Jitar - Full-stack JavaScript runtime for small to large web applications.
This Month in JavaScript (2022)
Introduce await.all / await.race / await.allSettled / await.any to simplify the usage of Promises
Proposal for new Set methods in JS
A Simple Explanation of JavaScript Closures (2022)
Lesser-known JavaScript APIs (2022) (HN)
Best JavaScript nano benchmarking tool
Big Benchmark of JS State Managers
Reactive Computed Bench - Benchmark measured computation of complex computed reactive unit when it deep children change.
grasp - JavaScript structural search, replace, and refactor.
JavaScript Rising Stars - Overview of the JavaScript landscape. (Code)
State of JavaScript 2022 (HN)
Speeding up the JavaScript ecosystem - module resolution (2023) (HN)
Async Context for JavaScript - Ergonomically track async contexts in JavaScript.
Go-like channels in 10 lines of JavaScript (2023) (HN)
oxc - JavaScript Oxidation Compiler.
Writing JavaScript without a build system (2023) (HN)
Buildless JavaScript (2023)
Error.assert() proposal for ECMAScript
1000x FASTER JavaScript? (2023)
Making JavaScript Ecosystem FAST | Prime Reacts
Sandboxing JavaScript Code (2023) (HN)
JavaScript import maps are now supported cross-browser (2023) (HN)
Roll your own JavaScript runtime, pt. 3 (2023) (HN)
stacktracify - CLI to make unreadable production stack traces readable using source maps.
engine262 - Implementation of ECMA-262 in JavaScript.
unenv - Convert javaScript code to be runtime agnostic.
Trace-based Just-in-Time Type Specialization for Dynamic Languages
