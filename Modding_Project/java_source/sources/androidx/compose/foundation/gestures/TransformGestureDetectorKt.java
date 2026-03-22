package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import at.o;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: TransformGestureDetector.kt */
@Metadata
/* loaded from: classes.dex */
public final class TransformGestureDetectorKt {
    /* renamed from: angle-k-4lQ0M  reason: not valid java name */
    private static final float m360anglek4lQ0M(long j10) {
        if (Offset.m1606getXimpl(j10) == 0.0f && Offset.m1607getYimpl(j10) == 0.0f) {
            return 0.0f;
        }
        return ((-((float) Math.atan2(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10)))) * 180.0f) / 3.1415927f;
    }

    public static final long calculateCentroid(@NotNull PointerEvent pointerEvent, boolean z10) {
        long m3209getPreviousPositionF1C5BW0;
        Intrinsics.checkNotNullParameter(pointerEvent, "<this>");
        long m1622getZeroF1C5BW0 = Offset.Companion.m1622getZeroF1C5BW0();
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            PointerInputChange pointerInputChange = changes.get(i11);
            if (pointerInputChange.getPressed() && pointerInputChange.getPreviousPressed()) {
                if (z10) {
                    m3209getPreviousPositionF1C5BW0 = pointerInputChange.m3208getPositionF1C5BW0();
                } else {
                    m3209getPreviousPositionF1C5BW0 = pointerInputChange.m3209getPreviousPositionF1C5BW0();
                }
                m1622getZeroF1C5BW0 = Offset.m1611plusMKHz9U(m1622getZeroF1C5BW0, m3209getPreviousPositionF1C5BW0);
                i10++;
            }
        }
        if (i10 == 0) {
            return Offset.Companion.m1621getUnspecifiedF1C5BW0();
        }
        return Offset.m1601divtuRUvjQ(m1622getZeroF1C5BW0, i10);
    }

    public static /* synthetic */ long calculateCentroid$default(PointerEvent pointerEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return calculateCentroid(pointerEvent, z10);
    }

    public static final float calculateCentroidSize(@NotNull PointerEvent pointerEvent, boolean z10) {
        long m3209getPreviousPositionF1C5BW0;
        Intrinsics.checkNotNullParameter(pointerEvent, "<this>");
        long calculateCentroid = calculateCentroid(pointerEvent, z10);
        float f10 = 0.0f;
        if (Offset.m1603equalsimpl0(calculateCentroid, Offset.Companion.m1621getUnspecifiedF1C5BW0())) {
            return 0.0f;
        }
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            PointerInputChange pointerInputChange = changes.get(i11);
            if (pointerInputChange.getPressed() && pointerInputChange.getPreviousPressed()) {
                if (z10) {
                    m3209getPreviousPositionF1C5BW0 = pointerInputChange.m3208getPositionF1C5BW0();
                } else {
                    m3209getPreviousPositionF1C5BW0 = pointerInputChange.m3209getPreviousPositionF1C5BW0();
                }
                f10 += Offset.m1604getDistanceimpl(Offset.m1610minusMKHz9U(m3209getPreviousPositionF1C5BW0, calculateCentroid));
                i10++;
            }
        }
        return f10 / i10;
    }

    public static /* synthetic */ float calculateCentroidSize$default(PointerEvent pointerEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return calculateCentroidSize(pointerEvent, z10);
    }

    public static final long calculatePan(@NotNull PointerEvent pointerEvent) {
        Intrinsics.checkNotNullParameter(pointerEvent, "<this>");
        long calculateCentroid = calculateCentroid(pointerEvent, true);
        Offset.Companion companion = Offset.Companion;
        if (Offset.m1603equalsimpl0(calculateCentroid, companion.m1621getUnspecifiedF1C5BW0())) {
            return companion.m1622getZeroF1C5BW0();
        }
        return Offset.m1610minusMKHz9U(calculateCentroid, calculateCentroid(pointerEvent, false));
    }

    public static final float calculateRotation(@NotNull PointerEvent pointerEvent) {
        Intrinsics.checkNotNullParameter(pointerEvent, "<this>");
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int i12 = 1;
            if (i10 >= size) {
                break;
            }
            PointerInputChange pointerInputChange = changes.get(i10);
            if (!pointerInputChange.getPreviousPressed() || !pointerInputChange.getPressed()) {
                i12 = 0;
            }
            i11 += i12;
            i10++;
        }
        if (i11 < 2) {
            return 0.0f;
        }
        long calculateCentroid = calculateCentroid(pointerEvent, true);
        long calculateCentroid2 = calculateCentroid(pointerEvent, false);
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int size2 = changes2.size();
        float f10 = 0.0f;
        float f11 = 0.0f;
        for (int i13 = 0; i13 < size2; i13++) {
            PointerInputChange pointerInputChange2 = changes2.get(i13);
            if (pointerInputChange2.getPressed() && pointerInputChange2.getPreviousPressed()) {
                long m3208getPositionF1C5BW0 = pointerInputChange2.m3208getPositionF1C5BW0();
                long m1610minusMKHz9U = Offset.m1610minusMKHz9U(pointerInputChange2.m3209getPreviousPositionF1C5BW0(), calculateCentroid2);
                long m1610minusMKHz9U2 = Offset.m1610minusMKHz9U(m3208getPositionF1C5BW0, calculateCentroid);
                float m360anglek4lQ0M = m360anglek4lQ0M(m1610minusMKHz9U2) - m360anglek4lQ0M(m1610minusMKHz9U);
                float m1604getDistanceimpl = Offset.m1604getDistanceimpl(Offset.m1611plusMKHz9U(m1610minusMKHz9U2, m1610minusMKHz9U)) / 2.0f;
                if (m360anglek4lQ0M > 180.0f) {
                    m360anglek4lQ0M -= 360.0f;
                } else if (m360anglek4lQ0M < -180.0f) {
                    m360anglek4lQ0M += 360.0f;
                }
                f11 += m360anglek4lQ0M * m1604getDistanceimpl;
                f10 += m1604getDistanceimpl;
            }
        }
        if (f10 == 0.0f) {
            return 0.0f;
        }
        return f11 / f10;
    }

    public static final float calculateZoom(@NotNull PointerEvent pointerEvent) {
        Intrinsics.checkNotNullParameter(pointerEvent, "<this>");
        float calculateCentroidSize = calculateCentroidSize(pointerEvent, true);
        float calculateCentroidSize2 = calculateCentroidSize(pointerEvent, false);
        if (calculateCentroidSize == 0.0f || calculateCentroidSize2 == 0.0f) {
            return 1.0f;
        }
        return calculateCentroidSize / calculateCentroidSize2;
    }

    @Nullable
    public static final Object detectTransformGestures(@NotNull PointerInputScope pointerInputScope, boolean z10, @NotNull o<? super Offset, ? super Offset, ? super Float, ? super Float, Unit> oVar, @NotNull c<? super Unit> cVar) {
        Object forEachGesture = ForEachGestureKt.forEachGesture(pointerInputScope, new TransformGestureDetectorKt$detectTransformGestures$2(z10, oVar, null), cVar);
        if (forEachGesture == a.f()) {
            return forEachGesture;
        }
        return Unit.f60915a;
    }

    public static /* synthetic */ Object detectTransformGestures$default(PointerInputScope pointerInputScope, boolean z10, o oVar, c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return detectTransformGestures(pointerInputScope, z10, oVar, cVar);
    }
}
