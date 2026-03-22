package androidx.compose.ui.graphics;

import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GraphicsLayerModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class SimpleGraphicsLayerModifier extends InspectorValueInfo implements LayoutModifier {
    private final float alpha;
    private final long ambientShadowColor;
    private final float cameraDistance;
    private final boolean clip;
    @NotNull
    private final Function1<GraphicsLayerScope, Unit> layerBlock;
    @Nullable
    private final RenderEffect renderEffect;
    private final float rotationX;
    private final float rotationY;
    private final float rotationZ;
    private final float scaleX;
    private final float scaleY;
    private final float shadowElevation;
    @NotNull
    private final Shape shape;
    private final long spotShadowColor;
    private final long transformOrigin;
    private final float translationX;
    private final float translationY;

    public /* synthetic */ SimpleGraphicsLayerModifier(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, Shape shape, boolean z10, RenderEffect renderEffect, long j11, long j12, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, j10, shape, z10, renderEffect, j11, j12, function1);
    }

    public boolean equals(@Nullable Object obj) {
        SimpleGraphicsLayerModifier simpleGraphicsLayerModifier;
        if (obj instanceof SimpleGraphicsLayerModifier) {
            simpleGraphicsLayerModifier = (SimpleGraphicsLayerModifier) obj;
        } else {
            simpleGraphicsLayerModifier = null;
        }
        if (simpleGraphicsLayerModifier == null || this.scaleX != simpleGraphicsLayerModifier.scaleX || this.scaleY != simpleGraphicsLayerModifier.scaleY || this.alpha != simpleGraphicsLayerModifier.alpha || this.translationX != simpleGraphicsLayerModifier.translationX || this.translationY != simpleGraphicsLayerModifier.translationY || this.shadowElevation != simpleGraphicsLayerModifier.shadowElevation || this.rotationX != simpleGraphicsLayerModifier.rotationX || this.rotationY != simpleGraphicsLayerModifier.rotationY || this.rotationZ != simpleGraphicsLayerModifier.rotationZ || this.cameraDistance != simpleGraphicsLayerModifier.cameraDistance || !TransformOrigin.m2178equalsimpl0(this.transformOrigin, simpleGraphicsLayerModifier.transformOrigin) || !Intrinsics.areEqual(this.shape, simpleGraphicsLayerModifier.shape) || this.clip != simpleGraphicsLayerModifier.clip || !Intrinsics.areEqual(this.renderEffect, simpleGraphicsLayerModifier.renderEffect) || !Color.m1843equalsimpl0(this.ambientShadowColor, simpleGraphicsLayerModifier.ambientShadowColor) || !Color.m1843equalsimpl0(this.spotShadowColor, simpleGraphicsLayerModifier.spotShadowColor)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((((((((((((((((((((((((Float.hashCode(this.scaleX) * 31) + Float.hashCode(this.scaleY)) * 31) + Float.hashCode(this.alpha)) * 31) + Float.hashCode(this.translationX)) * 31) + Float.hashCode(this.translationY)) * 31) + Float.hashCode(this.shadowElevation)) * 31) + Float.hashCode(this.rotationX)) * 31) + Float.hashCode(this.rotationY)) * 31) + Float.hashCode(this.rotationZ)) * 31) + Float.hashCode(this.cameraDistance)) * 31) + TransformOrigin.m2181hashCodeimpl(this.transformOrigin)) * 31) + this.shape.hashCode()) * 31) + Boolean.hashCode(this.clip)) * 31;
        RenderEffect renderEffect = this.renderEffect;
        if (renderEffect != null) {
            i10 = renderEffect.hashCode();
        } else {
            i10 = 0;
        }
        return ((((hashCode + i10) * 31) + Color.m1849hashCodeimpl(this.ambientShadowColor)) * 31) + Color.m1849hashCodeimpl(this.spotShadowColor);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    @NotNull
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo57measure3p2s80s(@NotNull MeasureScope measure, @NotNull Measurable measurable, long j10) {
        Intrinsics.checkNotNullParameter(measure, "$this$measure");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo3335measureBRTryo0 = measurable.mo3335measureBRTryo0(j10);
        return MeasureScope.layout$default(measure, mo3335measureBRTryo0.getWidth(), mo3335measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Placeable.PlacementScope layout) {
                Function1 function1;
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable placeable = Placeable.this;
                function1 = this.layerBlock;
                Placeable.PlacementScope.placeWithLayer$default(layout, placeable, 0, 0, 0.0f, function1, 4, null);
            }
        }, 4, null);
    }

    @NotNull
    public String toString() {
        return "SimpleGraphicsLayerModifier(scaleX=" + this.scaleX + ", scaleY=" + this.scaleY + ", alpha = " + this.alpha + ", translationX=" + this.translationX + ", translationY=" + this.translationY + ", shadowElevation=" + this.shadowElevation + ", rotationX=" + this.rotationX + ", rotationY=" + this.rotationY + ", rotationZ=" + this.rotationZ + ", cameraDistance=" + this.cameraDistance + ", transformOrigin=" + ((Object) TransformOrigin.m2182toStringimpl(this.transformOrigin)) + ", shape=" + this.shape + ", clip=" + this.clip + ", renderEffect=" + this.renderEffect + ", ambientShadowColor=" + ((Object) Color.m1850toStringimpl(this.ambientShadowColor)) + ", spotShadowColor=" + ((Object) Color.m1850toStringimpl(this.spotShadowColor)) + ')';
    }

    private SimpleGraphicsLayerModifier(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, Shape shape, boolean z10, RenderEffect renderEffect, long j11, long j12, Function1<? super InspectorInfo, Unit> function1) {
        super(function1);
        this.scaleX = f10;
        this.scaleY = f11;
        this.alpha = f12;
        this.translationX = f13;
        this.translationY = f14;
        this.shadowElevation = f15;
        this.rotationX = f16;
        this.rotationY = f17;
        this.rotationZ = f18;
        this.cameraDistance = f19;
        this.transformOrigin = j10;
        this.shape = shape;
        this.clip = z10;
        this.renderEffect = renderEffect;
        this.ambientShadowColor = j11;
        this.spotShadowColor = j12;
        this.layerBlock = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.ui.graphics.SimpleGraphicsLayerModifier$layerBlock$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                invoke2(graphicsLayerScope);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull GraphicsLayerScope graphicsLayerScope) {
                float f20;
                float f21;
                float f22;
                float f23;
                float f24;
                float f25;
                float f26;
                float f27;
                float f28;
                float f29;
                long j13;
                Shape shape2;
                boolean z11;
                RenderEffect renderEffect2;
                long j14;
                long j15;
                Intrinsics.checkNotNullParameter(graphicsLayerScope, "$this$null");
                f20 = SimpleGraphicsLayerModifier.this.scaleX;
                graphicsLayerScope.setScaleX(f20);
                f21 = SimpleGraphicsLayerModifier.this.scaleY;
                graphicsLayerScope.setScaleY(f21);
                f22 = SimpleGraphicsLayerModifier.this.alpha;
                graphicsLayerScope.setAlpha(f22);
                f23 = SimpleGraphicsLayerModifier.this.translationX;
                graphicsLayerScope.setTranslationX(f23);
                f24 = SimpleGraphicsLayerModifier.this.translationY;
                graphicsLayerScope.setTranslationY(f24);
                f25 = SimpleGraphicsLayerModifier.this.shadowElevation;
                graphicsLayerScope.setShadowElevation(f25);
                f26 = SimpleGraphicsLayerModifier.this.rotationX;
                graphicsLayerScope.setRotationX(f26);
                f27 = SimpleGraphicsLayerModifier.this.rotationY;
                graphicsLayerScope.setRotationY(f27);
                f28 = SimpleGraphicsLayerModifier.this.rotationZ;
                graphicsLayerScope.setRotationZ(f28);
                f29 = SimpleGraphicsLayerModifier.this.cameraDistance;
                graphicsLayerScope.setCameraDistance(f29);
                j13 = SimpleGraphicsLayerModifier.this.transformOrigin;
                graphicsLayerScope.mo2003setTransformOrigin__ExYCQ(j13);
                shape2 = SimpleGraphicsLayerModifier.this.shape;
                graphicsLayerScope.setShape(shape2);
                z11 = SimpleGraphicsLayerModifier.this.clip;
                graphicsLayerScope.setClip(z11);
                renderEffect2 = SimpleGraphicsLayerModifier.this.renderEffect;
                graphicsLayerScope.setRenderEffect(renderEffect2);
                j14 = SimpleGraphicsLayerModifier.this.ambientShadowColor;
                graphicsLayerScope.mo2001setAmbientShadowColor8_81llA(j14);
                j15 = SimpleGraphicsLayerModifier.this.spotShadowColor;
                graphicsLayerScope.mo2002setSpotShadowColor8_81llA(j15);
            }
        };
    }
}
