const rust = import('./pkg/helloworld');

rust
  .then(m => m.helloworld('World!'))
  .catch(console.error);
            