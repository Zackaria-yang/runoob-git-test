import torch
print(torch.cuda.is_available())
print(torch.__version__)
x1=torch.tensor([[1,2,3],[2,34,2]])
print('ndim:{0},\tsize:{1}'.format(x1.ndim,x1.size()))
