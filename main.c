/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yoishi <yoishi@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 20:43:54 by yoishi            #+#    #+#             */
/*   Updated: 2024/04/30 20:53:04 by yoishi           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <limits.h>
#include <stdio.h>

int	ft_printf(const char *, ...);

#ifdef FT_PRINTF
# define F(...) ft_printf("\n ∟ res %d\n\n", ft_printf(__VA_ARGS__));
#else
# define F(...) printf("\n ∟ res %d\n\n", printf(__VA_ARGS__));
#endif

int	main(void)
{
	// basic tests
	F("[42 Tokyo]");
	F("[%c2 Tokyo]", '4');
	F("[42 %s]", "Tokyo");
	F("[%p Tokyo]", (void *)10);
	F("[%d Tokyo]", 42);
	F("[%i Tokyo]", 42);
	F("[%u Tokyo]", 42);
	F("[%x Tokyo]", 42);
	F("[%X Tokyo]", 42);
	F("[42%% Tokyo]");

	// Add your original tests here

	return (0);
}
