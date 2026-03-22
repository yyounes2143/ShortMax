package androidx.compose.ui.text.platform;

import android.text.TextPaint;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.style.TextDecoration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidTextPaint.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidTextPaint extends TextPaint {
    @Nullable
    private Brush brush;
    @Nullable
    private Size brushSize;
    @NotNull
    private Shadow shadow;
    @NotNull
    private TextDecoration textDecoration;

    public AndroidTextPaint(int i10, float f10) {
        super(i10);
        ((TextPaint) this).density = f10;
        this.textDecoration = TextDecoration.Companion.getNone();
        this.shadow = Shadow.Companion.getNone();
    }

    /* renamed from: setBrush-d16Qtg0  reason: not valid java name */
    public final void m3889setBrushd16Qtg0(@Nullable Brush brush, long j10) {
        boolean m1671equalsimpl0;
        if (brush == null) {
            setShader(null);
            return;
        }
        boolean z10 = false;
        if (Intrinsics.areEqual(this.brush, brush)) {
            Size size = this.brushSize;
            if (size == null) {
                m1671equalsimpl0 = false;
            } else {
                m1671equalsimpl0 = Size.m1671equalsimpl0(size.m1680unboximpl(), j10);
            }
            if (m1671equalsimpl0) {
                return;
            }
        }
        this.brush = brush;
        this.brushSize = Size.m1663boximpl(j10);
        if (brush instanceof SolidColor) {
            setShader(null);
            m3890setColor8_81llA(((SolidColor) brush).m2128getValue0d7_KjU());
        } else if (brush instanceof ShaderBrush) {
            if (j10 != Size.Companion.m1683getUnspecifiedNHjbRc()) {
                z10 = true;
            }
            if (z10) {
                setShader(((ShaderBrush) brush).mo1811createShaderuvyYCjk(j10));
            }
        }
    }

    /* renamed from: setColor-8_81llA  reason: not valid java name */
    public final void m3890setColor8_81llA(long j10) {
        int m1897toArgb8_81llA;
        if (j10 != Color.Companion.m1878getUnspecified0d7_KjU() && getColor() != (m1897toArgb8_81llA = ColorKt.m1897toArgb8_81llA(j10))) {
            setColor(m1897toArgb8_81llA);
        }
    }

    public final void setShadow(@Nullable Shadow shadow) {
        if (shadow == null) {
            shadow = Shadow.Companion.getNone();
        }
        if (!Intrinsics.areEqual(this.shadow, shadow)) {
            this.shadow = shadow;
            if (Intrinsics.areEqual(shadow, Shadow.Companion.getNone())) {
                clearShadowLayer();
            } else {
                setShadowLayer(this.shadow.getBlurRadius(), Offset.m1606getXimpl(this.shadow.m2127getOffsetF1C5BW0()), Offset.m1607getYimpl(this.shadow.m2127getOffsetF1C5BW0()), ColorKt.m1897toArgb8_81llA(this.shadow.m2126getColor0d7_KjU()));
            }
        }
    }

    public final void setTextDecoration(@Nullable TextDecoration textDecoration) {
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.getNone();
        }
        if (!Intrinsics.areEqual(this.textDecoration, textDecoration)) {
            this.textDecoration = textDecoration;
            TextDecoration.Companion companion = TextDecoration.Companion;
            setUnderlineText(textDecoration.contains(companion.getUnderline()));
            setStrikeThruText(this.textDecoration.contains(companion.getLineThrough()));
        }
    }
}
