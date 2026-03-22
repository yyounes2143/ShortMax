package androidx.compose.animation.core;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: VisibilityThresholds.kt */
@Metadata
/* loaded from: classes.dex */
public final class VisibilityThresholdsKt {
    private static final float DpVisibilityThreshold = 0.1f;
    private static final float PxVisibilityThreshold = 0.5f;
    @NotNull
    private static final Rect rectVisibilityThreshold;
    @NotNull
    private static final Map<TwoWayConverter<?, ?>, Float> visibilityThresholdMap;

    static {
        Float valueOf = Float.valueOf(0.5f);
        rectVisibilityThreshold = new Rect(0.5f, 0.5f, 0.5f, 0.5f);
        TwoWayConverter<Integer, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(IntCompanionObject.INSTANCE);
        Float valueOf2 = Float.valueOf(1.0f);
        Pair a10 = k.a(vectorConverter, valueOf2);
        Pair a11 = k.a(VectorConvertersKt.getVectorConverter(IntSize.Companion), valueOf2);
        Pair a12 = k.a(VectorConvertersKt.getVectorConverter(IntOffset.Companion), valueOf2);
        Pair a13 = k.a(VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE), Float.valueOf(0.01f));
        Pair a14 = k.a(VectorConvertersKt.getVectorConverter(Rect.Companion), valueOf);
        Pair a15 = k.a(VectorConvertersKt.getVectorConverter(Size.Companion), valueOf);
        Pair a16 = k.a(VectorConvertersKt.getVectorConverter(Offset.Companion), valueOf);
        TwoWayConverter<Dp, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(Dp.Companion);
        Float valueOf3 = Float.valueOf(0.1f);
        visibilityThresholdMap = p0.m(a10, a11, a12, a13, a14, a15, a16, k.a(vectorConverter2, valueOf3), k.a(VectorConvertersKt.getVectorConverter(DpOffset.Companion), valueOf3));
    }

    public static final int getVisibilityThreshold(@NotNull IntCompanionObject intCompanionObject) {
        Intrinsics.checkNotNullParameter(intCompanionObject, "<this>");
        return 1;
    }

    @NotNull
    public static final Map<TwoWayConverter<?, ?>, Float> getVisibilityThresholdMap() {
        return visibilityThresholdMap;
    }

    public static final long getVisibilityThreshold(@NotNull IntOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntOffsetKt.IntOffset(1, 1);
    }

    public static final long getVisibilityThreshold(@NotNull Offset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return OffsetKt.Offset(0.5f, 0.5f);
    }

    public static final long getVisibilityThreshold(@NotNull DpOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        Dp.Companion companion2 = Dp.Companion;
        return DpKt.m4070DpOffsetYgX7TsA(getVisibilityThreshold(companion2), getVisibilityThreshold(companion2));
    }

    public static final long getVisibilityThreshold(@NotNull Size.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return SizeKt.Size(0.5f, 0.5f);
    }

    public static final long getVisibilityThreshold(@NotNull IntSize.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntSizeKt.IntSize(1, 1);
    }

    @NotNull
    public static final Rect getVisibilityThreshold(@NotNull Rect.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return rectVisibilityThreshold;
    }

    public static final float getVisibilityThreshold(@NotNull Dp.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return Dp.m4049constructorimpl(0.1f);
    }
}
