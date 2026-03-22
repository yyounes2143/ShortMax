package androidx.compose.ui.input.rotary;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.input.focus.FocusAwareEvent;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RotaryScrollEvent.kt */
@StabilityInferred(parameters = 0)
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public final class RotaryScrollEvent implements FocusAwareEvent {
    public static final int $stable = 0;
    private final float horizontalScrollPixels;
    private final long uptimeMillis;
    private final float verticalScrollPixels;

    public RotaryScrollEvent(float f10, float f11, long j10) {
        this.verticalScrollPixels = f10;
        this.horizontalScrollPixels = f11;
        this.uptimeMillis = j10;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof RotaryScrollEvent) {
            RotaryScrollEvent rotaryScrollEvent = (RotaryScrollEvent) obj;
            if (rotaryScrollEvent.verticalScrollPixels == this.verticalScrollPixels && rotaryScrollEvent.horizontalScrollPixels == this.horizontalScrollPixels && rotaryScrollEvent.uptimeMillis == this.uptimeMillis) {
                return true;
            }
        }
        return false;
    }

    public final float getHorizontalScrollPixels() {
        return this.horizontalScrollPixels;
    }

    public final long getUptimeMillis() {
        return this.uptimeMillis;
    }

    public final float getVerticalScrollPixels() {
        return this.verticalScrollPixels;
    }

    public int hashCode() {
        return (((Float.hashCode(this.verticalScrollPixels) * 31) + Float.hashCode(this.horizontalScrollPixels)) * 31) + Long.hashCode(this.uptimeMillis);
    }

    @NotNull
    public String toString() {
        return "RotaryScrollEvent(verticalScrollPixels=" + this.verticalScrollPixels + ",horizontalScrollPixels=" + this.horizontalScrollPixels + ",uptimeMillis=" + this.uptimeMillis + ')';
    }
}
