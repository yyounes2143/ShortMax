package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerEvent.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerEventKt {
    @c
    public static final boolean anyChangeConsumed(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return pointerInputChange.isConsumed();
    }

    public static final boolean changedToDown(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (!pointerInputChange.isConsumed() && !pointerInputChange.getPreviousPressed() && pointerInputChange.getPressed()) {
            return true;
        }
        return false;
    }

    public static final boolean changedToDownIgnoreConsumed(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (!pointerInputChange.getPreviousPressed() && pointerInputChange.getPressed()) {
            return true;
        }
        return false;
    }

    public static final boolean changedToUp(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (!pointerInputChange.isConsumed() && pointerInputChange.getPreviousPressed() && !pointerInputChange.getPressed()) {
            return true;
        }
        return false;
    }

    public static final boolean changedToUpIgnoreConsumed(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (pointerInputChange.getPreviousPressed() && !pointerInputChange.getPressed()) {
            return true;
        }
        return false;
    }

    @c
    public static final void consumeAllChanges(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        pointerInputChange.consume();
    }

    @c
    public static final void consumeDownChange(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (pointerInputChange.getPressed() != pointerInputChange.getPreviousPressed()) {
            pointerInputChange.consume();
        }
    }

    @c
    public static final void consumePositionChange(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (!Offset.m1603equalsimpl0(positionChange(pointerInputChange), Offset.Companion.m1622getZeroF1C5BW0())) {
            pointerInputChange.consume();
        }
    }

    @c
    /* renamed from: isOutOfBounds-O0kMr_c  reason: not valid java name */
    public static final boolean m3157isOutOfBoundsO0kMr_c(@NotNull PointerInputChange isOutOfBounds, long j10) {
        Intrinsics.checkNotNullParameter(isOutOfBounds, "$this$isOutOfBounds");
        long m3208getPositionF1C5BW0 = isOutOfBounds.m3208getPositionF1C5BW0();
        float m1606getXimpl = Offset.m1606getXimpl(m3208getPositionF1C5BW0);
        float m1607getYimpl = Offset.m1607getYimpl(m3208getPositionF1C5BW0);
        int m4209getWidthimpl = IntSize.m4209getWidthimpl(j10);
        int m4208getHeightimpl = IntSize.m4208getHeightimpl(j10);
        if (m1606getXimpl >= 0.0f && m1606getXimpl <= m4209getWidthimpl && m1607getYimpl >= 0.0f && m1607getYimpl <= m4208getHeightimpl) {
            return false;
        }
        return true;
    }

    /* renamed from: isOutOfBounds-jwHxaWs  reason: not valid java name */
    public static final boolean m3158isOutOfBoundsjwHxaWs(@NotNull PointerInputChange isOutOfBounds, long j10, long j11) {
        Intrinsics.checkNotNullParameter(isOutOfBounds, "$this$isOutOfBounds");
        if (!PointerType.m3279equalsimpl0(isOutOfBounds.m3211getTypeT8wyACA(), PointerType.Companion.m3286getTouchT8wyACA())) {
            return m3157isOutOfBoundsO0kMr_c(isOutOfBounds, j10);
        }
        long m3208getPositionF1C5BW0 = isOutOfBounds.m3208getPositionF1C5BW0();
        float m1606getXimpl = Offset.m1606getXimpl(m3208getPositionF1C5BW0);
        float m1607getYimpl = Offset.m1607getYimpl(m3208getPositionF1C5BW0);
        float m4209getWidthimpl = IntSize.m4209getWidthimpl(j10) + Size.m1675getWidthimpl(j11);
        float f10 = -Size.m1672getHeightimpl(j11);
        float m4208getHeightimpl = IntSize.m4208getHeightimpl(j10) + Size.m1672getHeightimpl(j11);
        if (m1606getXimpl >= (-Size.m1675getWidthimpl(j11)) && m1606getXimpl <= m4209getWidthimpl && m1607getYimpl >= f10 && m1607getYimpl <= m4208getHeightimpl) {
            return false;
        }
        return true;
    }

    public static final long positionChange(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return positionChangeInternal(pointerInputChange, false);
    }

    @c
    public static final boolean positionChangeConsumed(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return pointerInputChange.isConsumed();
    }

    public static final long positionChangeIgnoreConsumed(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return positionChangeInternal(pointerInputChange, true);
    }

    private static final long positionChangeInternal(PointerInputChange pointerInputChange, boolean z10) {
        long m1610minusMKHz9U = Offset.m1610minusMKHz9U(pointerInputChange.m3208getPositionF1C5BW0(), pointerInputChange.m3209getPreviousPositionF1C5BW0());
        if (!z10 && pointerInputChange.isConsumed()) {
            return Offset.Companion.m1622getZeroF1C5BW0();
        }
        return m1610minusMKHz9U;
    }

    static /* synthetic */ long positionChangeInternal$default(PointerInputChange pointerInputChange, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return positionChangeInternal(pointerInputChange, z10);
    }

    public static final boolean positionChanged(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return !Offset.m1603equalsimpl0(positionChangeInternal(pointerInputChange, false), Offset.Companion.m1622getZeroF1C5BW0());
    }

    public static final boolean positionChangedIgnoreConsumed(@NotNull PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return !Offset.m1603equalsimpl0(positionChangeInternal(pointerInputChange, true), Offset.Companion.m1622getZeroF1C5BW0());
    }
}
