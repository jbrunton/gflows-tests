local steps = import 'workflows/steps.libsonnet';
local workflow = {
  'on': {
    push: {},
  },
  jobs: {
    test: {
      'runs-on': 'ubuntu-latest',
      steps: [
        steps.run('echo Hello World!')
      ],
    },
  },
};

std.manifestYamlDoc(workflow)
