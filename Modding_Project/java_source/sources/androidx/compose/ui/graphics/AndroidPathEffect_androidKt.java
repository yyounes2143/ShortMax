package androidx.compose.ui.graphics;

import android.graphics.ComposePathEffect;
import android.graphics.CornerPathEffect;
import android.graphics.DashPathEffect;
import android.graphics.PathDashPathEffect;
import androidx.compose.ui.graphics.StampedPathEffectStyle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidPathEffect.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPathEffect_androidKt {
    @NotNull
    public static final PathEffect actualChainPathEffect(@NotNull PathEffect outer, @NotNull PathEffect inner) {
        Intrinsics.checkNotNullParameter(outer, "outer");
        Intrinsics.checkNotNullParameter(inner, "inner");
        return new AndroidPathEffect(new ComposePathEffect(((AndroidPathEffect) outer).getNativePathEffect(), ((AndroidPathEffect) inner).getNativePathEffect()));
    }

    @NotNull
    public static final PathEffect actualCornerPathEffect(float f10) {
        return new AndroidPathEffect(new CornerPathEffect(f10));
    }

    @NotNull
    public static final PathEffect actualDashPathEffect(@NotNull float[] intervals, float f10) {
        Intrinsics.checkNotNullParameter(intervals, "intervals");
        return new AndroidPathEffect(new DashPathEffect(intervals, f10));
    }

    @NotNull
    /* renamed from: actualStampedPathEffect-7aD1DOk  reason: not valid java name */
    public static final PathEffect m1742actualStampedPathEffect7aD1DOk(@NotNull Path shape, float f10, float f11, int i10) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (shape instanceof AndroidPath) {
            return new AndroidPathEffect(new PathDashPathEffect(((AndroidPath) shape).getInternalPath(), f10, f11, m1743toAndroidPathDashPathEffectStyleoQv6xUo(i10)));
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @NotNull
    public static final android.graphics.PathEffect asAndroidPathEffect(@NotNull PathEffect pathEffect) {
        Intrinsics.checkNotNullParameter(pathEffect, "<this>");
        return ((AndroidPathEffect) pathEffect).getNativePathEffect();
    }

    @NotNull
    /* renamed from: toAndroidPathDashPathEffectStyle-oQv6xUo  reason: not valid java name */
    public static final PathDashPathEffect.Style m1743toAndroidPathDashPathEffectStyleoQv6xUo(int i10) {
        StampedPathEffectStyle.Companion companion = StampedPathEffectStyle.Companion;
        if (StampedPathEffectStyle.m2132equalsimpl0(i10, companion.m2136getMorphYpspkwk())) {
            return PathDashPathEffect.Style.MORPH;
        }
        if (StampedPathEffectStyle.m2132equalsimpl0(i10, companion.m2137getRotateYpspkwk())) {
            return PathDashPathEffect.Style.ROTATE;
        }
        if (StampedPathEffectStyle.m2132equalsimpl0(i10, companion.m2138getTranslateYpspkwk())) {
            return PathDashPathEffect.Style.TRANSLATE;
        }
        return PathDashPathEffect.Style.TRANSLATE;
    }

    @NotNull
    public static final PathEffect toComposePathEffect(@NotNull android.graphics.PathEffect pathEffect) {
        Intrinsics.checkNotNullParameter(pathEffect, "<this>");
        return new AndroidPathEffect(pathEffect);
    }
}
