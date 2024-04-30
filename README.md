********************************************************************************
                                                                                
                                                          :::      ::::::::     
     README.md                                          :+:      :+:    :+:     
                                                      +:+ +:+         +:+       
     By: yoishi <yoishi@student.42tokyo.jp>         +#+  +:+       +#+          
                                                  +#+#+#+#+#+   +#+             
     Created: 2024/04/30 20:43:39 by yoishi            #+#    #+#               
     Updated: 2024/04/30 21:05:27 by yoishi           ###   ########.fr         
                                                                                
********************************************************************************

# Simple tester for ft_printf

A simple tester for **ft_pritnf**.
You can make original test case and check it simply.

## Usage

### First

```bash
cd path/to/your/ft_printf
```

and...

```bash
git clone https://github.com/umaidashi/simple-tester-for-ft_printf.git \
 && cd simple-tester-for-ft_printf && rm -rf .git && make test
```

🚨 If you clone this tester outside of your `ft_printf` project, please change `LIBFTPRINTF_DIR` in the `Makefile`.

### Add your **Original** test case to the `main.c` file

Simply add a test case to your `main.c` file that will run buildin's `printf` function and your `ft_printf` function in a similar case and compare the results and return value.

If the results are different, you can be checked on the command line and in the `diff.txt` file in the root.

> tips: This tester will also help you review efficiently when you are a reviewer.
