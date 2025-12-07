# MyToken (MTK)

A simple ERC-20 compatible token built on the Ethereum blockchain for learning purposes.

---

## Overview
MyToken is an educational ERC-20 token that demonstrates how token balances, transfers, approvals, and allowances work using Solidity and Remix IDE.

---

## Token Details
- **Name:** MyToken  
- **Symbol:** MTK  
- **Decimals:** 18  
- **Total Supply:** 1,000,000 MTK  

---

## Deployment Information (Remix VM)
| Role | Address |
|------|---------|
| **Deployer / Owner** | `0x5B38Da6a701c568545dCfcB03FcB875f56beddC4` |
| **Test Recipient (Account B)** | `0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2` |

---

## Features
- ✔️ ERC-20 standard compliant  
- ✔️ Transfer tokens  
- ✔️ Approve spenders  
- ✔️ transferFrom using allowances  
- ✔️ Emits `Transfer` and `Approval` events  
- ✔️ Transparent balance tracking  

---

## How to Deploy
1. Open **Remix IDE**
2. Create a new file: `MyToken.sol`
3. Paste the smart contract code
4. Go to **Solidity Compiler** → select version **0.8.x**
5. Click **Compile**
6. Go to **Deploy & Run Transactions**
7. Environment: **JavaScript VM**
8. Enter total supply (1,000,000 MTK with 18 decimals):

## How to Use the Contract

### 1. Check Balance
```solidity
balanceOf(address account) → uint256
## 2. Transfer Tokens
Moves tokens from the caller’s wallet to another address.

```solidity
transfer(address recipient, uint256 amount) → bool
```

---

## 3. Approve Spender
Allows another address to spend tokens on behalf of the owner.

```solidity
approve(address spender, uint256 amount) → bool
```

---

## 4. Transfer Tokens Using Allowance
A spender (approved earlier) can transfer tokens from the owner's wallet.

```solidity
transferFrom(address sender, address recipient, uint256 amount) → bool
```

---

## Example Usage in Remix

### ➤ Transfer 1 MTK (with 18 decimals)
```solidity
1000000000000000000
```

### ➤ Approve 1 MTK spending
```solidity
approve(spenderAddress, 1000000000000000000)
```

### ➤ Use transferFrom to move approved tokens
```solidity
transferFrom(ownerAddress, recipientAddress, 1000000000000000000)
```

---

## Events

### Transfer Event
```solidity
event Transfer(address indexed from, address indexed to, uint256 value);
```

### Approval Event
```solidity
event Approval(address indexed owner, address indexed spender, uint256 value);
```
