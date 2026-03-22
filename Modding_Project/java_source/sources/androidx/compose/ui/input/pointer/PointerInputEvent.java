package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerInputEvent.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInputEvent {
    @NotNull
    private final MotionEvent motionEvent;
    @NotNull
    private final List<PointerInputEventData> pointers;
    private final long uptime;

    public PointerInputEvent(long j10, @NotNull List<PointerInputEventData> pointers, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(pointers, "pointers");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        this.uptime = j10;
        this.pointers = pointers;
        this.motionEvent = motionEvent;
    }

    @NotNull
    public final MotionEvent getMotionEvent() {
        return this.motionEvent;
    }

    @NotNull
    public final List<PointerInputEventData> getPointers() {
        return this.pointers;
    }

    public final long getUptime() {
        return this.uptime;
    }
}
