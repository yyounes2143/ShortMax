package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.DegreesKt;
import androidx.compose.ui.graphics.Path;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawScope.kt */
@Metadata
/* loaded from: classes.dex */
public final class DrawScopeKt {
    /* renamed from: clipPath-KD09W0M  reason: not valid java name */
    public static final void m2373clipPathKD09W0M(@NotNull DrawScope clipPath, @NotNull Path path, int i10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(clipPath, "$this$clipPath");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipPath.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2263clipPathmtrdDE(path, i10);
        block.invoke(clipPath);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: clipPath-KD09W0M$default  reason: not valid java name */
    public static /* synthetic */ void m2374clipPathKD09W0M$default(DrawScope clipPath, Path path, int i10, Function1 block, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = ClipOp.Companion.m1831getIntersectrtfAjoo();
        }
        Intrinsics.checkNotNullParameter(clipPath, "$this$clipPath");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipPath.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2263clipPathmtrdDE(path, i10);
        block.invoke(clipPath);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: clipRect-rOu3jXo  reason: not valid java name */
    public static final void m2375clipRectrOu3jXo(@NotNull DrawScope clipRect, float f10, float f11, float f12, float f13, int i10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(clipRect, "$this$clipRect");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipRect.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2264clipRectN_I0leg(f10, f11, f12, f13, i10);
        block.invoke(clipRect);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: clipRect-rOu3jXo$default  reason: not valid java name */
    public static /* synthetic */ void m2376clipRectrOu3jXo$default(DrawScope clipRect, float f10, float f11, float f12, float f13, int i10, Function1 block, int i11, Object obj) {
        float f14;
        float f15;
        if ((i11 & 1) != 0) {
            f14 = 0.0f;
        } else {
            f14 = f10;
        }
        if ((i11 & 2) != 0) {
            f15 = 0.0f;
        } else {
            f15 = f11;
        }
        if ((i11 & 4) != 0) {
            f12 = Size.m1675getWidthimpl(clipRect.mo2336getSizeNHjbRc());
        }
        float f16 = f12;
        if ((i11 & 8) != 0) {
            f13 = Size.m1672getHeightimpl(clipRect.mo2336getSizeNHjbRc());
        }
        float f17 = f13;
        if ((i11 & 16) != 0) {
            i10 = ClipOp.Companion.m1831getIntersectrtfAjoo();
        }
        Intrinsics.checkNotNullParameter(clipRect, "$this$clipRect");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = clipRect.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2264clipRectN_I0leg(f14, f15, f16, f17, i10);
        block.invoke(clipRect);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    public static final void drawIntoCanvas(@NotNull DrawScope drawScope, @NotNull Function1<? super Canvas, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        block.invoke(drawScope.getDrawContext().getCanvas());
    }

    public static final void inset(@NotNull DrawScope drawScope, float f10, float f11, float f12, float f13, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f10, f11, f12, f13);
        block.invoke(drawScope);
        drawScope.getDrawContext().getTransform().inset(-f10, -f11, -f12, -f13);
    }

    public static /* synthetic */ void inset$default(DrawScope drawScope, float f10, float f11, Function1 block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f10, f11, f10, f11);
        block.invoke(drawScope);
        float f12 = -f10;
        float f13 = -f11;
        drawScope.getDrawContext().getTransform().inset(f12, f13, f12, f13);
    }

    /* renamed from: rotate-Rg1IO4c  reason: not valid java name */
    public static final void m2377rotateRg1IO4c(@NotNull DrawScope rotate, float f10, long j10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(rotate, "$this$rotate");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotate.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2267rotateUv8p0NA(f10, j10);
        block.invoke(rotate);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: rotate-Rg1IO4c$default  reason: not valid java name */
    public static /* synthetic */ void m2378rotateRg1IO4c$default(DrawScope rotate, float f10, long j10, Function1 block, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = rotate.mo2335getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(rotate, "$this$rotate");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotate.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2267rotateUv8p0NA(f10, j10);
        block.invoke(rotate);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: rotateRad-Rg1IO4c  reason: not valid java name */
    public static final void m2379rotateRadRg1IO4c(@NotNull DrawScope rotateRad, float f10, long j10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotateRad.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2267rotateUv8p0NA(DegreesKt.degrees(f10), j10);
        block.invoke(rotateRad);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: rotateRad-Rg1IO4c$default  reason: not valid java name */
    public static /* synthetic */ void m2380rotateRadRg1IO4c$default(DrawScope rotateRad, float f10, long j10, Function1 block, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = rotateRad.mo2335getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = rotateRad.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2267rotateUv8p0NA(DegreesKt.degrees(f10), j10);
        block.invoke(rotateRad);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: scale-Fgt4K4Q  reason: not valid java name */
    public static final void m2381scaleFgt4K4Q(@NotNull DrawScope scale, float f10, float f11, long j10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2268scale0AR0LA0(f10, f11, j10);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: scale-Fgt4K4Q$default  reason: not valid java name */
    public static /* synthetic */ void m2382scaleFgt4K4Q$default(DrawScope scale, float f10, float f11, long j10, Function1 block, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            j10 = scale.mo2335getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2268scale0AR0LA0(f10, f11, j10);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: scale-Rg1IO4c  reason: not valid java name */
    public static final void m2383scaleRg1IO4c(@NotNull DrawScope scale, float f10, long j10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2268scale0AR0LA0(f10, f10, j10);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    /* renamed from: scale-Rg1IO4c$default  reason: not valid java name */
    public static /* synthetic */ void m2384scaleRg1IO4c$default(DrawScope scale, float f10, long j10, Function1 block, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = scale.mo2335getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        Intrinsics.checkNotNullParameter(block, "block");
        DrawContext drawContext = scale.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        drawContext.getTransform().mo2268scale0AR0LA0(f10, f10, j10);
        block.invoke(scale);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    public static final void translate(@NotNull DrawScope drawScope, float f10, float f11, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().translate(f10, f11);
        block.invoke(drawScope);
        drawScope.getDrawContext().getTransform().translate(-f10, -f11);
    }

    public static /* synthetic */ void translate$default(DrawScope drawScope, float f10, float f11, Function1 block, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().translate(f10, f11);
        block.invoke(drawScope);
        drawScope.getDrawContext().getTransform().translate(-f10, -f11);
    }

    public static final void withTransform(@NotNull DrawScope drawScope, @NotNull Function1<? super DrawTransform, Unit> transformBlock, @NotNull Function1<? super DrawScope, Unit> drawBlock) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(transformBlock, "transformBlock");
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        DrawContext drawContext = drawScope.getDrawContext();
        long mo2261getSizeNHjbRc = drawContext.mo2261getSizeNHjbRc();
        drawContext.getCanvas().save();
        transformBlock.invoke(drawContext.getTransform());
        drawBlock.invoke(drawScope);
        drawContext.getCanvas().restore();
        drawContext.mo2262setSizeuvyYCjk(mo2261getSizeNHjbRc);
    }

    public static final void inset(@NotNull DrawScope drawScope, float f10, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f10, f10, f10, f10);
        block.invoke(drawScope);
        float f11 = -f10;
        drawScope.getDrawContext().getTransform().inset(f11, f11, f11, f11);
    }

    public static final void inset(@NotNull DrawScope drawScope, float f10, float f11, @NotNull Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        drawScope.getDrawContext().getTransform().inset(f10, f11, f10, f11);
        block.invoke(drawScope);
        float f12 = -f10;
        float f13 = -f11;
        drawScope.getDrawContext().getTransform().inset(f12, f13, f12, f13);
    }
}
