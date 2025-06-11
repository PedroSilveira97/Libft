/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ptavares <ptavares@student.42porto.com>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 12:48:26 by ptavares          #+#    #+#             */
/*   Updated: 2025/06/11 16:01:41 by ptavares         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcpy(char *dest, const char *src, size_t l)
{
	size_t	slen;

	slen = 0;
	while (src[slen])
		slen++;
	if (l > 0)
	{
		while (l > 1 && *src)
		{
			*dest = *src;
			dest++;
			src++;
			l--;
		}
		*dest = '\0';
	}
	return (slen);
}
