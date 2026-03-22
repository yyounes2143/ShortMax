package androidx.compose.ui.window;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Popup.kt */
@Metadata
/* loaded from: classes.dex */
public final class AlignmentOffsetPositionProvider implements PopupPositionProvider {
    @NotNull
    private final Alignment alignment;
    private final long offset;

    public /* synthetic */ AlignmentOffsetPositionProvider(Alignment alignment, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(alignment, j10);
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4 */
    public long mo809calculatePositionllwVHH4(@NotNull IntRect anchorBounds, long j10, @NotNull LayoutDirection layoutDirection, long j11) {
        int i10;
        Intrinsics.checkNotNullParameter(anchorBounds, "anchorBounds");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        long IntOffset = IntOffsetKt.IntOffset(0, 0);
        Alignment alignment = this.alignment;
        IntSize.Companion companion = IntSize.Companion;
        long mo1514alignKFBX0sM = alignment.mo1514alignKFBX0sM(companion.m4214getZeroYbymL2g(), IntSizeKt.IntSize(anchorBounds.getWidth(), anchorBounds.getHeight()), layoutDirection);
        long mo1514alignKFBX0sM2 = this.alignment.mo1514alignKFBX0sM(companion.m4214getZeroYbymL2g(), IntSizeKt.IntSize(IntSize.m4209getWidthimpl(j11), IntSize.m4208getHeightimpl(j11)), layoutDirection);
        long IntOffset2 = IntOffsetKt.IntOffset(anchorBounds.getLeft(), anchorBounds.getTop());
        long IntOffset3 = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset) + IntOffset.m4167getXimpl(IntOffset2), IntOffset.m4168getYimpl(IntOffset) + IntOffset.m4168getYimpl(IntOffset2));
        long IntOffset4 = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset3) + IntOffset.m4167getXimpl(mo1514alignKFBX0sM), IntOffset.m4168getYimpl(IntOffset3) + IntOffset.m4168getYimpl(mo1514alignKFBX0sM));
        long IntOffset5 = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(mo1514alignKFBX0sM2), IntOffset.m4168getYimpl(mo1514alignKFBX0sM2));
        long IntOffset6 = IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset4) - IntOffset.m4167getXimpl(IntOffset5), IntOffset.m4168getYimpl(IntOffset4) - IntOffset.m4168getYimpl(IntOffset5));
        int m4167getXimpl = IntOffset.m4167getXimpl(this.offset);
        if (layoutDirection == LayoutDirection.Ltr) {
            i10 = 1;
        } else {
            i10 = -1;
        }
        long IntOffset7 = IntOffsetKt.IntOffset(m4167getXimpl * i10, IntOffset.m4168getYimpl(this.offset));
        return IntOffsetKt.IntOffset(IntOffset.m4167getXimpl(IntOffset6) + IntOffset.m4167getXimpl(IntOffset7), IntOffset.m4168getYimpl(IntOffset6) + IntOffset.m4168getYimpl(IntOffset7));
    }

    @NotNull
    public final Alignment getAlignment() {
        return this.alignment;
    }

    /* renamed from: getOffset-nOcc-ac  reason: not valid java name */
    public final long m4288getOffsetnOccac() {
        return this.offset;
    }

    private AlignmentOffsetPositionProvider(Alignment alignment, long j10) {
        this.alignment = alignment;
        this.offset = j10;
    }
}
