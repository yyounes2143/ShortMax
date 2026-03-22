package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.platform.ViewConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextSelectionMouseDetector.kt */
@Metadata
/* loaded from: classes.dex */
final class ClicksCounter {
    private int clicks;
    @Nullable
    private PointerInputChange prevClick;
    @NotNull
    private final ViewConfiguration viewConfiguration;

    public ClicksCounter(@NotNull ViewConfiguration viewConfiguration) {
        Intrinsics.checkNotNullParameter(viewConfiguration, "viewConfiguration");
        this.viewConfiguration = viewConfiguration;
    }

    public final int getClicks() {
        return this.clicks;
    }

    @Nullable
    public final PointerInputChange getPrevClick() {
        return this.prevClick;
    }

    public final boolean positionIsTolerable(@NotNull PointerInputChange prevClick, @NotNull PointerInputChange newClick) {
        Intrinsics.checkNotNullParameter(prevClick, "prevClick");
        Intrinsics.checkNotNullParameter(newClick, "newClick");
        if (Offset.m1604getDistanceimpl(Offset.m1610minusMKHz9U(newClick.m3208getPositionF1C5BW0(), prevClick.m3208getPositionF1C5BW0())) < 100.0d) {
            return true;
        }
        return false;
    }

    public final void setClicks(int i10) {
        this.clicks = i10;
    }

    public final void setPrevClick(@Nullable PointerInputChange pointerInputChange) {
        this.prevClick = pointerInputChange;
    }

    public final boolean timeIsTolerable(@NotNull PointerInputChange prevClick, @NotNull PointerInputChange newClick) {
        Intrinsics.checkNotNullParameter(prevClick, "prevClick");
        Intrinsics.checkNotNullParameter(newClick, "newClick");
        if (newClick.getUptimeMillis() - prevClick.getUptimeMillis() < this.viewConfiguration.getDoubleTapTimeoutMillis()) {
            return true;
        }
        return false;
    }

    public final void update(@NotNull PointerEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        PointerInputChange pointerInputChange = this.prevClick;
        PointerInputChange pointerInputChange2 = event.getChanges().get(0);
        if (pointerInputChange != null && timeIsTolerable(pointerInputChange, pointerInputChange2) && positionIsTolerable(pointerInputChange, pointerInputChange2)) {
            this.clicks++;
        } else {
            this.clicks = 1;
        }
        this.prevClick = pointerInputChange2;
    }
}
