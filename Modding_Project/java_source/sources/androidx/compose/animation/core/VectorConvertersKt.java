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
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorConverters.kt */
@Metadata
/* loaded from: classes.dex */
public final class VectorConvertersKt {
    @NotNull
    private static final TwoWayConverter<Float, AnimationVector1D> FloatToVector = TwoWayConverter(new Function1<Float, AnimationVector1D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$1
        @NotNull
        public final AnimationVector1D invoke(float f10) {
            return new AnimationVector1D(f10);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector1D invoke(Float f10) {
            return invoke(f10.floatValue());
        }
    }, new Function1<AnimationVector1D, Float>() { // from class: androidx.compose.animation.core.VectorConvertersKt$FloatToVector$2
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Float invoke(@NotNull AnimationVector1D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Float.valueOf(it.getValue());
        }
    });
    @NotNull
    private static final TwoWayConverter<Integer, AnimationVector1D> IntToVector = TwoWayConverter(new Function1<Integer, AnimationVector1D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$1
        @NotNull
        public final AnimationVector1D invoke(int i10) {
            return new AnimationVector1D(i10);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector1D invoke(Integer num) {
            return invoke(num.intValue());
        }
    }, new Function1<AnimationVector1D, Integer>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntToVector$2
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Integer invoke(@NotNull AnimationVector1D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf((int) it.getValue());
        }
    });
    @NotNull
    private static final TwoWayConverter<Dp, AnimationVector1D> DpToVector = TwoWayConverter(new Function1<Dp, AnimationVector1D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector1D invoke(Dp dp2) {
            return m177invoke0680j_4(dp2.m4063unboximpl());
        }

        @NotNull
        /* renamed from: invoke-0680j_4  reason: not valid java name */
        public final AnimationVector1D m177invoke0680j_4(float f10) {
            return new AnimationVector1D(f10);
        }
    }, new Function1<AnimationVector1D, Dp>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Dp invoke(AnimationVector1D animationVector1D) {
            return Dp.m4047boximpl(m178invokeu2uoSUM(animationVector1D));
        }

        /* renamed from: invoke-u2uoSUM  reason: not valid java name */
        public final float m178invokeu2uoSUM(@NotNull AnimationVector1D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Dp.m4049constructorimpl(it.getValue());
        }
    });
    @NotNull
    private static final TwoWayConverter<DpOffset, AnimationVector2D> DpOffsetToVector = TwoWayConverter(new Function1<DpOffset, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(DpOffset dpOffset) {
            return m175invokejoFl9I(dpOffset.m4118unboximpl());
        }

        @NotNull
        /* renamed from: invoke-jo-Fl9I  reason: not valid java name */
        public final AnimationVector2D m175invokejoFl9I(long j10) {
            return new AnimationVector2D(DpOffset.m4110getXD9Ej5fM(j10), DpOffset.m4112getYD9Ej5fM(j10));
        }
    }, new Function1<AnimationVector2D, DpOffset>() { // from class: androidx.compose.animation.core.VectorConvertersKt$DpOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ DpOffset invoke(AnimationVector2D animationVector2D) {
            return DpOffset.m4104boximpl(m176invokegVRvYmI(animationVector2D));
        }

        /* renamed from: invoke-gVRvYmI  reason: not valid java name */
        public final long m176invokegVRvYmI(@NotNull AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return DpKt.m4070DpOffsetYgX7TsA(Dp.m4049constructorimpl(it.getV1()), Dp.m4049constructorimpl(it.getV2()));
        }
    });
    @NotNull
    private static final TwoWayConverter<Size, AnimationVector2D> SizeToVector = TwoWayConverter(new Function1<Size, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(Size size) {
            return m185invokeuvyYCjk(size.m1680unboximpl());
        }

        @NotNull
        /* renamed from: invoke-uvyYCjk  reason: not valid java name */
        public final AnimationVector2D m185invokeuvyYCjk(long j10) {
            return new AnimationVector2D(Size.m1675getWidthimpl(j10), Size.m1672getHeightimpl(j10));
        }
    }, new Function1<AnimationVector2D, Size>() { // from class: androidx.compose.animation.core.VectorConvertersKt$SizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Size invoke(AnimationVector2D animationVector2D) {
            return Size.m1663boximpl(m186invoke7Ah8Wj8(animationVector2D));
        }

        /* renamed from: invoke-7Ah8Wj8  reason: not valid java name */
        public final long m186invoke7Ah8Wj8(@NotNull AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return SizeKt.Size(it.getV1(), it.getV2());
        }
    });
    @NotNull
    private static final TwoWayConverter<Offset, AnimationVector2D> OffsetToVector = TwoWayConverter(new Function1<Offset, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(Offset offset) {
            return m183invokek4lQ0M(offset.m1616unboximpl());
        }

        @NotNull
        /* renamed from: invoke-k-4lQ0M  reason: not valid java name */
        public final AnimationVector2D m183invokek4lQ0M(long j10) {
            return new AnimationVector2D(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10));
        }
    }, new Function1<AnimationVector2D, Offset>() { // from class: androidx.compose.animation.core.VectorConvertersKt$OffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Offset invoke(AnimationVector2D animationVector2D) {
            return Offset.m1595boximpl(m184invoketuRUvjQ(animationVector2D));
        }

        /* renamed from: invoke-tuRUvjQ  reason: not valid java name */
        public final long m184invoketuRUvjQ(@NotNull AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return OffsetKt.Offset(it.getV1(), it.getV2());
        }
    });
    @NotNull
    private static final TwoWayConverter<IntOffset, AnimationVector2D> IntOffsetToVector = TwoWayConverter(new Function1<IntOffset, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(IntOffset intOffset) {
            return m179invokegyyYBs(intOffset.m4176unboximpl());
        }

        @NotNull
        /* renamed from: invoke--gyyYBs  reason: not valid java name */
        public final AnimationVector2D m179invokegyyYBs(long j10) {
            return new AnimationVector2D(IntOffset.m4167getXimpl(j10), IntOffset.m4168getYimpl(j10));
        }
    }, new Function1<AnimationVector2D, IntOffset>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntOffsetToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ IntOffset invoke(AnimationVector2D animationVector2D) {
            return IntOffset.m4158boximpl(m180invokeBjo55l4(animationVector2D));
        }

        /* renamed from: invoke-Bjo55l4  reason: not valid java name */
        public final long m180invokeBjo55l4(@NotNull AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return IntOffsetKt.IntOffset(bt.a.c(it.getV1()), bt.a.c(it.getV2()));
        }
    });
    @NotNull
    private static final TwoWayConverter<IntSize, AnimationVector2D> IntSizeToVector = TwoWayConverter(new Function1<IntSize, AnimationVector2D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ AnimationVector2D invoke(IntSize intSize) {
            return m181invokeozmzZPI(intSize.m4213unboximpl());
        }

        @NotNull
        /* renamed from: invoke-ozmzZPI  reason: not valid java name */
        public final AnimationVector2D m181invokeozmzZPI(long j10) {
            return new AnimationVector2D(IntSize.m4209getWidthimpl(j10), IntSize.m4208getHeightimpl(j10));
        }
    }, new Function1<AnimationVector2D, IntSize>() { // from class: androidx.compose.animation.core.VectorConvertersKt$IntSizeToVector$2
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ IntSize invoke(AnimationVector2D animationVector2D) {
            return IntSize.m4201boximpl(m182invokeYEO4UFw(animationVector2D));
        }

        /* renamed from: invoke-YEO4UFw  reason: not valid java name */
        public final long m182invokeYEO4UFw(@NotNull AnimationVector2D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return IntSizeKt.IntSize(bt.a.c(it.getV1()), bt.a.c(it.getV2()));
        }
    });
    @NotNull
    private static final TwoWayConverter<Rect, AnimationVector4D> RectToVector = TwoWayConverter(new Function1<Rect, AnimationVector4D>() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$1
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final AnimationVector4D invoke(@NotNull Rect it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new AnimationVector4D(it.getLeft(), it.getTop(), it.getRight(), it.getBottom());
        }
    }, new Function1<AnimationVector4D, Rect>() { // from class: androidx.compose.animation.core.VectorConvertersKt$RectToVector$2
        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Rect invoke(@NotNull AnimationVector4D it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new Rect(it.getV1(), it.getV2(), it.getV3(), it.getV4());
        }
    });

    @NotNull
    public static final <T, V extends AnimationVector> TwoWayConverter<T, V> TwoWayConverter(@NotNull Function1<? super T, ? extends V> convertToVector, @NotNull Function1<? super V, ? extends T> convertFromVector) {
        Intrinsics.checkNotNullParameter(convertToVector, "convertToVector");
        Intrinsics.checkNotNullParameter(convertFromVector, "convertFromVector");
        return new TwoWayConverterImpl(convertToVector, convertFromVector);
    }

    @NotNull
    public static final TwoWayConverter<Float, AnimationVector1D> getVectorConverter(@NotNull FloatCompanionObject floatCompanionObject) {
        Intrinsics.checkNotNullParameter(floatCompanionObject, "<this>");
        return FloatToVector;
    }

    public static final float lerp(float f10, float f11, float f12) {
        return (f10 * (1 - f12)) + (f11 * f12);
    }

    @NotNull
    public static final TwoWayConverter<Integer, AnimationVector1D> getVectorConverter(@NotNull IntCompanionObject intCompanionObject) {
        Intrinsics.checkNotNullParameter(intCompanionObject, "<this>");
        return IntToVector;
    }

    @NotNull
    public static final TwoWayConverter<Rect, AnimationVector4D> getVectorConverter(@NotNull Rect.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return RectToVector;
    }

    @NotNull
    public static final TwoWayConverter<Dp, AnimationVector1D> getVectorConverter(@NotNull Dp.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return DpToVector;
    }

    @NotNull
    public static final TwoWayConverter<DpOffset, AnimationVector2D> getVectorConverter(@NotNull DpOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return DpOffsetToVector;
    }

    @NotNull
    public static final TwoWayConverter<Size, AnimationVector2D> getVectorConverter(@NotNull Size.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return SizeToVector;
    }

    @NotNull
    public static final TwoWayConverter<Offset, AnimationVector2D> getVectorConverter(@NotNull Offset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return OffsetToVector;
    }

    @NotNull
    public static final TwoWayConverter<IntOffset, AnimationVector2D> getVectorConverter(@NotNull IntOffset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntOffsetToVector;
    }

    @NotNull
    public static final TwoWayConverter<IntSize, AnimationVector2D> getVectorConverter(@NotNull IntSize.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return IntSizeToVector;
    }
}
