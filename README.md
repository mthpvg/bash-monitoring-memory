# bash-monitoring-memory

It shows three fields:
- The amount of memory in the machine
- The amount of memory available for new processes
- The percentage of used memory in a color based on thresholds values

![Stats preview](/stats_preview.png)

## Prerequisites
```bash
sudo apt-get install bc
```

## Usage
```bash
./stats.sh
```

## Tip
You can had `./stats.sh` in your `.bashrc` or `.profile` to get a quick overview of your memory usage on startup.
