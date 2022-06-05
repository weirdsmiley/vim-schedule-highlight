# vim-schedule-highlight

This plugin highlights the line based on the current time.

I use this in the following manner:

I create a schedule for the day with first column as the time interval(in 24 hrs
format, e.g. "1200:1300") followed by the task.

It then reads the window and matches current system time with the appropriate
interval and highlights that particular task.

It helps me to easily follow what should I be doing at that moment. I never
guarantee I **will** do that task.

## Usage

```vimscript
Plug 'weirdsmiley/vim-schedule-highlight'
```

Then, in the schedule window execute `:SchedHi`.
