local workflow = {
  'on': {
    push: {},
  },
  jobs: {
    test: {
      'runs-on': 'ubuntu-latest',
      steps: [
        { run: 'echo Hello World!' }
      ],
    },
  },
};

std.manifestYamlDoc(workflow)
