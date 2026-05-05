#include <swc.h>
#include <wayland-server.h>

static void
new_window(struct swc_window *window);
static void
new_screen(struct swc_screen *screen);

static const struct swc_manager manager = { &new_screen, &new_window, NULL, NULL, NULL };

int
main(void)
{
	struct wl_display *display;
	display = wl_display_create();
	swc_initialize(display, NULL, &manager);
	wl_display_run(display);
	wl_display_destroy(display);
	return 0;
}

static void
new_window(struct swc_window *window)
{
	(void)window;
	/* TODO */
}

static void
new_screen(struct swc_screen *screen)
{
	(void)screen;
	/* TODO */
}
