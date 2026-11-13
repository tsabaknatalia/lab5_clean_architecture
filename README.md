# Social Network - Clean Architecture

Консольний застосунок соціальної мережі, побудований за принципами Clean Architecture.

## Схема архітектури та залежностей

```mermaid
graph TD
    Presentation[Presentation Layer / CLI] --> Application[Application Layer / Use Cases]
    Presentation --> Infrastructure[Infrastructure Layer / Repositories]
    Application --> Domain[Domain Layer / Entities & Interfaces]
    Infrastructure --> Domain