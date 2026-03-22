package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextLayoutResultProxy.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextLayoutResultProxy {
    @Nullable
    private LayoutCoordinates decorationBoxCoordinates;
    @Nullable
    private LayoutCoordinates innerTextFieldCoordinates;
    @NotNull
    private final TextLayoutResult value;

    public TextLayoutResultProxy(@NotNull TextLayoutResult value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        if (r2 == null) goto L13;
     */
    /* renamed from: coercedInVisibleBoundsOfInputText-MK-Hz9U  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long m793coercedInVisibleBoundsOfInputTextMKHz9U(long r6) {
        /*
            r5 = this;
            androidx.compose.ui.layout.LayoutCoordinates r0 = r5.innerTextFieldCoordinates
            if (r0 == 0) goto L1e
            boolean r1 = r0.isAttached()
            if (r1 == 0) goto L16
            androidx.compose.ui.layout.LayoutCoordinates r1 = r5.decorationBoxCoordinates
            r2 = 0
            if (r1 == 0) goto L1c
            r3 = 0
            r4 = 2
            androidx.compose.ui.geometry.Rect r2 = androidx.compose.ui.layout.LayoutCoordinates.localBoundingBoxOf$default(r1, r0, r3, r4, r2)
            goto L1c
        L16:
            androidx.compose.ui.geometry.Rect$Companion r0 = androidx.compose.ui.geometry.Rect.Companion
            androidx.compose.ui.geometry.Rect r2 = r0.getZero()
        L1c:
            if (r2 != 0) goto L24
        L1e:
            androidx.compose.ui.geometry.Rect$Companion r0 = androidx.compose.ui.geometry.Rect.Companion
            androidx.compose.ui.geometry.Rect r2 = r0.getZero()
        L24:
            long r6 = androidx.compose.foundation.text.TextLayoutResultProxyKt.m798access$coerceIn3MmeM6k(r6, r2)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.TextLayoutResultProxy.m793coercedInVisibleBoundsOfInputTextMKHz9U(long):long");
    }

    public static /* synthetic */ int getLineEnd$default(TextLayoutResultProxy textLayoutResultProxy, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return textLayoutResultProxy.getLineEnd(i10, z10);
    }

    /* renamed from: getOffsetForPosition-3MmeM6k$default  reason: not valid java name */
    public static /* synthetic */ int m794getOffsetForPosition3MmeM6k$default(TextLayoutResultProxy textLayoutResultProxy, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return textLayoutResultProxy.m796getOffsetForPosition3MmeM6k(j10, z10);
    }

    /* renamed from: relativeToInputText-MK-Hz9U  reason: not valid java name */
    private final long m795relativeToInputTextMKHz9U(long j10) {
        Offset offset;
        long j11;
        LayoutCoordinates layoutCoordinates = this.innerTextFieldCoordinates;
        if (layoutCoordinates != null) {
            LayoutCoordinates layoutCoordinates2 = this.decorationBoxCoordinates;
            if (layoutCoordinates2 != null) {
                if (layoutCoordinates.isAttached() && layoutCoordinates2.isAttached()) {
                    j11 = layoutCoordinates.mo3338localPositionOfR5De75A(layoutCoordinates2, j10);
                } else {
                    j11 = j10;
                }
                offset = Offset.m1595boximpl(j11);
            } else {
                offset = null;
            }
            if (offset != null) {
                return offset.m1616unboximpl();
            }
            return j10;
        }
        return j10;
    }

    @Nullable
    public final LayoutCoordinates getDecorationBoxCoordinates() {
        return this.decorationBoxCoordinates;
    }

    @Nullable
    public final LayoutCoordinates getInnerTextFieldCoordinates() {
        return this.innerTextFieldCoordinates;
    }

    public final int getLineEnd(int i10, boolean z10) {
        return this.value.getLineEnd(i10, z10);
    }

    public final int getLineForVerticalPosition(float f10) {
        return this.value.getLineForVerticalPosition(Offset.m1607getYimpl(m795relativeToInputTextMKHz9U(m793coercedInVisibleBoundsOfInputTextMKHz9U(OffsetKt.Offset(0.0f, f10)))));
    }

    /* renamed from: getOffsetForPosition-3MmeM6k  reason: not valid java name */
    public final int m796getOffsetForPosition3MmeM6k(long j10, boolean z10) {
        if (z10) {
            j10 = m793coercedInVisibleBoundsOfInputTextMKHz9U(j10);
        }
        return this.value.m3682getOffsetForPositionk4lQ0M(m795relativeToInputTextMKHz9U(j10));
    }

    @NotNull
    public final TextLayoutResult getValue() {
        return this.value;
    }

    /* renamed from: isPositionOnText-k-4lQ0M  reason: not valid java name */
    public final boolean m797isPositionOnTextk4lQ0M(long j10) {
        long m795relativeToInputTextMKHz9U = m795relativeToInputTextMKHz9U(m793coercedInVisibleBoundsOfInputTextMKHz9U(j10));
        int lineForVerticalPosition = this.value.getLineForVerticalPosition(Offset.m1607getYimpl(m795relativeToInputTextMKHz9U));
        if (Offset.m1606getXimpl(m795relativeToInputTextMKHz9U) >= this.value.getLineLeft(lineForVerticalPosition) && Offset.m1606getXimpl(m795relativeToInputTextMKHz9U) <= this.value.getLineRight(lineForVerticalPosition)) {
            return true;
        }
        return false;
    }

    public final void setDecorationBoxCoordinates(@Nullable LayoutCoordinates layoutCoordinates) {
        this.decorationBoxCoordinates = layoutCoordinates;
    }

    public final void setInnerTextFieldCoordinates(@Nullable LayoutCoordinates layoutCoordinates) {
        this.innerTextFieldCoordinates = layoutCoordinates;
    }
}
