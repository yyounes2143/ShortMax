package androidx.compose.ui.platform;

import androidx.compose.ui.graphics.RenderEffect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceRenderNode.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class DeviceRenderNodeData {
    private float alpha;
    private int ambientShadowColor;
    private final int bottom;
    private float cameraDistance;
    private boolean clipToBounds;
    private boolean clipToOutline;
    private float elevation;
    private final int height;
    private final int left;
    private float pivotX;
    private float pivotY;
    @Nullable
    private RenderEffect renderEffect;
    private final int right;
    private float rotationX;
    private float rotationY;
    private float rotationZ;
    private float scaleX;
    private float scaleY;
    private int spotShadowColor;
    private final int top;
    private float translationX;
    private float translationY;
    private final long uniqueId;
    private final int width;

    public DeviceRenderNodeData(long j10, int i10, int i11, int i12, int i13, int i14, int i15, float f10, float f11, float f12, float f13, float f14, int i16, int i17, float f15, float f16, float f17, float f18, float f19, float f20, boolean z10, boolean z11, float f21, @Nullable RenderEffect renderEffect) {
        this.uniqueId = j10;
        this.left = i10;
        this.top = i11;
        this.right = i12;
        this.bottom = i13;
        this.width = i14;
        this.height = i15;
        this.scaleX = f10;
        this.scaleY = f11;
        this.translationX = f12;
        this.translationY = f13;
        this.elevation = f14;
        this.ambientShadowColor = i16;
        this.spotShadowColor = i17;
        this.rotationZ = f15;
        this.rotationX = f16;
        this.rotationY = f17;
        this.cameraDistance = f18;
        this.pivotX = f19;
        this.pivotY = f20;
        this.clipToOutline = z10;
        this.clipToBounds = z11;
        this.alpha = f21;
        this.renderEffect = renderEffect;
    }

    public final long component1() {
        return this.uniqueId;
    }

    public final float component10() {
        return this.translationX;
    }

    public final float component11() {
        return this.translationY;
    }

    public final float component12() {
        return this.elevation;
    }

    public final int component13() {
        return this.ambientShadowColor;
    }

    public final int component14() {
        return this.spotShadowColor;
    }

    public final float component15() {
        return this.rotationZ;
    }

    public final float component16() {
        return this.rotationX;
    }

    public final float component17() {
        return this.rotationY;
    }

    public final float component18() {
        return this.cameraDistance;
    }

    public final float component19() {
        return this.pivotX;
    }

    public final int component2() {
        return this.left;
    }

    public final float component20() {
        return this.pivotY;
    }

    public final boolean component21() {
        return this.clipToOutline;
    }

    public final boolean component22() {
        return this.clipToBounds;
    }

    public final float component23() {
        return this.alpha;
    }

    @Nullable
    public final RenderEffect component24() {
        return this.renderEffect;
    }

    public final int component3() {
        return this.top;
    }

    public final int component4() {
        return this.right;
    }

    public final int component5() {
        return this.bottom;
    }

    public final int component6() {
        return this.width;
    }

    public final int component7() {
        return this.height;
    }

    public final float component8() {
        return this.scaleX;
    }

    public final float component9() {
        return this.scaleY;
    }

    @NotNull
    public final DeviceRenderNodeData copy(long j10, int i10, int i11, int i12, int i13, int i14, int i15, float f10, float f11, float f12, float f13, float f14, int i16, int i17, float f15, float f16, float f17, float f18, float f19, float f20, boolean z10, boolean z11, float f21, @Nullable RenderEffect renderEffect) {
        return new DeviceRenderNodeData(j10, i10, i11, i12, i13, i14, i15, f10, f11, f12, f13, f14, i16, i17, f15, f16, f17, f18, f19, f20, z10, z11, f21, renderEffect);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceRenderNodeData)) {
            return false;
        }
        DeviceRenderNodeData deviceRenderNodeData = (DeviceRenderNodeData) obj;
        if (this.uniqueId == deviceRenderNodeData.uniqueId && this.left == deviceRenderNodeData.left && this.top == deviceRenderNodeData.top && this.right == deviceRenderNodeData.right && this.bottom == deviceRenderNodeData.bottom && this.width == deviceRenderNodeData.width && this.height == deviceRenderNodeData.height && Intrinsics.areEqual((Object) Float.valueOf(this.scaleX), (Object) Float.valueOf(deviceRenderNodeData.scaleX)) && Intrinsics.areEqual((Object) Float.valueOf(this.scaleY), (Object) Float.valueOf(deviceRenderNodeData.scaleY)) && Intrinsics.areEqual((Object) Float.valueOf(this.translationX), (Object) Float.valueOf(deviceRenderNodeData.translationX)) && Intrinsics.areEqual((Object) Float.valueOf(this.translationY), (Object) Float.valueOf(deviceRenderNodeData.translationY)) && Intrinsics.areEqual((Object) Float.valueOf(this.elevation), (Object) Float.valueOf(deviceRenderNodeData.elevation)) && this.ambientShadowColor == deviceRenderNodeData.ambientShadowColor && this.spotShadowColor == deviceRenderNodeData.spotShadowColor && Intrinsics.areEqual((Object) Float.valueOf(this.rotationZ), (Object) Float.valueOf(deviceRenderNodeData.rotationZ)) && Intrinsics.areEqual((Object) Float.valueOf(this.rotationX), (Object) Float.valueOf(deviceRenderNodeData.rotationX)) && Intrinsics.areEqual((Object) Float.valueOf(this.rotationY), (Object) Float.valueOf(deviceRenderNodeData.rotationY)) && Intrinsics.areEqual((Object) Float.valueOf(this.cameraDistance), (Object) Float.valueOf(deviceRenderNodeData.cameraDistance)) && Intrinsics.areEqual((Object) Float.valueOf(this.pivotX), (Object) Float.valueOf(deviceRenderNodeData.pivotX)) && Intrinsics.areEqual((Object) Float.valueOf(this.pivotY), (Object) Float.valueOf(deviceRenderNodeData.pivotY)) && this.clipToOutline == deviceRenderNodeData.clipToOutline && this.clipToBounds == deviceRenderNodeData.clipToBounds && Intrinsics.areEqual((Object) Float.valueOf(this.alpha), (Object) Float.valueOf(deviceRenderNodeData.alpha)) && Intrinsics.areEqual(this.renderEffect, deviceRenderNodeData.renderEffect)) {
            return true;
        }
        return false;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final int getAmbientShadowColor() {
        return this.ambientShadowColor;
    }

    public final int getBottom() {
        return this.bottom;
    }

    public final float getCameraDistance() {
        return this.cameraDistance;
    }

    public final boolean getClipToBounds() {
        return this.clipToBounds;
    }

    public final boolean getClipToOutline() {
        return this.clipToOutline;
    }

    public final float getElevation() {
        return this.elevation;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getLeft() {
        return this.left;
    }

    public final float getPivotX() {
        return this.pivotX;
    }

    public final float getPivotY() {
        return this.pivotY;
    }

    @Nullable
    public final RenderEffect getRenderEffect() {
        return this.renderEffect;
    }

    public final int getRight() {
        return this.right;
    }

    public final float getRotationX() {
        return this.rotationX;
    }

    public final float getRotationY() {
        return this.rotationY;
    }

    public final float getRotationZ() {
        return this.rotationZ;
    }

    public final float getScaleX() {
        return this.scaleX;
    }

    public final float getScaleY() {
        return this.scaleY;
    }

    public final int getSpotShadowColor() {
        return this.spotShadowColor;
    }

    public final int getTop() {
        return this.top;
    }

    public final float getTranslationX() {
        return this.translationX;
    }

    public final float getTranslationY() {
        return this.translationY;
    }

    public final long getUniqueId() {
        return this.uniqueId;
    }

    public final int getWidth() {
        return this.width;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode;
        int hashCode2 = ((((((((((((((((((((((((((((((((((((((Long.hashCode(this.uniqueId) * 31) + Integer.hashCode(this.left)) * 31) + Integer.hashCode(this.top)) * 31) + Integer.hashCode(this.right)) * 31) + Integer.hashCode(this.bottom)) * 31) + Integer.hashCode(this.width)) * 31) + Integer.hashCode(this.height)) * 31) + Float.hashCode(this.scaleX)) * 31) + Float.hashCode(this.scaleY)) * 31) + Float.hashCode(this.translationX)) * 31) + Float.hashCode(this.translationY)) * 31) + Float.hashCode(this.elevation)) * 31) + Integer.hashCode(this.ambientShadowColor)) * 31) + Integer.hashCode(this.spotShadowColor)) * 31) + Float.hashCode(this.rotationZ)) * 31) + Float.hashCode(this.rotationX)) * 31) + Float.hashCode(this.rotationY)) * 31) + Float.hashCode(this.cameraDistance)) * 31) + Float.hashCode(this.pivotX)) * 31) + Float.hashCode(this.pivotY)) * 31;
        boolean z10 = this.clipToOutline;
        int i10 = 1;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int i12 = (hashCode2 + i11) * 31;
        boolean z11 = this.clipToBounds;
        if (!z11) {
            i10 = z11 ? 1 : 0;
        }
        int hashCode3 = (((i12 + i10) * 31) + Float.hashCode(this.alpha)) * 31;
        RenderEffect renderEffect = this.renderEffect;
        if (renderEffect == null) {
            hashCode = 0;
        } else {
            hashCode = renderEffect.hashCode();
        }
        return hashCode3 + hashCode;
    }

    public final void setAlpha(float f10) {
        this.alpha = f10;
    }

    public final void setAmbientShadowColor(int i10) {
        this.ambientShadowColor = i10;
    }

    public final void setCameraDistance(float f10) {
        this.cameraDistance = f10;
    }

    public final void setClipToBounds(boolean z10) {
        this.clipToBounds = z10;
    }

    public final void setClipToOutline(boolean z10) {
        this.clipToOutline = z10;
    }

    public final void setElevation(float f10) {
        this.elevation = f10;
    }

    public final void setPivotX(float f10) {
        this.pivotX = f10;
    }

    public final void setPivotY(float f10) {
        this.pivotY = f10;
    }

    public final void setRenderEffect(@Nullable RenderEffect renderEffect) {
        this.renderEffect = renderEffect;
    }

    public final void setRotationX(float f10) {
        this.rotationX = f10;
    }

    public final void setRotationY(float f10) {
        this.rotationY = f10;
    }

    public final void setRotationZ(float f10) {
        this.rotationZ = f10;
    }

    public final void setScaleX(float f10) {
        this.scaleX = f10;
    }

    public final void setScaleY(float f10) {
        this.scaleY = f10;
    }

    public final void setSpotShadowColor(int i10) {
        this.spotShadowColor = i10;
    }

    public final void setTranslationX(float f10) {
        this.translationX = f10;
    }

    public final void setTranslationY(float f10) {
        this.translationY = f10;
    }

    @NotNull
    public String toString() {
        return "DeviceRenderNodeData(uniqueId=" + this.uniqueId + ", left=" + this.left + ", top=" + this.top + ", right=" + this.right + ", bottom=" + this.bottom + ", width=" + this.width + ", height=" + this.height + ", scaleX=" + this.scaleX + ", scaleY=" + this.scaleY + ", translationX=" + this.translationX + ", translationY=" + this.translationY + ", elevation=" + this.elevation + ", ambientShadowColor=" + this.ambientShadowColor + ", spotShadowColor=" + this.spotShadowColor + ", rotationZ=" + this.rotationZ + ", rotationX=" + this.rotationX + ", rotationY=" + this.rotationY + ", cameraDistance=" + this.cameraDistance + ", pivotX=" + this.pivotX + ", pivotY=" + this.pivotY + ", clipToOutline=" + this.clipToOutline + ", clipToBounds=" + this.clipToBounds + ", alpha=" + this.alpha + ", renderEffect=" + this.renderEffect + ')';
    }
}
