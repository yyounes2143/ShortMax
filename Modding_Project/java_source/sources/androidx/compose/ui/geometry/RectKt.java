package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Rect.kt */
@Metadata
/* loaded from: classes.dex */
public final class RectKt {
    @Stable
    @NotNull
    /* renamed from: Rect-0a9Yr6o  reason: not valid java name */
    public static final Rect m1644Rect0a9Yr6o(long j10, long j11) {
        return new Rect(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j11), Offset.m1607getYimpl(j11));
    }

    @Stable
    @NotNull
    /* renamed from: Rect-3MmeM6k  reason: not valid java name */
    public static final Rect m1645Rect3MmeM6k(long j10, float f10) {
        return new Rect(Offset.m1606getXimpl(j10) - f10, Offset.m1607getYimpl(j10) - f10, Offset.m1606getXimpl(j10) + f10, Offset.m1607getYimpl(j10) + f10);
    }

    @Stable
    @NotNull
    /* renamed from: Rect-tz77jQw  reason: not valid java name */
    public static final Rect m1646Recttz77jQw(long j10, long j11) {
        return new Rect(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10), Offset.m1606getXimpl(j10) + Size.m1675getWidthimpl(j11), Offset.m1607getYimpl(j10) + Size.m1672getHeightimpl(j11));
    }

    @Stable
    @NotNull
    public static final Rect lerp(@NotNull Rect start, @NotNull Rect stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new Rect(MathHelpersKt.lerp(start.getLeft(), stop.getLeft(), f10), MathHelpersKt.lerp(start.getTop(), stop.getTop(), f10), MathHelpersKt.lerp(start.getRight(), stop.getRight(), f10), MathHelpersKt.lerp(start.getBottom(), stop.getBottom(), f10));
    }
}
