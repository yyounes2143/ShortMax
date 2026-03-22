package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GraphicsLayerScope.kt */
@Metadata
/* loaded from: classes.dex */
public final class ReusableGraphicsLayerScope implements GraphicsLayerScope {
    private boolean clip;
    @Nullable
    private RenderEffect renderEffect;
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float shadowElevation;
    private float translationX;
    private float translationY;
    private float scaleX = 1.0f;
    private float scaleY = 1.0f;
    private float alpha = 1.0f;
    private long ambientShadowColor = GraphicsLayerScopeKt.getDefaultShadowColor();
    private long spotShadowColor = GraphicsLayerScopeKt.getDefaultShadowColor();
    private float cameraDistance = 8.0f;
    private long transformOrigin = TransformOrigin.Companion.m2184getCenterSzJe1aQ();
    @NotNull
    private Shape shape = RectangleShapeKt.getRectangleShape();
    @NotNull
    private Density graphicsDensity = DensityKt.Density$default(1.0f, 0.0f, 2, null);

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getAlpha() {
        return this.alpha;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getAmbientShadowColor-0d7_KjU */
    public long mo1998getAmbientShadowColor0d7_KjU() {
        return this.ambientShadowColor;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getCameraDistance() {
        return this.cameraDistance;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public boolean getClip() {
        return this.clip;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.graphicsDensity.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.graphicsDensity.getFontScale();
    }

    @NotNull
    public final Density getGraphicsDensity$ui_release() {
        return this.graphicsDensity;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    @Nullable
    public RenderEffect getRenderEffect() {
        return this.renderEffect;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getRotationX() {
        return this.rotationX;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getRotationY() {
        return this.rotationY;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getRotationZ() {
        return this.rotationZ;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getScaleX() {
        return this.scaleX;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getScaleY() {
        return this.scaleY;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getShadowElevation() {
        return this.shadowElevation;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    @NotNull
    public Shape getShape() {
        return this.shape;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getSpotShadowColor-0d7_KjU */
    public long mo1999getSpotShadowColor0d7_KjU() {
        return this.spotShadowColor;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: getTransformOrigin-SzJe1aQ */
    public long mo2000getTransformOriginSzJe1aQ() {
        return this.transformOrigin;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getTranslationX() {
        return this.translationX;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public float getTranslationY() {
        return this.translationY;
    }

    public final void reset() {
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
        setTranslationX(0.0f);
        setTranslationY(0.0f);
        setShadowElevation(0.0f);
        mo2001setAmbientShadowColor8_81llA(GraphicsLayerScopeKt.getDefaultShadowColor());
        mo2002setSpotShadowColor8_81llA(GraphicsLayerScopeKt.getDefaultShadowColor());
        setRotationX(0.0f);
        setRotationY(0.0f);
        setRotationZ(0.0f);
        setCameraDistance(8.0f);
        mo2003setTransformOrigin__ExYCQ(TransformOrigin.Companion.m2184getCenterSzJe1aQ());
        setShape(RectangleShapeKt.getRectangleShape());
        setClip(false);
        setRenderEffect(null);
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setAlpha(float f10) {
        this.alpha = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: setAmbientShadowColor-8_81llA */
    public void mo2001setAmbientShadowColor8_81llA(long j10) {
        this.ambientShadowColor = j10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setCameraDistance(float f10) {
        this.cameraDistance = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setClip(boolean z10) {
        this.clip = z10;
    }

    public final void setGraphicsDensity$ui_release(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.graphicsDensity = density;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRenderEffect(@Nullable RenderEffect renderEffect) {
        this.renderEffect = renderEffect;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRotationX(float f10) {
        this.rotationX = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRotationY(float f10) {
        this.rotationY = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setRotationZ(float f10) {
        this.rotationZ = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setScaleX(float f10) {
        this.scaleX = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setScaleY(float f10) {
        this.scaleY = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setShadowElevation(float f10) {
        this.shadowElevation = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setShape(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "<set-?>");
        this.shape = shape;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: setSpotShadowColor-8_81llA */
    public void mo2002setSpotShadowColor8_81llA(long j10) {
        this.spotShadowColor = j10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    /* renamed from: setTransformOrigin-__ExYCQ */
    public void mo2003setTransformOrigin__ExYCQ(long j10) {
        this.transformOrigin = j10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setTranslationX(float f10) {
        this.translationX = f10;
    }

    @Override // androidx.compose.ui.graphics.GraphicsLayerScope
    public void setTranslationY(float f10) {
        this.translationY = f10;
    }
}
