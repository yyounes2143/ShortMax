package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: Shadow.kt */
@Metadata
/* loaded from: classes.dex */
public final class ShadowKt {
    @Stable
    @NotNull
    /* renamed from: shadow-s4CzXII  reason: not valid java name */
    public static final Modifier m1534shadows4CzXII(@NotNull Modifier shadow, final float f10, @NotNull final Shape shape, final boolean z10, final long j10, final long j11) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(shadow, "$this$shadow");
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (Dp.m4048compareTo0680j_4(f10, Dp.m4049constructorimpl(0)) <= 0 && !z10) {
            return shadow;
        }
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.draw.ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("shadow");
                    inspectorInfo.getProperties().set("elevation", Dp.m4047boximpl(f10));
                    inspectorInfo.getProperties().set("shape", shape);
                    inspectorInfo.getProperties().set("clip", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("ambientColor", Color.m1832boximpl(j10));
                    inspectorInfo.getProperties().set("spotColor", Color.m1832boximpl(j11));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return InspectableValueKt.inspectableWrapper(shadow, noInspectorInfo, GraphicsLayerModifierKt.graphicsLayer(Modifier.Companion, new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.draw.ShadowKt$shadow$2$1
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
                graphicsLayer.setShadowElevation(graphicsLayer.mo342toPx0680j_4(f10));
                graphicsLayer.setShape(shape);
                graphicsLayer.setClip(z10);
                graphicsLayer.mo2001setAmbientShadowColor8_81llA(j10);
                graphicsLayer.mo2002setSpotShadowColor8_81llA(j11);
            }
        }));
    }

    /* renamed from: shadow-s4CzXII$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1535shadows4CzXII$default(Modifier modifier, float f10, Shape shape, boolean z10, long j10, long j11, int i10, Object obj) {
        Shape shape2;
        boolean z11;
        long j12;
        long j13;
        if ((i10 & 2) != 0) {
            shape2 = RectangleShapeKt.getRectangleShape();
        } else {
            shape2 = shape;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
            if (Dp.m4048compareTo0680j_4(f10, Dp.m4049constructorimpl(0)) > 0) {
                z11 = true;
            }
        } else {
            z11 = z10;
        }
        if ((i10 & 8) != 0) {
            j12 = GraphicsLayerScopeKt.getDefaultShadowColor();
        } else {
            j12 = j10;
        }
        if ((i10 & 16) != 0) {
            j13 = GraphicsLayerScopeKt.getDefaultShadowColor();
        } else {
            j13 = j11;
        }
        return m1534shadows4CzXII(modifier, f10, shape2, z11, j12, j13);
    }

    @Stable
    @c
    /* renamed from: shadow-ziNgDLE  reason: not valid java name */
    public static final /* synthetic */ Modifier m1536shadowziNgDLE(Modifier shadow, float f10, Shape shape, boolean z10) {
        Intrinsics.checkNotNullParameter(shadow, "$this$shadow");
        Intrinsics.checkNotNullParameter(shape, "shape");
        return m1534shadows4CzXII(shadow, f10, shape, z10, GraphicsLayerScopeKt.getDefaultShadowColor(), GraphicsLayerScopeKt.getDefaultShadowColor());
    }

    /* renamed from: shadow-ziNgDLE$default  reason: not valid java name */
    public static /* synthetic */ Modifier m1537shadowziNgDLE$default(Modifier modifier, float f10, Shape shape, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        if ((i10 & 4) != 0) {
            z10 = false;
            if (Dp.m4048compareTo0680j_4(f10, Dp.m4049constructorimpl(0)) > 0) {
                z10 = true;
            }
        }
        return m1536shadowziNgDLE(modifier, f10, shape, z10);
    }
}
