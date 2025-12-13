# Contributing to AURA L1

Thank you for your interest in contributing to AURA L1! This document provides guidelines for contributing to the project.

## Code of Conduct

- Be respectful and inclusive
- Welcome newcomers
- Focus on constructive feedback
- Prioritize the project's goals

## Getting Started

1. **Fork the repository**
2. **Clone your fork**:
   ```bash
   git clone https://github.com/YOUR_USERNAME/aura.git
   cd aura
   ```
3. **Add upstream remote**:
   ```bash
   git remote add upstream https://github.com/aura-l1/aura.git
   ```

## Development Workflow

### 1. Create a Branch

```bash
git checkout -b feature/your-feature-name
```

Branch naming conventions:
- `feature/` - New features
- `fix/` - Bug fixes
- `docs/` - Documentation updates
- `refactor/` - Code refactoring
- `test/` - Test additions/updates

### 2. Make Changes

- Write clean, documented code
- Follow Rust style guidelines (`cargo fmt`)
- Add tests for new features
- Update documentation

### 3. Test Your Changes

```bash
# Run all tests
cargo test --workspace

# Run specific module tests
cargo test -p aura-runtime

# Check formatting
cargo fmt --check

# Run clippy
cargo clippy --all-targets --all-features
```

### 4. Commit Changes

```bash
git add .
git commit -m "feat: add new feature"
```

Commit message format:
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `test:` - Tests
- `refactor:` - Code refactoring
- `chore:` - Maintenance

### 5. Push and Create PR

```bash
git push origin feature/your-feature-name
```

Then create a Pull Request on GitHub.

## Code Style

### Rust

- Follow [Rust API Guidelines](https://rust-lang.github.io/api-guidelines/)
- Use `cargo fmt` for formatting
- Use `cargo clippy` for linting
- Write documentation comments for public APIs
- Keep functions small and focused

Example:

```rust
/// Calculate the hash of a transaction
///
/// # Arguments
///
/// * `tx` - The transaction to hash
///
/// # Returns
///
/// The 32-byte hash of the transaction
pub fn calculate_hash(tx: &Transaction) -> Hash {
    // Implementation
}
```

### TypeScript

- Use TypeScript strict mode
- Follow [Airbnb Style Guide](https://github.com/airbnb/javascript)
- Use ESLint and Prettier
- Write JSDoc comments

Example:

```typescript
/**
 * Submit a transaction to the blockchain
 * @param tx - Transaction object
 * @returns Transaction hash
 */
async function submitTransaction(tx: Transaction): Promise<string> {
  // Implementation
}
```

## Testing

### Unit Tests

Place unit tests in the same file:

```rust
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_feature() {
        // Test implementation
    }
}
```

### Integration Tests

Place in `tests/` directory:

```rust
// tests/my_integration_test.rs
use aura_runtime::*;

#[test]
fn test_end_to_end() {
    // Test implementation
}
```

## Documentation

- Update `docs/` for major changes
- Add inline code comments for complex logic
- Update README.md if needed
- Add examples for new features

## Pull Request Process

1. **Update documentation**
2. **Add tests**
3. **Ensure all tests pass**
4. **Update CHANGELOG.md**
5. **Request review**
6. **Address feedback**
7. **Squash commits if requested**

## Review Process

- PRs require at least one approval
- All tests must pass
- Code coverage should not decrease
- Documentation must be updated

## Areas for Contribution

### High Priority

- [ ] Full ZK proof integration
- [ ] Avalanche VM implementation
- [ ] Security audit fixes
- [ ] Performance optimizations

### Medium Priority

- [ ] Additional RPC methods
- [ ] CLI improvements
- [ ] Documentation enhancements
- [ ] Test coverage improvements

### Good First Issues

- [ ] Documentation typos
- [ ] Code comments
- [ ] Example applications
- [ ] Test additions

## Questions?

- **Discord**: https://discord.gg/aura-l1
- **GitHub Discussions**: https://github.com/aura-l1/aura/discussions
- **Email**: auralayer1@gmail.com

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
