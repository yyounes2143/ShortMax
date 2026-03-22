package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GraphicsLayerScope.kt */
@Metadata
/* loaded from: classes.dex */
public interface GraphicsLayerScope extends Density {

    /* compiled from: GraphicsLayerScope.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getAmbientShadowColor-0d7_KjU  reason: not valid java name */
        public static long m2004getAmbientShadowColor0d7_KjU(@NotNull GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.mo1998getAmbientShadowColor0d7_KjU();
        }

        @Deprecated
        @Nullable
        public static RenderEffect getRenderEffect(@NotNull GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.getRenderEffect();
        }

        @Deprecated
        /* renamed from: getSpotShadowColor-0d7_KjU  reason: not valid java name */
        public static long m2005getSpotShadowColor0d7_KjU(@NotNull GraphicsLayerScope graphicsLayerScope) {
            return GraphicsLayerScope.super.mo1999getSpotShadowColor0d7_KjU();
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m2006roundToPxR2X_6o(@NotNull GraphicsLayerScope graphicsLayerScope, long j10) {
            return GraphicsLayerScope.super.mo335roundToPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m2007roundToPx0680j_4(@NotNull GraphicsLayerScope graphicsLayerScope, float f10) {
            return GraphicsLayerScope.super.mo336roundToPx0680j_4(f10);
        }

        @Deprecated
        /* renamed from: setAmbientShadowColor-8_81llA  reason: not valid java name */
        public static void m2008setAmbientShadowColor8_81llA(@NotNull GraphicsLayerScope graphicsLayerScope, long j10) {
            GraphicsLayerScope.super.mo2001setAmbientShadowColor8_81llA(j10);
        }

        @Deprecated
        public static void setRenderEffect(@NotNull GraphicsLayerScope graphicsLayerScope, @Nullable RenderEffect renderEffect) {
            GraphicsLayerScope.super.setRenderEffect(renderEffect);
        }

        @Deprecated
        /* renamed from: setSpotShadowColor-8_81llA  reason: not valid java name */
        public static void m2009setSpotShadowColor8_81llA(@NotNull GraphicsLayerScope graphicsLayerScope, long j10) {
            GraphicsLayerScope.super.mo2002setSpotShadowColor8_81llA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m2010toDpGaN1DYA(@NotNull GraphicsLayerScope graphicsLayerScope, long j10) {
            return GraphicsLayerScope.super.mo337toDpGaN1DYA(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m2011toDpu2uoSUM(@NotNull GraphicsLayerScope graphicsLayerScope, float f10) {
            return GraphicsLayerScope.super.mo338toDpu2uoSUM(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDpSize-k-rfVVM  reason: not valid java name */
        public static long m2013toDpSizekrfVVM(@NotNull GraphicsLayerScope graphicsLayerScope, long j10) {
            return GraphicsLayerScope.super.mo340toDpSizekrfVVM(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m2014toPxR2X_6o(@NotNull GraphicsLayerScope graphicsLayerScope, long j10) {
            return GraphicsLayerScope.super.mo341toPxR2X_6o(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m2015toPx0680j_4(@NotNull GraphicsLayerScope graphicsLayerScope, float f10) {
            return GraphicsLayerScope.super.mo342toPx0680j_4(f10);
        }

        @Stable
        @Deprecated
        @NotNull
        public static Rect toRect(@NotNull GraphicsLayerScope graphicsLayerScope, @NotNull DpRect receiver) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return GraphicsLayerScope.super.toRect(receiver);
        }

        @Stable
        @Deprecated
        /* renamed from: toSize-XkaWNTQ  reason: not valid java name */
        public static long m2016toSizeXkaWNTQ(@NotNull GraphicsLayerScope graphicsLayerScope, long j10) {
            return GraphicsLayerScope.super.mo343toSizeXkaWNTQ(j10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m2017toSp0xMU5do(@NotNull GraphicsLayerScope graphicsLayerScope, float f10) {
            return GraphicsLayerScope.super.mo344toSp0xMU5do(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m2018toSpkPz2Gy4(@NotNull GraphicsLayerScope graphicsLayerScope, float f10) {
            return GraphicsLayerScope.super.mo345toSpkPz2Gy4(f10);
        }

        @Stable
        @Deprecated
        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m2012toDpu2uoSUM(@NotNull GraphicsLayerScope graphicsLayerScope, int i10) {
            return GraphicsLayerScope.super.mo339toDpu2uoSUM(i10);
        }

        @Stable
        @Deprecated
        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m2019toSpkPz2Gy4(@NotNull GraphicsLayerScope graphicsLayerScope, int i10) {
            return GraphicsLayerScope.super.mo346toSpkPz2Gy4(i10);
        }

        public static /* synthetic */ void getClip$annotations() {
        }
    }

    float getAlpha();

    /* renamed from: getAmbientShadowColor-0d7_KjU  reason: not valid java name */
    default long mo1998getAmbientShadowColor0d7_KjU() {
        return GraphicsLayerScopeKt.getDefaultShadowColor();
    }

    float getCameraDistance();

    boolean getClip();

    @Nullable
    default RenderEffect getRenderEffect() {
        return null;
    }

    float getRotationX();

    float getRotationY();

    float getRotationZ();

    float getScaleX();

    float getScaleY();

    float getShadowElevation();

    @NotNull
    Shape getShape();

    /* renamed from: getSpotShadowColor-0d7_KjU  reason: not valid java name */
    default long mo1999getSpotShadowColor0d7_KjU() {
        return GraphicsLayerScopeKt.getDefaultShadowColor();
    }

    /* renamed from: getTransformOrigin-SzJe1aQ  reason: not valid java name */
    long mo2000getTransformOriginSzJe1aQ();

    float getTranslationX();

    float getTranslationY();

    void setAlpha(float f10);

    void setCameraDistance(float f10);

    void setClip(boolean z10);

    void setRotationX(float f10);

    void setRotationY(float f10);

    void setRotationZ(float f10);

    void setScaleX(float f10);

    void setScaleY(float f10);

    void setShadowElevation(float f10);

    void setShape(@NotNull Shape shape);

    /* renamed from: setTransformOrigin-__ExYCQ  reason: not valid java name */
    void mo2003setTransformOrigin__ExYCQ(long j10);

    void setTranslationX(float f10);

    void setTranslationY(float f10);

    /* renamed from: setAmbientShadowColor-8_81llA  reason: not valid java name */
    default void mo2001setAmbientShadowColor8_81llA(long j10) {
    }

    default void setRenderEffect(@Nullable RenderEffect renderEffect) {
    }

    /* renamed from: setSpotShadowColor-8_81llA  reason: not valid java name */
    default void mo2002setSpotShadowColor8_81llA(long j10) {
    }
}
