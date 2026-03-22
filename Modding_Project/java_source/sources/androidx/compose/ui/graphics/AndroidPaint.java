package androidx.compose.ui.graphics;

import android.graphics.Shader;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPaint.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPaint implements Paint {
    @Nullable
    private ColorFilter internalColorFilter;
    @Nullable
    private Shader internalShader;
    @Nullable
    private PathEffect pathEffect;
    @NotNull
    private android.graphics.Paint internalPaint = AndroidPaint_androidKt.makeNativePaint();
    private int _blendMode = BlendMode.Companion.m1786getSrcOver0nO6VwU();

    @Override // androidx.compose.ui.graphics.Paint
    @NotNull
    public android.graphics.Paint asFrameworkPaint() {
        return this.internalPaint;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public float getAlpha() {
        return AndroidPaint_androidKt.getNativeAlpha(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: getBlendMode-0nO6VwU  reason: not valid java name */
    public int mo1719getBlendMode0nO6VwU() {
        return this._blendMode;
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: getColor-0d7_KjU  reason: not valid java name */
    public long mo1720getColor0d7_KjU() {
        return AndroidPaint_androidKt.getNativeColor(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    @Nullable
    public ColorFilter getColorFilter() {
        return this.internalColorFilter;
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: getFilterQuality-f-v9h1I  reason: not valid java name */
    public int mo1721getFilterQualityfv9h1I() {
        return AndroidPaint_androidKt.getNativeFilterQuality(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    @Nullable
    public PathEffect getPathEffect() {
        return this.pathEffect;
    }

    @Override // androidx.compose.ui.graphics.Paint
    @Nullable
    public Shader getShader() {
        return this.internalShader;
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: getStrokeCap-KaPHkGw  reason: not valid java name */
    public int mo1722getStrokeCapKaPHkGw() {
        return AndroidPaint_androidKt.getNativeStrokeCap(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: getStrokeJoin-LxFBmk8  reason: not valid java name */
    public int mo1723getStrokeJoinLxFBmk8() {
        return AndroidPaint_androidKt.getNativeStrokeJoin(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public float getStrokeMiterLimit() {
        return AndroidPaint_androidKt.getNativeStrokeMiterLimit(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public float getStrokeWidth() {
        return AndroidPaint_androidKt.getNativeStrokeWidth(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: getStyle-TiuSbCo  reason: not valid java name */
    public int mo1724getStyleTiuSbCo() {
        return AndroidPaint_androidKt.getNativeStyle(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public boolean isAntiAlias() {
        return AndroidPaint_androidKt.getNativeAntiAlias(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void setAlpha(float f10) {
        AndroidPaint_androidKt.setNativeAlpha(this.internalPaint, f10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void setAntiAlias(boolean z10) {
        AndroidPaint_androidKt.setNativeAntiAlias(this.internalPaint, z10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: setBlendMode-s9anfk8  reason: not valid java name */
    public void mo1725setBlendModes9anfk8(int i10) {
        this._blendMode = i10;
        AndroidPaint_androidKt.m1731setNativeBlendModeGB0RdKg(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: setColor-8_81llA  reason: not valid java name */
    public void mo1726setColor8_81llA(long j10) {
        AndroidPaint_androidKt.m1732setNativeColor4WTKRHQ(this.internalPaint, j10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.internalColorFilter = colorFilter;
        AndroidPaint_androidKt.setNativeColorFilter(this.internalPaint, colorFilter);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: setFilterQuality-vDHp3xo  reason: not valid java name */
    public void mo1727setFilterQualityvDHp3xo(int i10) {
        AndroidPaint_androidKt.m1733setNativeFilterQuality50PEsBU(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void setPathEffect(@Nullable PathEffect pathEffect) {
        AndroidPaint_androidKt.setNativePathEffect(this.internalPaint, pathEffect);
        this.pathEffect = pathEffect;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void setShader(@Nullable Shader shader) {
        this.internalShader = shader;
        AndroidPaint_androidKt.setNativeShader(this.internalPaint, shader);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: setStrokeCap-BeK7IIE  reason: not valid java name */
    public void mo1728setStrokeCapBeK7IIE(int i10) {
        AndroidPaint_androidKt.m1734setNativeStrokeCapCSYIeUk(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: setStrokeJoin-Ww9F2mQ  reason: not valid java name */
    public void mo1729setStrokeJoinWw9F2mQ(int i10) {
        AndroidPaint_androidKt.m1735setNativeStrokeJoinkLtJ_vA(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void setStrokeMiterLimit(float f10) {
        AndroidPaint_androidKt.setNativeStrokeMiterLimit(this.internalPaint, f10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void setStrokeWidth(float f10) {
        AndroidPaint_androidKt.setNativeStrokeWidth(this.internalPaint, f10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    /* renamed from: setStyle-k9PVt8s  reason: not valid java name */
    public void mo1730setStylek9PVt8s(int i10) {
        AndroidPaint_androidKt.m1736setNativeStyle5YerkU(this.internalPaint, i10);
    }
}
