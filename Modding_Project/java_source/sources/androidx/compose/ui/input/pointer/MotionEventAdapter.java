package androidx.compose.ui.input.pointer;

import android.util.SparseBooleanArray;
import android.util.SparseLongArray;
import android.view.MotionEvent;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MotionEventAdapter.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class MotionEventAdapter {
    private long nextId;
    @NotNull
    private final SparseLongArray motionEventToComposePointerIdMap = new SparseLongArray();
    @NotNull
    private final SparseBooleanArray canHover = new SparseBooleanArray();
    @NotNull
    private final List<PointerInputEventData> pointers = new ArrayList();
    private int previousToolType = -1;
    private int previousSource = -1;

    private final void addFreshIds(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 5) {
            if (actionMasked == 9) {
                int pointerId = motionEvent.getPointerId(0);
                if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId) < 0) {
                    SparseLongArray sparseLongArray = this.motionEventToComposePointerIdMap;
                    long j10 = this.nextId;
                    this.nextId = 1 + j10;
                    sparseLongArray.put(pointerId, j10);
                    return;
                }
                return;
            }
            return;
        }
        int actionIndex = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex);
        if (this.motionEventToComposePointerIdMap.indexOfKey(pointerId2) < 0) {
            SparseLongArray sparseLongArray2 = this.motionEventToComposePointerIdMap;
            long j11 = this.nextId;
            this.nextId = 1 + j11;
            sparseLongArray2.put(pointerId2, j11);
            if (motionEvent.getToolType(actionIndex) == 3) {
                this.canHover.put(pointerId2, true);
            }
        }
    }

    private final void clearOnDeviceChange(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int toolType = motionEvent.getToolType(0);
        int source = motionEvent.getSource();
        if (toolType != this.previousToolType || source != this.previousSource) {
            this.previousToolType = toolType;
            this.previousSource = source;
            this.canHover.clear();
            this.motionEventToComposePointerIdMap.clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final androidx.compose.ui.input.pointer.PointerInputEventData createPointerInputEventData(androidx.compose.ui.input.pointer.PositionCalculator r24, android.view.MotionEvent r25, int r26, boolean r27) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.MotionEventAdapter.createPointerInputEventData(androidx.compose.ui.input.pointer.PositionCalculator, android.view.MotionEvent, int, boolean):androidx.compose.ui.input.pointer.PointerInputEventData");
    }

    /* renamed from: getComposePointerId-_I2yYro  reason: not valid java name */
    private final long m3143getComposePointerId_I2yYro(int i10) {
        long j10;
        int indexOfKey = this.motionEventToComposePointerIdMap.indexOfKey(i10);
        if (indexOfKey >= 0) {
            j10 = this.motionEventToComposePointerIdMap.valueAt(indexOfKey);
        } else {
            j10 = this.nextId;
            this.nextId = 1 + j10;
            this.motionEventToComposePointerIdMap.put(i10, j10);
        }
        return PointerId.m3193constructorimpl(j10);
    }

    private final boolean hasPointerId(MotionEvent motionEvent, int i10) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i11 = 0; i11 < pointerCount; i11++) {
            if (motionEvent.getPointerId(i11) == i10) {
                return true;
            }
        }
        return false;
    }

    private final void removeStaleIds(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1 || actionMasked == 6) {
            int pointerId = motionEvent.getPointerId(motionEvent.getActionIndex());
            if (!this.canHover.get(pointerId, false)) {
                this.motionEventToComposePointerIdMap.delete(pointerId);
                this.canHover.delete(pointerId);
            }
        }
        if (this.motionEventToComposePointerIdMap.size() > motionEvent.getPointerCount()) {
            for (int size = this.motionEventToComposePointerIdMap.size() - 1; -1 < size; size--) {
                int keyAt = this.motionEventToComposePointerIdMap.keyAt(size);
                if (!hasPointerId(motionEvent, keyAt)) {
                    this.motionEventToComposePointerIdMap.removeAt(size);
                    this.canHover.delete(keyAt);
                }
            }
        }
    }

    @Nullable
    public final PointerInputEvent convertToPointerInputEvent$ui_release(@NotNull MotionEvent motionEvent, @NotNull PositionCalculator positionCalculator) {
        boolean z10;
        boolean z11;
        int i10;
        boolean z12;
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        Intrinsics.checkNotNullParameter(positionCalculator, "positionCalculator");
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 3) {
            this.motionEventToComposePointerIdMap.clear();
            this.canHover.clear();
            return null;
        }
        clearOnDeviceChange(motionEvent);
        addFreshIds(motionEvent);
        if (actionMasked != 10 && actionMasked != 7 && actionMasked != 9) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (actionMasked == 8) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10) {
            this.canHover.put(motionEvent.getPointerId(motionEvent.getActionIndex()), true);
        }
        if (actionMasked != 1) {
            if (actionMasked != 6) {
                i10 = -1;
            } else {
                i10 = motionEvent.getActionIndex();
            }
        } else {
            i10 = 0;
        }
        this.pointers.clear();
        int pointerCount = motionEvent.getPointerCount();
        for (int i11 = 0; i11 < pointerCount; i11++) {
            List<PointerInputEventData> list = this.pointers;
            if (!z10 && i11 != i10 && (!z11 || motionEvent.getButtonState() != 0)) {
                z12 = true;
            } else {
                z12 = false;
            }
            list.add(createPointerInputEventData(positionCalculator, motionEvent, i11, z12));
        }
        removeStaleIds(motionEvent);
        return new PointerInputEvent(motionEvent.getEventTime(), this.pointers, motionEvent);
    }

    public final void endStream(int i10) {
        this.canHover.delete(i10);
        this.motionEventToComposePointerIdMap.delete(i10);
    }

    @NotNull
    public final SparseLongArray getMotionEventToComposePointerIdMap$ui_release() {
        return this.motionEventToComposePointerIdMap;
    }

    @VisibleForTesting
    public static /* synthetic */ void getMotionEventToComposePointerIdMap$ui_release$annotations() {
    }
}
