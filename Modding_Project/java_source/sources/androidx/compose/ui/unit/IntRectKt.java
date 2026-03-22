package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntRect.kt */
@Metadata
/* loaded from: classes.dex */
public final class IntRectKt {
    @Stable
    @NotNull
    /* renamed from: IntRect-E1MhUcY  reason: not valid java name */
    public static final IntRect m4198IntRectE1MhUcY(long j10, long j11) {
        return new IntRect(IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(j10), IntOffset.m4167getXimpl(j11), IntOffset.m4168getYimpl(j11));
    }

    @Stable
    @NotNull
    /* renamed from: IntRect-VbeCjmY  reason: not valid java name */
    public static final IntRect m4199IntRectVbeCjmY(long j10, long j11) {
        return new IntRect(IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(j10), IntOffset.m4167getXimpl(j10) + IntSize.m4209getWidthimpl(j11), IntOffset.m4168getYimpl(j10) + IntSize.m4208getHeightimpl(j11));
    }

    @Stable
    @NotNull
    /* renamed from: IntRect-ar5cAso  reason: not valid java name */
    public static final IntRect m4200IntRectar5cAso(long j10, int i10) {
        return new IntRect(IntOffset.m4167getXimpl(j10) - i10, IntOffset.m4168getYimpl(j10) - i10, IntOffset.m4167getXimpl(j10) + i10, IntOffset.m4168getYimpl(j10) + i10);
    }

    @Stable
    @NotNull
    public static final IntRect lerp(@NotNull IntRect start, @NotNull IntRect stop, float f10) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new IntRect(MathHelpersKt.lerp(start.getLeft(), stop.getLeft(), f10), MathHelpersKt.lerp(start.getTop(), stop.getTop(), f10), MathHelpersKt.lerp(start.getRight(), stop.getRight(), f10), MathHelpersKt.lerp(start.getBottom(), stop.getBottom(), f10));
    }
}
