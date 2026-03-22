package androidx.compose.material;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
/* compiled from: Typography.kt */
@Metadata
/* loaded from: classes.dex */
public final class TypographyKt {
    @NotNull
    private static final ProvidableCompositionLocal<Typography> LocalTypography = CompositionLocalKt.staticCompositionLocalOf(new Function0<Typography>() { // from class: androidx.compose.material.TypographyKt$LocalTypography$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Typography invoke() {
            return new Typography(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null);
        }
    });

    @NotNull
    public static final ProvidableCompositionLocal<Typography> getLocalTypography() {
        return LocalTypography;
    }

    public static final TextStyle withDefaultFontFamily(TextStyle textStyle, FontFamily fontFamily) {
        TextStyle m3708copyHL5avdY;
        if (textStyle.getFontFamily() != null) {
            return textStyle;
        }
        m3708copyHL5avdY = textStyle.m3708copyHL5avdY((r42 & 1) != 0 ? textStyle.spanStyle.m3670getColor0d7_KjU() : 0L, (r42 & 2) != 0 ? textStyle.spanStyle.m3671getFontSizeXSAIIZE() : 0L, (r42 & 4) != 0 ? textStyle.spanStyle.getFontWeight() : null, (r42 & 8) != 0 ? textStyle.spanStyle.m3672getFontStyle4Lr2A7w() : null, (r42 & 16) != 0 ? textStyle.spanStyle.m3673getFontSynthesisZQGJjVo() : null, (r42 & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily, (r42 & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : null, (r42 & 128) != 0 ? textStyle.spanStyle.m3674getLetterSpacingXSAIIZE() : 0L, (r42 & 256) != 0 ? textStyle.spanStyle.m3669getBaselineShift5SSeXJ0() : null, (r42 & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : null, (r42 & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : null, (r42 & 2048) != 0 ? textStyle.spanStyle.m3668getBackground0d7_KjU() : 0L, (r42 & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : null, (r42 & 8192) != 0 ? textStyle.spanStyle.getShadow() : null, (r42 & 16384) != 0 ? textStyle.paragraphStyle.m3631getTextAlignbuA522U() : null, (r42 & 32768) != 0 ? textStyle.paragraphStyle.m3632getTextDirectionmmuk1to() : null, (r42 & 65536) != 0 ? textStyle.paragraphStyle.m3630getLineHeightXSAIIZE() : 0L, (r42 & 131072) != 0 ? textStyle.paragraphStyle.getTextIndent() : null);
        return m3708copyHL5avdY;
    }
}
