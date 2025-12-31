# Graceful Degradation Pattern

When a component fails or is under heavy load, degrade non-essential features first.  
This ensures core functionality remains available and user impact is minimized.

**Example:**  
- Fail image resizing service but continue serving cached images.
