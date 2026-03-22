package androidx.compose.ui.input.pointer;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerInputEventProcessor.kt */
@Metadata
/* loaded from: classes.dex */
final class PointerInputChangeEventProducer {
    @NotNull
    private final Map<PointerId, PointerInputData> previousPointerInputData = new LinkedHashMap();

    /* compiled from: PointerInputEventProcessor.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class PointerInputData {
        private final boolean down;
        private final long positionOnScreen;
        private final int type;
        private final long uptime;

        public /* synthetic */ PointerInputData(long j10, long j11, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(j10, j11, z10, i10);
        }

        public final boolean getDown() {
            return this.down;
        }

        /* renamed from: getPositionOnScreen-F1C5BW0  reason: not valid java name */
        public final long m3212getPositionOnScreenF1C5BW0() {
            return this.positionOnScreen;
        }

        /* renamed from: getType-T8wyACA  reason: not valid java name */
        public final int m3213getTypeT8wyACA() {
            return this.type;
        }

        public final long getUptime() {
            return this.uptime;
        }

        private PointerInputData(long j10, long j11, boolean z10, int i10) {
            this.uptime = j10;
            this.positionOnScreen = j11;
            this.down = z10;
            this.type = i10;
        }
    }

    public final void clear() {
        this.previousPointerInputData.clear();
    }

    @NotNull
    public final InternalPointerEvent produce(@NotNull PointerInputEvent pointerInputEvent, @NotNull PositionCalculator positionCalculator) {
        long j10;
        boolean down;
        long mo3289screenToLocalMKHz9U;
        Intrinsics.checkNotNullParameter(pointerInputEvent, "pointerInputEvent");
        Intrinsics.checkNotNullParameter(positionCalculator, "positionCalculator");
        LinkedHashMap linkedHashMap = new LinkedHashMap(pointerInputEvent.getPointers().size());
        List<PointerInputEventData> pointers = pointerInputEvent.getPointers();
        int size = pointers.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputEventData pointerInputEventData = pointers.get(i10);
            PointerInputData pointerInputData = this.previousPointerInputData.get(PointerId.m3192boximpl(pointerInputEventData.m3221getIdJ3iCeTQ()));
            if (pointerInputData == null) {
                j10 = pointerInputEventData.getUptime();
                mo3289screenToLocalMKHz9U = pointerInputEventData.m3222getPositionF1C5BW0();
                down = false;
            } else {
                long uptime = pointerInputData.getUptime();
                j10 = uptime;
                down = pointerInputData.getDown();
                mo3289screenToLocalMKHz9U = positionCalculator.mo3289screenToLocalMKHz9U(pointerInputData.m3212getPositionOnScreenF1C5BW0());
            }
            linkedHashMap.put(PointerId.m3192boximpl(pointerInputEventData.m3221getIdJ3iCeTQ()), new PointerInputChange(pointerInputEventData.m3221getIdJ3iCeTQ(), pointerInputEventData.getUptime(), pointerInputEventData.m3222getPositionF1C5BW0(), pointerInputEventData.getDown(), j10, mo3289screenToLocalMKHz9U, down, false, pointerInputEventData.m3225getTypeT8wyACA(), (List) pointerInputEventData.getHistorical(), pointerInputEventData.m3224getScrollDeltaF1C5BW0(), (DefaultConstructorMarker) null));
            if (pointerInputEventData.getDown()) {
                this.previousPointerInputData.put(PointerId.m3192boximpl(pointerInputEventData.m3221getIdJ3iCeTQ()), new PointerInputData(pointerInputEventData.getUptime(), pointerInputEventData.m3223getPositionOnScreenF1C5BW0(), pointerInputEventData.getDown(), pointerInputEventData.m3225getTypeT8wyACA(), null));
            } else {
                this.previousPointerInputData.remove(PointerId.m3192boximpl(pointerInputEventData.m3221getIdJ3iCeTQ()));
            }
        }
        return new InternalPointerEvent(linkedHashMap, pointerInputEvent);
    }
}
