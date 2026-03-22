package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: InternalPointerEvent.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class InternalPointerEvent {
    @NotNull
    private final Map<PointerId, PointerInputChange> changes;
    @NotNull
    private final PointerInputEvent pointerInputEvent;
    private boolean suppressMovementConsumption;

    public InternalPointerEvent(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull PointerInputEvent pointerInputEvent) {
        Intrinsics.checkNotNullParameter(changes, "changes");
        Intrinsics.checkNotNullParameter(pointerInputEvent, "pointerInputEvent");
        this.changes = changes;
        this.pointerInputEvent = pointerInputEvent;
    }

    @NotNull
    public final Map<PointerId, PointerInputChange> getChanges() {
        return this.changes;
    }

    @NotNull
    public final MotionEvent getMotionEvent() {
        return this.pointerInputEvent.getMotionEvent();
    }

    @NotNull
    public final PointerInputEvent getPointerInputEvent() {
        return this.pointerInputEvent;
    }

    public final boolean getSuppressMovementConsumption() {
        return this.suppressMovementConsumption;
    }

    /* renamed from: issuesEnterExitEvent-0FcD4WY  reason: not valid java name */
    public final boolean m3142issuesEnterExitEvent0FcD4WY(long j10) {
        PointerInputEventData pointerInputEventData;
        List<PointerInputEventData> pointers = this.pointerInputEvent.getPointers();
        int size = pointers.size();
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                pointerInputEventData = pointers.get(i10);
                if (PointerId.m3195equalsimpl0(pointerInputEventData.m3221getIdJ3iCeTQ(), j10)) {
                    break;
                }
                i10++;
            } else {
                pointerInputEventData = null;
                break;
            }
        }
        PointerInputEventData pointerInputEventData2 = pointerInputEventData;
        if (pointerInputEventData2 == null) {
            return false;
        }
        return pointerInputEventData2.getIssuesEnterExit();
    }

    public final void setSuppressMovementConsumption(boolean z10) {
        this.suppressMovementConsumption = z10;
    }
}
