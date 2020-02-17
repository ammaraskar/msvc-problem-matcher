# msvc-problem-matcher

Github Action to [problem match](https://github.com/actions/toolkit/blob/master/docs/problem-matchers.md)
output from MSVC. This allows warnings and errors from the compiler to be
prominently featured in pull requests like so:

![Matcher in action in pull request](/images/example-pull-request.png?raw=true)

This is a direct port of the `$msCompile` rule from vscode. Typical usage will
be:

```yaml
    - uses: ammaraskar/msvc-problem-matcher@master
    - name: Build Project
      run: msbuild project.sln 
```

**Note that this action does not build your code for you. It only makes the
errors and warnings from your compiler more prominent.**

## Development

Keep this up-to-date with the upstream vscode `msCompile` matcher:
https://github.com/microsoft/vscode/blob/d5386d323342076c82a0e2331df5c603d980f059/src/vs/workbench/contrib/tasks/common/problemMatcher.ts#L1208-L1216
