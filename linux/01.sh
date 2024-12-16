#htop
https://blog.csdn.net/qq_34672033/article/details/89735983
#nohup
nohup sh train_cuda_3.sh > train_cuda_3.out 2>&1 &

#2024.12.16
# git 进度信息被认为是“进度条”：

# git clone 在默认情况下会显示进度条，但它的进度条信息是通过 stderr 打印的，而不仅仅是 stdout。
# 如果没有强制显示进度信息（例如使用 --progress），这些信息可能在重定向时丢失。
# 解决方法：
# 为了解决这个问题，并确保 git clone 显示进度信息，你可以尝试以下解决方案：

# 1. 使用 --progress 选项
# git clone 默认情况下可能不输出进度信息，尤其是当输出被重定向时。你可以使用 --progress 选项强制 git clone 显示进度信息。

# 修改 git.sh 文件中的 git clone 命令，如下所示：

# bash
# 复制代码
git clone --progress https://github.com/yungshenglu/USTC-TFC2016.git
# 该命令强制 git clone 在输出被重定向时也显示进度信息。

# 2. 使用 tee 命令同时输出到文件和终端
# 如果你希望同时在终端和文件中查看进度信息，可以使用 tee 命令将标准输出和标准错误输出重定向到文件，同时将其显示到终端。

# 修改 git.sh 文件中的 git clone 命令，如下所示：

# bash
# 复制代码
git clone https://github.com/yungshenglu/USTC-TFC2016.git | tee -a git.out
# 这里，tee -a git.out 会将输出同时追加到 git.out 文件，并在终端显示。