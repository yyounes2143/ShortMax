package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.ShadowKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.FontWeightKt;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.BaselineShiftKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyle;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextGeometricTransformKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SpanStyle.kt */
@Metadata
/* loaded from: classes.dex */
public final class SpanStyleKt {
    private static final long DefaultBackgroundColor;
    private static final long DefaultColor;
    private static final long DefaultFontSize = TextUnitKt.getSp(14);
    private static final long DefaultLetterSpacing = TextUnitKt.getSp(0);

    static {
        Color.Companion companion = Color.Companion;
        DefaultBackgroundColor = companion.m1877getTransparent0d7_KjU();
        DefaultColor = companion.m1868getBlack0d7_KjU();
    }

    @NotNull
    public static final SpanStyle lerp(@NotNull SpanStyle start, @NotNull SpanStyle stop, float f10) {
        float m3907constructorimpl;
        float m3907constructorimpl2;
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        TextDrawStyle lerp = TextDrawStyleKt.lerp(start.getTextDrawStyle$ui_text_release(), stop.getTextDrawStyle$ui_text_release(), f10);
        FontFamily fontFamily = (FontFamily) lerpDiscrete(start.getFontFamily(), stop.getFontFamily(), f10);
        long m3675lerpTextUnitInheritableC3pnCVY = m3675lerpTextUnitInheritableC3pnCVY(start.m3671getFontSizeXSAIIZE(), stop.m3671getFontSizeXSAIIZE(), f10);
        FontWeight fontWeight = start.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = stop.getFontWeight();
        if (fontWeight2 == null) {
            fontWeight2 = FontWeight.Companion.getNormal();
        }
        FontWeight lerp2 = FontWeightKt.lerp(fontWeight, fontWeight2, f10);
        FontStyle fontStyle = (FontStyle) lerpDiscrete(start.m3672getFontStyle4Lr2A7w(), stop.m3672getFontStyle4Lr2A7w(), f10);
        FontSynthesis fontSynthesis = (FontSynthesis) lerpDiscrete(start.m3673getFontSynthesisZQGJjVo(), stop.m3673getFontSynthesisZQGJjVo(), f10);
        String str = (String) lerpDiscrete(start.getFontFeatureSettings(), stop.getFontFeatureSettings(), f10);
        long m3675lerpTextUnitInheritableC3pnCVY2 = m3675lerpTextUnitInheritableC3pnCVY(start.m3674getLetterSpacingXSAIIZE(), stop.m3674getLetterSpacingXSAIIZE(), f10);
        BaselineShift m3669getBaselineShift5SSeXJ0 = start.m3669getBaselineShift5SSeXJ0();
        if (m3669getBaselineShift5SSeXJ0 != null) {
            m3907constructorimpl = m3669getBaselineShift5SSeXJ0.m3912unboximpl();
        } else {
            m3907constructorimpl = BaselineShift.m3907constructorimpl(0.0f);
        }
        BaselineShift m3669getBaselineShift5SSeXJ02 = stop.m3669getBaselineShift5SSeXJ0();
        if (m3669getBaselineShift5SSeXJ02 != null) {
            m3907constructorimpl2 = m3669getBaselineShift5SSeXJ02.m3912unboximpl();
        } else {
            m3907constructorimpl2 = BaselineShift.m3907constructorimpl(0.0f);
        }
        float m3919lerpjWV1Mfo = BaselineShiftKt.m3919lerpjWV1Mfo(m3907constructorimpl, m3907constructorimpl2, f10);
        TextGeometricTransform textGeometricTransform = start.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform textGeometricTransform2 = stop.getTextGeometricTransform();
        if (textGeometricTransform2 == null) {
            textGeometricTransform2 = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform lerp3 = TextGeometricTransformKt.lerp(textGeometricTransform, textGeometricTransform2, f10);
        LocaleList localeList = (LocaleList) lerpDiscrete(start.getLocaleList(), stop.getLocaleList(), f10);
        long m1894lerpjxsXWHM = ColorKt.m1894lerpjxsXWHM(start.m3668getBackground0d7_KjU(), stop.m3668getBackground0d7_KjU(), f10);
        TextDecoration textDecoration = (TextDecoration) lerpDiscrete(start.getTextDecoration(), stop.getTextDecoration(), f10);
        Shadow shadow = start.getShadow();
        if (shadow == null) {
            shadow = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        Shadow shadow2 = stop.getShadow();
        if (shadow2 == null) {
            shadow2 = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        return new SpanStyle(lerp, m3675lerpTextUnitInheritableC3pnCVY, lerp2, fontStyle, fontSynthesis, fontFamily, str, m3675lerpTextUnitInheritableC3pnCVY2, BaselineShift.m3906boximpl(m3919lerpjWV1Mfo), lerp3, localeList, m1894lerpjxsXWHM, textDecoration, ShadowKt.lerp(shadow, shadow2, f10), lerpPlatformStyle(start.getPlatformStyle(), stop.getPlatformStyle(), f10), (DefaultConstructorMarker) null);
    }

    public static final <T> T lerpDiscrete(T t10, T t11, float f10) {
        if (f10 >= 0.5d) {
            return t11;
        }
        return t10;
    }

    private static final PlatformSpanStyle lerpPlatformStyle(PlatformSpanStyle platformSpanStyle, PlatformSpanStyle platformSpanStyle2, float f10) {
        if (platformSpanStyle == null && platformSpanStyle2 == null) {
            return null;
        }
        if (platformSpanStyle == null) {
            platformSpanStyle = PlatformSpanStyle.Companion.getDefault();
        }
        if (platformSpanStyle2 == null) {
            platformSpanStyle2 = PlatformSpanStyle.Companion.getDefault();
        }
        return AndroidTextStyle_androidKt.lerp(platformSpanStyle, platformSpanStyle2, f10);
    }

    /* renamed from: lerpTextUnitInheritable-C3pnCVY  reason: not valid java name */
    public static final long m3675lerpTextUnitInheritableC3pnCVY(long j10, long j11, float f10) {
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(j10) && !TextUnitKt.m4248isUnspecifiedR2X_6o(j11)) {
            return TextUnitKt.m4250lerpC3pnCVY(j10, j11, f10);
        }
        return ((TextUnit) lerpDiscrete(TextUnit.m4220boximpl(j10), TextUnit.m4220boximpl(j11), f10)).m4239unboximpl();
    }

    @NotNull
    public static final SpanStyle resolveSpanStyleDefaults(@NotNull SpanStyle style) {
        long m3671getFontSizeXSAIIZE;
        int m3780getNormal_LCdwA;
        int m3790getAllGVVA2EU;
        long m3674getLetterSpacingXSAIIZE;
        float m3916getNoney9eOQZs;
        Intrinsics.checkNotNullParameter(style, "style");
        TextDrawStyle takeOrElse = style.getTextDrawStyle$ui_text_release().takeOrElse(new Function0<TextDrawStyle>() { // from class: androidx.compose.ui.text.SpanStyleKt$resolveSpanStyleDefaults$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TextDrawStyle invoke() {
                long j10;
                TextDrawStyle.Companion companion = TextDrawStyle.Companion;
                j10 = SpanStyleKt.DefaultColor;
                return companion.m3975from8_81llA(j10);
            }
        });
        if (TextUnitKt.m4248isUnspecifiedR2X_6o(style.m3671getFontSizeXSAIIZE())) {
            m3671getFontSizeXSAIIZE = DefaultFontSize;
        } else {
            m3671getFontSizeXSAIIZE = style.m3671getFontSizeXSAIIZE();
        }
        long j10 = m3671getFontSizeXSAIIZE;
        FontWeight fontWeight = style.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = fontWeight;
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
        FontSynthesis m3781boximpl = FontSynthesis.m3781boximpl(m3790getAllGVVA2EU);
        FontFamily fontFamily = style.getFontFamily();
        if (fontFamily == null) {
            fontFamily = FontFamily.Companion.getDefault();
        }
        FontFamily fontFamily2 = fontFamily;
        String fontFeatureSettings = style.getFontFeatureSettings();
        if (fontFeatureSettings == null) {
            fontFeatureSettings = "";
        }
        String str = fontFeatureSettings;
        if (TextUnitKt.m4248isUnspecifiedR2X_6o(style.m3674getLetterSpacingXSAIIZE())) {
            m3674getLetterSpacingXSAIIZE = DefaultLetterSpacing;
        } else {
            m3674getLetterSpacingXSAIIZE = style.m3674getLetterSpacingXSAIIZE();
        }
        long j11 = m3674getLetterSpacingXSAIIZE;
        BaselineShift m3669getBaselineShift5SSeXJ0 = style.m3669getBaselineShift5SSeXJ0();
        if (m3669getBaselineShift5SSeXJ0 != null) {
            m3916getNoney9eOQZs = m3669getBaselineShift5SSeXJ0.m3912unboximpl();
        } else {
            m3916getNoney9eOQZs = BaselineShift.Companion.m3916getNoney9eOQZs();
        }
        BaselineShift m3906boximpl = BaselineShift.m3906boximpl(m3916getNoney9eOQZs);
        TextGeometricTransform textGeometricTransform = style.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = style.getLocaleList();
        if (localeList == null) {
            localeList = LocaleList.Companion.getCurrent();
        }
        LocaleList localeList2 = localeList;
        long m3668getBackground0d7_KjU = style.m3668getBackground0d7_KjU();
        if (m3668getBackground0d7_KjU == Color.Companion.m1878getUnspecified0d7_KjU()) {
            m3668getBackground0d7_KjU = DefaultBackgroundColor;
        }
        long j12 = m3668getBackground0d7_KjU;
        TextDecoration textDecoration = style.getTextDecoration();
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.getNone();
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = style.getShadow();
        if (shadow == null) {
            shadow = Shadow.Companion.getNone();
        }
        return new SpanStyle(takeOrElse, j10, fontWeight2, m3772boximpl, m3781boximpl, fontFamily2, str, j11, m3906boximpl, textGeometricTransform2, localeList2, j12, textDecoration2, shadow, style.getPlatformStyle(), (DefaultConstructorMarker) null);
    }
}
