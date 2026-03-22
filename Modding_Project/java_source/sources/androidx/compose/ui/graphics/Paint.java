package androidx.compose.ui.graphics;

import android.graphics.Shader;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Paint.kt */
@Metadata
/* loaded from: classes.dex */
public interface Paint {
    @NotNull
    android.graphics.Paint asFrameworkPaint();

    float getAlpha();

    /* renamed from: getBlendMode-0nO6VwU */
    int mo1719getBlendMode0nO6VwU();

    /* renamed from: getColor-0d7_KjU */
    long mo1720getColor0d7_KjU();

    @Nullable
    ColorFilter getColorFilter();

    /* renamed from: getFilterQuality-f-v9h1I */
    int mo1721getFilterQualityfv9h1I();

    @Nullable
    PathEffect getPathEffect();

    @Nullable
    Shader getShader();

    /* renamed from: getStrokeCap-KaPHkGw */
    int mo1722getStrokeCapKaPHkGw();

    /* renamed from: getStrokeJoin-LxFBmk8 */
    int mo1723getStrokeJoinLxFBmk8();

    float getStrokeMiterLimit();

    float getStrokeWidth();

    /* renamed from: getStyle-TiuSbCo */
    int mo1724getStyleTiuSbCo();

    boolean isAntiAlias();

    void setAlpha(float f10);

    void setAntiAlias(boolean z10);

    /* renamed from: setBlendMode-s9anfk8 */
    void mo1725setBlendModes9anfk8(int i10);

    /* renamed from: setColor-8_81llA */
    void mo1726setColor8_81llA(long j10);

    void setColorFilter(@Nullable ColorFilter colorFilter);

    /* renamed from: setFilterQuality-vDHp3xo */
    void mo1727setFilterQualityvDHp3xo(int i10);

    void setPathEffect(@Nullable PathEffect pathEffect);

    void setShader(@Nullable Shader shader);

    /* renamed from: setStrokeCap-BeK7IIE */
    void mo1728setStrokeCapBeK7IIE(int i10);

    /* renamed from: setStrokeJoin-Ww9F2mQ */
    void mo1729setStrokeJoinWw9F2mQ(int i10);

    void setStrokeMiterLimit(float f10);

    void setStrokeWidth(float f10);

    /* renamed from: setStyle-k9PVt8s */
    void mo1730setStylek9PVt8s(int i10);
}
