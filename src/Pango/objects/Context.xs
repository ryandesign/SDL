#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <SDL.h>

#ifdef HAVE_SDL_PANGO
#include <SDL_Pango.h>
#endif

MODULE = SDL::Pango::Context	PACKAGE = SDL::Pango::Context	PREFIX = context_

=for documentation

See L<http://sdlpango.sourceforge.net/>

=cut

#ifdef HAVE_SDL_PANGO

SDLPango_Context *
context_new(CLASS)
	char* CLASS
	CODE:
		RETVAL = SDLPango_CreateContext();
	OUTPUT:
		RETVAL

void
context_DESTROY(self)
	SDLPango_Context *self
	CODE:
		SDLPango_FreeContext(self);

#endif