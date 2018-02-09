- `read_mem.sh`读取可用内存信息

  >  涉及`while` `for` `awk` `date` `usleep` 相关

  `while`进行无限循环，`for`进行300次循环，其中每100ms执行一次命令，其中`awk '{pirnt $2}'`表示输出`MEMAvailable`行中第2列中内容追加到1.txt中。


- scale.sh 根据内存变化扩展

  > 涉及`test文件处理` `awk数字输出格式` `awk数字大小比较` `if` `ssh后执行命令`相关

  判断大小通过 `awk '$1 < 11600000 {print "ok"}'> scale.txt`输出`scale.txt`不为空文件来实现,

  - `while`循环中判断文件是否存在，文件不存在则开始循环
  - awk对生成结果第一列数字每一行进行比对，小于则`print ok`到`scale.txt`中
  - `if`判断`scale.txt`不空则`ssh`到`已免密钥`的其他主机进行指令输出，`elae`继续`while`循环

  `test选项`：-s<文件>，如果文件长度为0，则为真 。

