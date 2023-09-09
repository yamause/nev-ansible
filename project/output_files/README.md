# Output files

このディレクトリはAnsibleの実行により、生成されたファイルを格納するためのディレクトリです。
このファイル配下のファイルは原則として `.gitignore` に記述し、リポジトリで管理されないようにします。

```bash
# output_files
project/output_files/*
!project/output_files/README.md
```
# sample

```yaml
- name: Create goss report markdown
  ansible.builtin.template:
    src: goss_report.j2
    dest: "output_files/goss_reports/server_reports_md/{{ ansible_host }}.md"
    mode: "0644"
  delegate_to: localhost
  vars:
    data: "{{ goss_result.stdout | from_json }}"
```