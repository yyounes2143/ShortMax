package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import at.o;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextPaintExtensions.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextPaintExtensions_androidKt {
    @NotNull
    public static final SpanStyle applySpanStyle(@NotNull AndroidTextPaint androidTextPaint, @NotNull SpanStyle style, @NotNull o<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> resolveTypeface, @NotNull Density density) {
        long m4241getUnspecifiedXSAIIZE;
        long m3668getBackground0d7_KjU;
        boolean m3909equalsimpl0;
        BaselineShift m3669getBaselineShift5SSeXJ0;
        int m3780getNormal_LCdwA;
        int m3790getAllGVVA2EU;
        Intrinsics.checkNotNullParameter(androidTextPaint, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(resolveTypeface, "resolveTypeface");
        Intrinsics.checkNotNullParameter(density, "density");
        long m4229getTypeUIouoOA = TextUnit.m4229getTypeUIouoOA(style.m3671getFontSizeXSAIIZE());
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4263getSpUIouoOA())) {
            androidTextPaint.setTextSize(density.mo341toPxR2X_6o(style.m3671getFontSizeXSAIIZE()));
        } else if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4262getEmUIouoOA())) {
            androidTextPaint.setTextSize(androidTextPaint.getTextSize() * TextUnit.m4230getValueimpl(style.m3671getFontSizeXSAIIZE()));
        }
        if (hasFontAttributes(style)) {
            FontFamily fontFamily = style.getFontFamily();
            FontWeight fontWeight = style.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            FontStyle m3672getFontStyle4Lr2A7w = style.m3672getFontStyle4Lr2A7w();
            if (m3672getFontStyle4Lr2A7w != null) {
                m3780getNormal_LCdwA = m3672getFontStyle4Lr2A7w.m3778unboximpl();
            } else {
                m3780getNormal_LCdwA = FontStyle.Companion.m3780getNormal_LCdwA();
            }
            FontStyle m3772boximpl = FontStyle.m3772boximpl(m3780getNormal_LCdwA);
            FontSynthesis m3673getFontSynthesisZQGJjVo = style.m3673getFontSynthesisZQGJjVo();
            if (m3673getFontSynthesisZQGJjVo != null) {
                m3790getAllGVVA2EU = m3673getFontSynthesisZQGJjVo.m3789unboximpl();
            } else {
                m3790getAllGVVA2EU = FontSynthesis.Companion.m3790getAllGVVA2EU();
            }
            androidTextPaint.setTypeface(resolveTypeface.invoke(fontFamily, fontWeight, m3772boximpl, FontSynthesis.m3781boximpl(m3790getAllGVVA2EU)));
        }
        if (style.getLocaleList() != null && !Intrinsics.areEqual(style.getLocaleList(), LocaleList.Companion.getCurrent())) {
            LocaleListHelperMethods.INSTANCE.setTextLocales(androidTextPaint, style.getLocaleList());
        }
        long m4229getTypeUIouoOA2 = TextUnit.m4229getTypeUIouoOA(style.m3674getLetterSpacingXSAIIZE());
        if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA2, companion.m4262getEmUIouoOA())) {
            androidTextPaint.setLetterSpacing(TextUnit.m4230getValueimpl(style.m3674getLetterSpacingXSAIIZE()));
        } else {
            TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA2, companion.m4263getSpUIouoOA());
        }
        if (style.getFontFeatureSettings() != null && !Intrinsics.areEqual(style.getFontFeatureSettings(), "")) {
            androidTextPaint.setFontFeatureSettings(style.getFontFeatureSettings());
        }
        if (style.getTextGeometricTransform() != null && !Intrinsics.areEqual(style.getTextGeometricTransform(), TextGeometricTransform.Companion.getNone$ui_text_release())) {
            androidTextPaint.setTextScaleX(androidTextPaint.getTextScaleX() * style.getTextGeometricTransform().getScaleX());
            androidTextPaint.setTextSkewX(androidTextPaint.getTextSkewX() + style.getTextGeometricTransform().getSkewX());
        }
        androidTextPaint.m3890setColor8_81llA(style.m3670getColor0d7_KjU());
        androidTextPaint.m3889setBrushd16Qtg0(style.getBrush(), Size.Companion.m1683getUnspecifiedNHjbRc());
        androidTextPaint.setShadow(style.getShadow());
        androidTextPaint.setTextDecoration(style.getTextDecoration());
        if (TextUnitType.m4258equalsimpl0(TextUnit.m4229getTypeUIouoOA(style.m3674getLetterSpacingXSAIIZE()), companion.m4263getSpUIouoOA()) && TextUnit.m4230getValueimpl(style.m3674getLetterSpacingXSAIIZE()) != 0.0f) {
            m4241getUnspecifiedXSAIIZE = style.m3674getLetterSpacingXSAIIZE();
        } else {
            m4241getUnspecifiedXSAIIZE = TextUnit.Companion.m4241getUnspecifiedXSAIIZE();
        }
        long j10 = m4241getUnspecifiedXSAIIZE;
        long m3668getBackground0d7_KjU2 = style.m3668getBackground0d7_KjU();
        Color.Companion companion2 = Color.Companion;
        if (Color.m1843equalsimpl0(m3668getBackground0d7_KjU2, companion2.m1877getTransparent0d7_KjU())) {
            m3668getBackground0d7_KjU = companion2.m1878getUnspecified0d7_KjU();
        } else {
            m3668getBackground0d7_KjU = style.m3668getBackground0d7_KjU();
        }
        long j11 = m3668getBackground0d7_KjU;
        BaselineShift m3669getBaselineShift5SSeXJ02 = style.m3669getBaselineShift5SSeXJ0();
        float m3916getNoney9eOQZs = BaselineShift.Companion.m3916getNoney9eOQZs();
        if (m3669getBaselineShift5SSeXJ02 == null) {
            m3909equalsimpl0 = false;
        } else {
            m3909equalsimpl0 = BaselineShift.m3909equalsimpl0(m3669getBaselineShift5SSeXJ02.m3912unboximpl(), m3916getNoney9eOQZs);
        }
        if (m3909equalsimpl0) {
            m3669getBaselineShift5SSeXJ0 = null;
        } else {
            m3669getBaselineShift5SSeXJ0 = style.m3669getBaselineShift5SSeXJ0();
        }
        return new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, j10, m3669getBaselineShift5SSeXJ0, (TextGeometricTransform) null, (LocaleList) null, j11, (TextDecoration) null, (Shadow) null, 13951, (DefaultConstructorMarker) null);
    }

    public static final boolean hasFontAttributes(@NotNull SpanStyle spanStyle) {
        Intrinsics.checkNotNullParameter(spanStyle, "<this>");
        if (spanStyle.getFontFamily() == null && spanStyle.m3672getFontStyle4Lr2A7w() == null && spanStyle.getFontWeight() == null) {
            return false;
        }
        return true;
    }
}
