/**
 * @name Use of eval()
 * @description Detects use of the `eval()` function, which can lead to arbitrary code execution.
 * @kind problem
 * @problem.severity warning
 * @id js/eval-call
 * @tags security, external/cwe/cwe-95
 */

import javascript

from CallExpr call
where call.getCallee().getName() = "eval"
select call, "Avoid using 'eval()' as it can lead to code injection vulnerabilities."
