package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.SizeKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntSize.kt */
@Metadata
/* loaded from: classes.dex */
public final class IntSizeKt {
    @Stable
    public static final long IntSize(int i10, int i11) {
        return IntSize.m4204constructorimpl((i11 & 4294967295L) | (i10 << 32));
    }

    /* renamed from: getCenter-ozmzZPI  reason: not valid java name */
    public static final long m4215getCenterozmzZPI(long j10) {
        return IntOffsetKt.IntOffset(IntSize.m4209getWidthimpl(j10) / 2, IntSize.m4208getHeightimpl(j10) / 2);
    }

    @Stable
    /* renamed from: times-O0kMr_c  reason: not valid java name */
    public static final long m4217timesO0kMr_c(int i10, long j10) {
        return IntSize.m4211timesYEO4UFw(j10, i10);
    }

    @Stable
    @NotNull
    /* renamed from: toIntRect-ozmzZPI  reason: not valid java name */
    public static final IntRect m4218toIntRectozmzZPI(long j10) {
        return IntRectKt.m4199IntRectVbeCjmY(IntOffset.Companion.m4177getZeronOccac(), j10);
    }

    @Stable
    /* renamed from: toSize-ozmzZPI  reason: not valid java name */
    public static final long m4219toSizeozmzZPI(long j10) {
        return SizeKt.Size(IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j10));
    }

    @Stable
    /* renamed from: getCenter-ozmzZPI$annotations  reason: not valid java name */
    public static /* synthetic */ void m4216getCenterozmzZPI$annotations(long j10) {
    }
}
