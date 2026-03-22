package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.DegreesKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawTransform.kt */
@Metadata
/* loaded from: classes.dex */
public final class DrawTransformKt {
    public static final void inset(@NotNull DrawTransform drawTransform, float f10, float f11) {
        Intrinsics.checkNotNullParameter(drawTransform, "<this>");
        drawTransform.inset(f10, f11, f10, f11);
    }

    public static /* synthetic */ void inset$default(DrawTransform drawTransform, float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(drawTransform, "<this>");
        drawTransform.inset(f10, f11, f10, f11);
    }

    /* renamed from: rotateRad-0AR0LA0  reason: not valid java name */
    public static final void m2395rotateRad0AR0LA0(@NotNull DrawTransform rotateRad, float f10, long j10) {
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        rotateRad.mo2267rotateUv8p0NA(DegreesKt.degrees(f10), j10);
    }

    /* renamed from: rotateRad-0AR0LA0$default  reason: not valid java name */
    public static /* synthetic */ void m2396rotateRad0AR0LA0$default(DrawTransform rotateRad, float f10, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = rotateRad.mo2265getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        rotateRad.mo2267rotateUv8p0NA(DegreesKt.degrees(f10), j10);
    }

    /* renamed from: scale-0AR0LA0  reason: not valid java name */
    public static final void m2397scale0AR0LA0(@NotNull DrawTransform scale, float f10, long j10) {
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        scale.mo2268scale0AR0LA0(f10, f10, j10);
    }

    /* renamed from: scale-0AR0LA0$default  reason: not valid java name */
    public static /* synthetic */ void m2398scale0AR0LA0$default(DrawTransform scale, float f10, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = scale.mo2265getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        scale.mo2268scale0AR0LA0(f10, f10, j10);
    }

    public static final void inset(@NotNull DrawTransform drawTransform, float f10) {
        Intrinsics.checkNotNullParameter(drawTransform, "<this>");
        drawTransform.inset(f10, f10, f10, f10);
    }
}
