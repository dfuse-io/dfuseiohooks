<h1 class="contract">event</h1>

## Description

This action is used by dfuse Search indexer system to index the action's content of
the user according to dfuse Search rules and implied restrictions.

This action should be invoked as a context-free action to since it does not alter
any state nor read them. It's used an information "marker" for future processing

This action can be called by any user, requiring no authorization.

The user who calls `event` will pay the CPU and NET bandwidth required
to process the action, which should be minimal.
