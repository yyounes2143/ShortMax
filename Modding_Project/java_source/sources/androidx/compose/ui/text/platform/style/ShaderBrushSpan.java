package androidx.compose.ui.text.platform.style;

import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.UpdateAppearance;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ShaderBrush;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShaderBrushSpan.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ShaderBrushSpan extends CharacterStyle implements UpdateAppearance {
    @NotNull
    private final ShaderBrush shaderBrush;
    @Nullable
    private Size size;

    public ShaderBrushSpan(@NotNull ShaderBrush shaderBrush) {
        Intrinsics.checkNotNullParameter(shaderBrush, "shaderBrush");
        this.shaderBrush = shaderBrush;
    }

    @NotNull
    public final ShaderBrush getShaderBrush() {
        return this.shaderBrush;
    }

    @Nullable
    /* renamed from: getSize-VsRJwc0  reason: not valid java name */
    public final Size m3904getSizeVsRJwc0() {
        return this.size;
    }

    /* renamed from: setSize-iaC8Vc4  reason: not valid java name */
    public final void m3905setSizeiaC8Vc4(@Nullable Size size) {
        this.size = size;
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(@Nullable TextPaint textPaint) {
        Size size;
        if (textPaint != null && (size = this.size) != null) {
            textPaint.setShader(this.shaderBrush.mo1811createShaderuvyYCjk(size.m1680unboximpl()));
        }
    }
}
