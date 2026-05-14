# Web Player Real Adapter Setup

Adapter file: src/ott_testing_framework/adapters/web_player_real.py
Platform key: web_player_real
Example suite: suites/web_player_real.yaml

Install:
pip install -e .[dev,web]
playwright install chromium

Configure (PowerShell):
$env:OTTSF_WEB_BASE_URL = "https://your-ott-web-player-url"
$env:OTTSF_WEB_BROWSER = "chromium"
$env:OTTSF_WEB_HEADLESS = "false"

Run:
ott-test run --suite suites/web_player_real.yaml --config configs/default.yaml

Captured metrics:
- startup_time_ms
- rebuffer_ratio
- bitrate_kbps
- frame_drop_ratio
- crash_count

Browser logs path:
artifacts/<run_id>/adapter_logs/
