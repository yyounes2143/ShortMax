package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RenderEffect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeviceRenderNode.android.kt */
@Metadata
/* loaded from: classes.dex */
public interface DeviceRenderNode {
    void discardDisplayList();

    void drawInto(@NotNull Canvas canvas);

    @NotNull
    DeviceRenderNodeData dumpRenderNodeData();

    float getAlpha();

    int getAmbientShadowColor();

    int getBottom();

    float getCameraDistance();

    boolean getClipToBounds();

    boolean getClipToOutline();

    float getElevation();

    boolean getHasDisplayList();

    int getHeight();

    void getInverseMatrix(@NotNull Matrix matrix);

    int getLeft();

    void getMatrix(@NotNull Matrix matrix);

    float getPivotX();

    float getPivotY();

    @Nullable
    RenderEffect getRenderEffect();

    int getRight();

    float getRotationX();

    float getRotationY();

    float getRotationZ();

    float getScaleX();

    float getScaleY();

    int getSpotShadowColor();

    int getTop();

    float getTranslationX();

    float getTranslationY();

    long getUniqueId();

    int getWidth();

    void offsetLeftAndRight(int i10);

    void offsetTopAndBottom(int i10);

    void record(@NotNull CanvasHolder canvasHolder, @Nullable Path path, @NotNull Function1<? super androidx.compose.ui.graphics.Canvas, Unit> function1);

    void setAlpha(float f10);

    void setAmbientShadowColor(int i10);

    void setCameraDistance(float f10);

    void setClipToBounds(boolean z10);

    void setClipToOutline(boolean z10);

    void setElevation(float f10);

    boolean setHasOverlappingRendering(boolean z10);

    void setOutline(@Nullable Outline outline);

    void setPivotX(float f10);

    void setPivotY(float f10);

    boolean setPosition(int i10, int i11, int i12, int i13);

    void setRenderEffect(@Nullable RenderEffect renderEffect);

    void setRotationX(float f10);

    void setRotationY(float f10);

    void setRotationZ(float f10);

    void setScaleX(float f10);

    void setScaleY(float f10);

    void setSpotShadowColor(int i10);

    void setTranslationX(float f10);

    void setTranslationY(float f10);
}
