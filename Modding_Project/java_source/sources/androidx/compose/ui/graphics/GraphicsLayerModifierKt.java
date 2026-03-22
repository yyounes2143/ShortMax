package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GraphicsLayerModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class GraphicsLayerModifierKt {
    @Stable
    @NotNull
    public static final Modifier graphicsLayer(@NotNull Modifier modifier, @NotNull final Function1<? super GraphicsLayerScope, Unit> block) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.graphics.GraphicsLayerModifierKt$graphicsLayer$$inlined$debugInspectorInfo$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("graphicsLayer");
                    inspectorInfo.getProperties().set("block", Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new BlockGraphicsLayerModifier(block, noInspectorInfo));
    }

    @Stable
    @ms.c
    /* renamed from: graphicsLayer-2Xn7asI  reason: not valid java name */
    public static final /* synthetic */ Modifier m1976graphicsLayer2Xn7asI(Modifier graphicsLayer, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, Shape shape, boolean z10, RenderEffect renderEffect) {
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m1978graphicsLayerpANQ8Wg(graphicsLayer, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, j10, shape, z10, renderEffect, GraphicsLayerScopeKt.getDefaultShadowColor(), GraphicsLayerScopeKt.getDefaultShadowColor());
    }

    /* renamed from: graphicsLayer-2Xn7asI$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1977graphicsLayer2Xn7asI$default(Modifier modifier, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, Shape shape, boolean z10, RenderEffect renderEffect, int i10, Object obj) {
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        float f26;
        float f27;
        long j11;
        Shape shape2;
        boolean z11;
        RenderEffect renderEffect2;
        float f28 = 1.0f;
        if ((i10 & 1) != 0) {
            f20 = 1.0f;
        } else {
            f20 = f10;
        }
        if ((i10 & 2) != 0) {
            f21 = 1.0f;
        } else {
            f21 = f11;
        }
        if ((i10 & 4) == 0) {
            f28 = f12;
        }
        float f29 = 0.0f;
        if ((i10 & 8) != 0) {
            f22 = 0.0f;
        } else {
            f22 = f13;
        }
        if ((i10 & 16) != 0) {
            f23 = 0.0f;
        } else {
            f23 = f14;
        }
        if ((i10 & 32) != 0) {
            f24 = 0.0f;
        } else {
            f24 = f15;
        }
        if ((i10 & 64) != 0) {
            f25 = 0.0f;
        } else {
            f25 = f16;
        }
        if ((i10 & 128) != 0) {
            f26 = 0.0f;
        } else {
            f26 = f17;
        }
        if ((i10 & 256) == 0) {
            f29 = f18;
        }
        if ((i10 & 512) != 0) {
            f27 = 8.0f;
        } else {
            f27 = f19;
        }
        if ((i10 & 1024) != 0) {
            j11 = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        } else {
            j11 = j10;
        }
        if ((i10 & 2048) != 0) {
            shape2 = RectangleShapeKt.getRectangleShape();
        } else {
            shape2 = shape;
        }
        if ((i10 & 4096) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        if ((i10 & 8192) != 0) {
            renderEffect2 = null;
        } else {
            renderEffect2 = renderEffect;
        }
        return m1976graphicsLayer2Xn7asI(modifier, f20, f21, f28, f22, f23, f24, f25, f26, f29, f27, j11, shape2, z11, renderEffect2);
    }

    @Stable
    @NotNull
    /* renamed from: graphicsLayer-pANQ8Wg  reason: not valid java name */
    public static final Modifier m1978graphicsLayerpANQ8Wg(@NotNull Modifier graphicsLayer, final float f10, final float f11, final float f12, final float f13, final float f14, final float f15, final float f16, final float f17, final float f18, final float f19, final long j10, @NotNull final Shape shape, final boolean z10, @Nullable final RenderEffect renderEffect, final long j11, final long j12) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.graphics.GraphicsLayerModifierKt$graphicsLayer-pANQ8Wg$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("graphicsLayer");
                    inspectorInfo.getProperties().set("scaleX", Float.valueOf(f10));
                    inspectorInfo.getProperties().set("scaleY", Float.valueOf(f11));
                    inspectorInfo.getProperties().set("alpha", Float.valueOf(f12));
                    inspectorInfo.getProperties().set("translationX", Float.valueOf(f13));
                    inspectorInfo.getProperties().set("translationY", Float.valueOf(f14));
                    inspectorInfo.getProperties().set("shadowElevation", Float.valueOf(f15));
                    inspectorInfo.getProperties().set("rotationX", Float.valueOf(f16));
                    inspectorInfo.getProperties().set("rotationY", Float.valueOf(f17));
                    inspectorInfo.getProperties().set("rotationZ", Float.valueOf(f18));
                    inspectorInfo.getProperties().set("cameraDistance", Float.valueOf(f19));
                    inspectorInfo.getProperties().set("transformOrigin", TransformOrigin.m2171boximpl(j10));
                    inspectorInfo.getProperties().set("shape", shape);
                    inspectorInfo.getProperties().set("clip", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("renderEffect", renderEffect);
                    inspectorInfo.getProperties().set("ambientShadowColor", Color.m1832boximpl(j11));
                    inspectorInfo.getProperties().set("spotShadowColor", Color.m1832boximpl(j12));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return graphicsLayer.then(new SimpleGraphicsLayerModifier(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, j10, shape, z10, renderEffect, j11, j12, noInspectorInfo, null));
    }

    /* renamed from: graphicsLayer-pANQ8Wg$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1979graphicsLayerpANQ8Wg$default(Modifier modifier, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, Shape shape, boolean z10, RenderEffect renderEffect, long j11, long j12, int i10, Object obj) {
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        float f26;
        float f27;
        long j13;
        Shape shape2;
        boolean z11;
        RenderEffect renderEffect2;
        long j14;
        long j15;
        float f28 = 1.0f;
        if ((i10 & 1) != 0) {
            f20 = 1.0f;
        } else {
            f20 = f10;
        }
        if ((i10 & 2) != 0) {
            f21 = 1.0f;
        } else {
            f21 = f11;
        }
        if ((i10 & 4) == 0) {
            f28 = f12;
        }
        float f29 = 0.0f;
        if ((i10 & 8) != 0) {
            f22 = 0.0f;
        } else {
            f22 = f13;
        }
        if ((i10 & 16) != 0) {
            f23 = 0.0f;
        } else {
            f23 = f14;
        }
        if ((i10 & 32) != 0) {
            f24 = 0.0f;
        } else {
            f24 = f15;
        }
        if ((i10 & 64) != 0) {
            f25 = 0.0f;
        } else {
            f25 = f16;
        }
        if ((i10 & 128) != 0) {
            f26 = 0.0f;
        } else {
            f26 = f17;
        }
        if ((i10 & 256) == 0) {
            f29 = f18;
        }
        if ((i10 & 512) != 0) {
            f27 = 8.0f;
        } else {
            f27 = f19;
        }
        if ((i10 & 1024) != 0) {
            j13 = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        } else {
            j13 = j10;
        }
        if ((i10 & 2048) != 0) {
            shape2 = RectangleShapeKt.getRectangleShape();
        } else {
            shape2 = shape;
        }
        if ((i10 & 4096) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        if ((i10 & 8192) != 0) {
            renderEffect2 = null;
        } else {
            renderEffect2 = renderEffect;
        }
        RenderEffect renderEffect3 = renderEffect2;
        if ((i10 & 16384) != 0) {
            j14 = GraphicsLayerScopeKt.getDefaultShadowColor();
        } else {
            j14 = j11;
        }
        if ((i10 & 32768) != 0) {
            j15 = GraphicsLayerScopeKt.getDefaultShadowColor();
        } else {
            j15 = j12;
        }
        return m1978graphicsLayerpANQ8Wg(modifier, f20, f21, f28, f22, f23, f24, f25, f26, f29, f27, j13, shape2, z11, renderEffect3, j14, j15);
    }

    @Stable
    @ms.c
    /* renamed from: graphicsLayer-sKFY_QE  reason: not valid java name */
    public static final /* synthetic */ Modifier m1980graphicsLayersKFY_QE(Modifier graphicsLayer, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, Shape shape, boolean z10) {
        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m1979graphicsLayerpANQ8Wg$default(graphicsLayer, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, j10, shape, z10, null, 0L, 0L, 49152, null);
    }

    /* renamed from: graphicsLayer-sKFY_QE$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1981graphicsLayersKFY_QE$default(Modifier modifier, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, Shape shape, boolean z10, int i10, Object obj) {
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        float f26;
        float f27;
        long j11;
        Shape shape2;
        boolean z11;
        float f28 = 1.0f;
        if ((i10 & 1) != 0) {
            f20 = 1.0f;
        } else {
            f20 = f10;
        }
        if ((i10 & 2) != 0) {
            f21 = 1.0f;
        } else {
            f21 = f11;
        }
        if ((i10 & 4) == 0) {
            f28 = f12;
        }
        float f29 = 0.0f;
        if ((i10 & 8) != 0) {
            f22 = 0.0f;
        } else {
            f22 = f13;
        }
        if ((i10 & 16) != 0) {
            f23 = 0.0f;
        } else {
            f23 = f14;
        }
        if ((i10 & 32) != 0) {
            f24 = 0.0f;
        } else {
            f24 = f15;
        }
        if ((i10 & 64) != 0) {
            f25 = 0.0f;
        } else {
            f25 = f16;
        }
        if ((i10 & 128) != 0) {
            f26 = 0.0f;
        } else {
            f26 = f17;
        }
        if ((i10 & 256) == 0) {
            f29 = f18;
        }
        if ((i10 & 512) != 0) {
            f27 = 8.0f;
        } else {
            f27 = f19;
        }
        if ((i10 & 1024) != 0) {
            j11 = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
        } else {
            j11 = j10;
        }
        if ((i10 & 2048) != 0) {
            shape2 = RectangleShapeKt.getRectangleShape();
        } else {
            shape2 = shape;
        }
        if ((i10 & 4096) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        return m1980graphicsLayersKFY_QE(modifier, f20, f21, f28, f22, f23, f24, f25, f26, f29, f27, j11, shape2, z11);
    }

    @Stable
    @NotNull
    public static final Modifier toolingGraphicsLayer(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (!InspectableValueKt.isDebugInspectorInfoEnabled()) {
            return modifier;
        }
        return modifier.then(m1979graphicsLayerpANQ8Wg$default(Modifier.Companion, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 65535, null));
    }
}
