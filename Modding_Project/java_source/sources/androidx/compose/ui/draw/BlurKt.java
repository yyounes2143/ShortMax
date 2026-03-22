package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RenderEffectKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TileMode;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Blur.kt */
@Metadata
/* loaded from: classes.dex */
public final class BlurKt {
    @Stable
    @NotNull
    /* renamed from: blur-1fqS-gw  reason: not valid java name */
    public static final Modifier m1515blur1fqSgw(@NotNull Modifier blur, final float f10, final float f11, @NotNull final Shape shape) {
        final boolean z10;
        final int m2167getDecal3opZhB0;
        Intrinsics.checkNotNullParameter(blur, "$this$blur");
        if (shape != null) {
            m2167getDecal3opZhB0 = TileMode.Companion.m2166getClamp3opZhB0();
            z10 = true;
        } else {
            z10 = false;
            m2167getDecal3opZhB0 = TileMode.Companion.m2167getDecal3opZhB0();
        }
        float f12 = 0;
        if ((Dp.m4048compareTo0680j_4(f10, Dp.m4049constructorimpl(f12)) > 0 && Dp.m4048compareTo0680j_4(f11, Dp.m4049constructorimpl(f12)) > 0) || z10) {
            return GraphicsLayerModifierKt.graphicsLayer(blur, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.draw.BlurKt$blur$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                    invoke2(graphicsLayerScope);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull GraphicsLayerScope graphicsLayer) {
                    Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
                    float mo342toPx0680j_4 = graphicsLayer.mo342toPx0680j_4(f10);
                    float mo342toPx0680j_42 = graphicsLayer.mo342toPx0680j_4(f11);
                    graphicsLayer.setRenderEffect((mo342toPx0680j_4 <= 0.0f || mo342toPx0680j_42 <= 0.0f) ? null : RenderEffectKt.m2110BlurEffect3YTHUZs(mo342toPx0680j_4, mo342toPx0680j_42, m2167getDecal3opZhB0));
                    Shape shape2 = shape;
                    if (shape2 == null) {
                        shape2 = RectangleShapeKt.getRectangleShape();
                    }
                    graphicsLayer.setShape(shape2);
                    graphicsLayer.setClip(z10);
                }
            });
        }
        return blur;
    }

    /* renamed from: blur-1fqS-gw$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1516blur1fqSgw$default(Modifier modifier, float f10, float f11, BlurredEdgeTreatment blurredEdgeTreatment, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            blurredEdgeTreatment = BlurredEdgeTreatment.m1519boximpl(BlurredEdgeTreatment.Companion.m1526getRectangleGoahg());
        }
        return m1515blur1fqSgw(modifier, f10, f11, blurredEdgeTreatment.m1525unboximpl());
    }

    @Stable
    @NotNull
    /* renamed from: blur-F8QBwvs  reason: not valid java name */
    public static final Modifier m1517blurF8QBwvs(@NotNull Modifier blur, float f10, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(blur, "$this$blur");
        return m1515blur1fqSgw(blur, f10, f10, shape);
    }

    /* renamed from: blur-F8QBwvs$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1518blurF8QBwvs$default(Modifier modifier, float f10, BlurredEdgeTreatment blurredEdgeTreatment, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            blurredEdgeTreatment = BlurredEdgeTreatment.m1519boximpl(BlurredEdgeTreatment.Companion.m1526getRectangleGoahg());
        }
        return m1517blurF8QBwvs(modifier, f10, blurredEdgeTreatment.m1525unboximpl());
    }
}
