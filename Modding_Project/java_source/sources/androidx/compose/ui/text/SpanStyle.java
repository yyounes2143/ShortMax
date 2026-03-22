package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SpanStyle.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class SpanStyle {
    private final long background;
    @Nullable
    private final BaselineShift baselineShift;
    @Nullable
    private final FontFamily fontFamily;
    @Nullable
    private final String fontFeatureSettings;
    private final long fontSize;
    @Nullable
    private final FontStyle fontStyle;
    @Nullable
    private final FontSynthesis fontSynthesis;
    @Nullable
    private final FontWeight fontWeight;
    private final long letterSpacing;
    @Nullable
    private final LocaleList localeList;
    @Nullable
    private final PlatformSpanStyle platformStyle;
    @Nullable
    private final Shadow shadow;
    @Nullable
    private final TextDecoration textDecoration;
    @NotNull
    private final TextDrawStyle textDrawStyle;
    @Nullable
    private final TextGeometricTransform textGeometricTransform;

    @ExperimentalTextApi
    public /* synthetic */ SpanStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, platformSpanStyle);
    }

    /* renamed from: copy-2BkPm_w$default  reason: not valid java name */
    public static /* synthetic */ SpanStyle m3662copy2BkPm_w$default(SpanStyle spanStyle, long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, Object obj) {
        long j14;
        long j15;
        FontWeight fontWeight2;
        FontStyle fontStyle2;
        FontSynthesis fontSynthesis2;
        FontFamily fontFamily2;
        String str2;
        long j16;
        BaselineShift baselineShift2;
        TextGeometricTransform textGeometricTransform2;
        LocaleList localeList2;
        long j17;
        TextDecoration textDecoration2;
        Shadow shadow2;
        PlatformSpanStyle platformSpanStyle2;
        if ((i10 & 1) != 0) {
            j14 = spanStyle.m3670getColor0d7_KjU();
        } else {
            j14 = j10;
        }
        if ((i10 & 2) != 0) {
            j15 = spanStyle.fontSize;
        } else {
            j15 = j11;
        }
        if ((i10 & 4) != 0) {
            fontWeight2 = spanStyle.fontWeight;
        } else {
            fontWeight2 = fontWeight;
        }
        if ((i10 & 8) != 0) {
            fontStyle2 = spanStyle.fontStyle;
        } else {
            fontStyle2 = fontStyle;
        }
        if ((i10 & 16) != 0) {
            fontSynthesis2 = spanStyle.fontSynthesis;
        } else {
            fontSynthesis2 = fontSynthesis;
        }
        if ((i10 & 32) != 0) {
            fontFamily2 = spanStyle.fontFamily;
        } else {
            fontFamily2 = fontFamily;
        }
        if ((i10 & 64) != 0) {
            str2 = spanStyle.fontFeatureSettings;
        } else {
            str2 = str;
        }
        if ((i10 & 128) != 0) {
            j16 = spanStyle.letterSpacing;
        } else {
            j16 = j12;
        }
        if ((i10 & 256) != 0) {
            baselineShift2 = spanStyle.baselineShift;
        } else {
            baselineShift2 = baselineShift;
        }
        if ((i10 & 512) != 0) {
            textGeometricTransform2 = spanStyle.textGeometricTransform;
        } else {
            textGeometricTransform2 = textGeometricTransform;
        }
        if ((i10 & 1024) != 0) {
            localeList2 = spanStyle.localeList;
        } else {
            localeList2 = localeList;
        }
        LocaleList localeList3 = localeList2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        if ((i10 & 2048) != 0) {
            j17 = spanStyle.background;
        } else {
            j17 = j13;
        }
        long j18 = j17;
        if ((i10 & 4096) != 0) {
            textDecoration2 = spanStyle.textDecoration;
        } else {
            textDecoration2 = textDecoration;
        }
        if ((i10 & 8192) != 0) {
            shadow2 = spanStyle.shadow;
        } else {
            shadow2 = shadow;
        }
        if ((i10 & 16384) != 0) {
            platformSpanStyle2 = spanStyle.platformStyle;
        } else {
            platformSpanStyle2 = platformSpanStyle;
        }
        return spanStyle.m3665copy2BkPm_w(j14, j15, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j16, baselineShift2, textGeometricTransform3, localeList3, j18, textDecoration2, shadow2, platformSpanStyle2);
    }

    /* renamed from: copy-IuqyXdg$default  reason: not valid java name */
    public static /* synthetic */ SpanStyle m3663copyIuqyXdg$default(SpanStyle spanStyle, long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, int i10, Object obj) {
        long j14;
        long j15;
        FontWeight fontWeight2;
        FontStyle fontStyle2;
        FontSynthesis fontSynthesis2;
        FontFamily fontFamily2;
        String str2;
        long j16;
        BaselineShift baselineShift2;
        TextGeometricTransform textGeometricTransform2;
        LocaleList localeList2;
        long j17;
        TextDecoration textDecoration2;
        Shadow shadow2;
        if ((i10 & 1) != 0) {
            j14 = spanStyle.m3670getColor0d7_KjU();
        } else {
            j14 = j10;
        }
        if ((i10 & 2) != 0) {
            j15 = spanStyle.fontSize;
        } else {
            j15 = j11;
        }
        if ((i10 & 4) != 0) {
            fontWeight2 = spanStyle.fontWeight;
        } else {
            fontWeight2 = fontWeight;
        }
        if ((i10 & 8) != 0) {
            fontStyle2 = spanStyle.fontStyle;
        } else {
            fontStyle2 = fontStyle;
        }
        if ((i10 & 16) != 0) {
            fontSynthesis2 = spanStyle.fontSynthesis;
        } else {
            fontSynthesis2 = fontSynthesis;
        }
        if ((i10 & 32) != 0) {
            fontFamily2 = spanStyle.fontFamily;
        } else {
            fontFamily2 = fontFamily;
        }
        if ((i10 & 64) != 0) {
            str2 = spanStyle.fontFeatureSettings;
        } else {
            str2 = str;
        }
        if ((i10 & 128) != 0) {
            j16 = spanStyle.letterSpacing;
        } else {
            j16 = j12;
        }
        if ((i10 & 256) != 0) {
            baselineShift2 = spanStyle.baselineShift;
        } else {
            baselineShift2 = baselineShift;
        }
        if ((i10 & 512) != 0) {
            textGeometricTransform2 = spanStyle.textGeometricTransform;
        } else {
            textGeometricTransform2 = textGeometricTransform;
        }
        if ((i10 & 1024) != 0) {
            localeList2 = spanStyle.localeList;
        } else {
            localeList2 = localeList;
        }
        LocaleList localeList3 = localeList2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        if ((i10 & 2048) != 0) {
            j17 = spanStyle.background;
        } else {
            j17 = j13;
        }
        long j18 = j17;
        if ((i10 & 4096) != 0) {
            textDecoration2 = spanStyle.textDecoration;
        } else {
            textDecoration2 = textDecoration;
        }
        if ((i10 & 8192) != 0) {
            shadow2 = spanStyle.shadow;
        } else {
            shadow2 = shadow;
        }
        return spanStyle.m3666copyIuqyXdg(j14, j15, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j16, baselineShift2, textGeometricTransform3, localeList3, j18, textDecoration2, shadow2);
    }

    /* renamed from: copy-YSq14V0$default  reason: not valid java name */
    public static /* synthetic */ SpanStyle m3664copyYSq14V0$default(SpanStyle spanStyle, Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, Object obj) {
        long j13;
        FontWeight fontWeight2;
        FontStyle fontStyle2;
        FontSynthesis fontSynthesis2;
        FontFamily fontFamily2;
        String str2;
        long j14;
        BaselineShift baselineShift2;
        TextGeometricTransform textGeometricTransform2;
        LocaleList localeList2;
        long j15;
        TextDecoration textDecoration2;
        Shadow shadow2;
        PlatformSpanStyle platformSpanStyle2;
        if ((i10 & 2) != 0) {
            j13 = spanStyle.fontSize;
        } else {
            j13 = j10;
        }
        if ((i10 & 4) != 0) {
            fontWeight2 = spanStyle.fontWeight;
        } else {
            fontWeight2 = fontWeight;
        }
        if ((i10 & 8) != 0) {
            fontStyle2 = spanStyle.fontStyle;
        } else {
            fontStyle2 = fontStyle;
        }
        if ((i10 & 16) != 0) {
            fontSynthesis2 = spanStyle.fontSynthesis;
        } else {
            fontSynthesis2 = fontSynthesis;
        }
        if ((i10 & 32) != 0) {
            fontFamily2 = spanStyle.fontFamily;
        } else {
            fontFamily2 = fontFamily;
        }
        if ((i10 & 64) != 0) {
            str2 = spanStyle.fontFeatureSettings;
        } else {
            str2 = str;
        }
        if ((i10 & 128) != 0) {
            j14 = spanStyle.letterSpacing;
        } else {
            j14 = j11;
        }
        if ((i10 & 256) != 0) {
            baselineShift2 = spanStyle.baselineShift;
        } else {
            baselineShift2 = baselineShift;
        }
        if ((i10 & 512) != 0) {
            textGeometricTransform2 = spanStyle.textGeometricTransform;
        } else {
            textGeometricTransform2 = textGeometricTransform;
        }
        if ((i10 & 1024) != 0) {
            localeList2 = spanStyle.localeList;
        } else {
            localeList2 = localeList;
        }
        if ((i10 & 2048) != 0) {
            j15 = spanStyle.background;
        } else {
            j15 = j12;
        }
        long j16 = j15;
        if ((i10 & 4096) != 0) {
            textDecoration2 = spanStyle.textDecoration;
        } else {
            textDecoration2 = textDecoration;
        }
        if ((i10 & 8192) != 0) {
            shadow2 = spanStyle.shadow;
        } else {
            shadow2 = shadow;
        }
        if ((i10 & 16384) != 0) {
            platformSpanStyle2 = spanStyle.platformStyle;
        } else {
            platformSpanStyle2 = platformSpanStyle;
        }
        return spanStyle.m3667copyYSq14V0(brush, j13, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j14, baselineShift2, textGeometricTransform2, localeList2, j16, textDecoration2, shadow2, platformSpanStyle2);
    }

    private final boolean hasSameNonLayoutAttributes(SpanStyle spanStyle) {
        if (!Intrinsics.areEqual(this.textDrawStyle, spanStyle.textDrawStyle) || !Intrinsics.areEqual(this.textDecoration, spanStyle.textDecoration) || !Intrinsics.areEqual(this.shadow, spanStyle.shadow)) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ SpanStyle merge$default(SpanStyle spanStyle, SpanStyle spanStyle2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            spanStyle2 = null;
        }
        return spanStyle.merge(spanStyle2);
    }

    private final PlatformSpanStyle mergePlatformStyle(PlatformSpanStyle platformSpanStyle) {
        PlatformSpanStyle platformSpanStyle2 = this.platformStyle;
        if (platformSpanStyle2 == null) {
            return platformSpanStyle;
        }
        if (platformSpanStyle == null) {
            return platformSpanStyle2;
        }
        return platformSpanStyle2.merge(platformSpanStyle);
    }

    @ExperimentalTextApi
    @NotNull
    /* renamed from: copy-2BkPm_w  reason: not valid java name */
    public final SpanStyle m3665copy2BkPm_w(long j10, long j11, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j12, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j13, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow, @Nullable PlatformSpanStyle platformSpanStyle) {
        TextDrawStyle m3975from8_81llA;
        if (Color.m1843equalsimpl0(j10, m3670getColor0d7_KjU())) {
            m3975from8_81llA = this.textDrawStyle;
        } else {
            m3975from8_81llA = TextDrawStyle.Companion.m3975from8_81llA(j10);
        }
        return new SpanStyle(m3975from8_81llA, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, platformSpanStyle, (DefaultConstructorMarker) null);
    }

    @NotNull
    /* renamed from: copy-IuqyXdg  reason: not valid java name */
    public final SpanStyle m3666copyIuqyXdg(long j10, long j11, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j12, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j13, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow) {
        TextDrawStyle m3975from8_81llA;
        if (Color.m1843equalsimpl0(j10, m3670getColor0d7_KjU())) {
            m3975from8_81llA = this.textDrawStyle;
        } else {
            m3975from8_81llA = TextDrawStyle.Companion.m3975from8_81llA(j10);
        }
        return new SpanStyle(m3975from8_81llA, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, this.platformStyle, (DefaultConstructorMarker) null);
    }

    @ExperimentalTextApi
    @NotNull
    /* renamed from: copy-YSq14V0  reason: not valid java name */
    public final SpanStyle m3667copyYSq14V0(@Nullable Brush brush, long j10, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j11, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j12, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow, @Nullable PlatformSpanStyle platformSpanStyle) {
        return new SpanStyle(TextDrawStyle.Companion.from(brush), j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformSpanStyle, (DefaultConstructorMarker) null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanStyle)) {
            return false;
        }
        SpanStyle spanStyle = (SpanStyle) obj;
        if (hasSameLayoutAffectingAttributes$ui_text_release(spanStyle) && hasSameNonLayoutAttributes(spanStyle)) {
            return true;
        }
        return false;
    }

    /* renamed from: getBackground-0d7_KjU  reason: not valid java name */
    public final long m3668getBackground0d7_KjU() {
        return this.background;
    }

    @Nullable
    /* renamed from: getBaselineShift-5SSeXJ0  reason: not valid java name */
    public final BaselineShift m3669getBaselineShift5SSeXJ0() {
        return this.baselineShift;
    }

    @ExperimentalTextApi
    @Nullable
    public final Brush getBrush() {
        return this.textDrawStyle.getBrush();
    }

    /* renamed from: getColor-0d7_KjU  reason: not valid java name */
    public final long m3670getColor0d7_KjU() {
        return this.textDrawStyle.mo3920getColor0d7_KjU();
    }

    @Nullable
    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    @Nullable
    public final String getFontFeatureSettings() {
        return this.fontFeatureSettings;
    }

    /* renamed from: getFontSize-XSAIIZE  reason: not valid java name */
    public final long m3671getFontSizeXSAIIZE() {
        return this.fontSize;
    }

    @Nullable
    /* renamed from: getFontStyle-4Lr2A7w  reason: not valid java name */
    public final FontStyle m3672getFontStyle4Lr2A7w() {
        return this.fontStyle;
    }

    @Nullable
    /* renamed from: getFontSynthesis-ZQGJjVo  reason: not valid java name */
    public final FontSynthesis m3673getFontSynthesisZQGJjVo() {
        return this.fontSynthesis;
    }

    @Nullable
    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    /* renamed from: getLetterSpacing-XSAIIZE  reason: not valid java name */
    public final long m3674getLetterSpacingXSAIIZE() {
        return this.letterSpacing;
    }

    @Nullable
    public final LocaleList getLocaleList() {
        return this.localeList;
    }

    @ExperimentalTextApi
    @Nullable
    public final PlatformSpanStyle getPlatformStyle() {
        return this.platformStyle;
    }

    @Nullable
    public final Shadow getShadow() {
        return this.shadow;
    }

    @Nullable
    public final TextDecoration getTextDecoration() {
        return this.textDecoration;
    }

    @NotNull
    public final TextDrawStyle getTextDrawStyle$ui_text_release() {
        return this.textDrawStyle;
    }

    @Nullable
    public final TextGeometricTransform getTextGeometricTransform() {
        return this.textGeometricTransform;
    }

    public final boolean hasSameLayoutAffectingAttributes$ui_text_release(@NotNull SpanStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (this == other) {
            return true;
        }
        if (TextUnit.m4227equalsimpl0(this.fontSize, other.fontSize) && Intrinsics.areEqual(this.fontWeight, other.fontWeight) && Intrinsics.areEqual(this.fontStyle, other.fontStyle) && Intrinsics.areEqual(this.fontSynthesis, other.fontSynthesis) && Intrinsics.areEqual(this.fontFamily, other.fontFamily) && Intrinsics.areEqual(this.fontFeatureSettings, other.fontFeatureSettings) && TextUnit.m4227equalsimpl0(this.letterSpacing, other.letterSpacing) && Intrinsics.areEqual(this.baselineShift, other.baselineShift) && Intrinsics.areEqual(this.textGeometricTransform, other.textGeometricTransform) && Intrinsics.areEqual(this.localeList, other.localeList) && Color.m1843equalsimpl0(this.background, other.background) && Intrinsics.areEqual(this.platformStyle, other.platformStyle)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int m1849hashCodeimpl = Color.m1849hashCodeimpl(m3670getColor0d7_KjU()) * 31;
        Brush brush = getBrush();
        int i21 = 0;
        if (brush != null) {
            i10 = brush.hashCode();
        } else {
            i10 = 0;
        }
        int m4231hashCodeimpl = (((m1849hashCodeimpl + i10) * 31) + TextUnit.m4231hashCodeimpl(this.fontSize)) * 31;
        FontWeight fontWeight = this.fontWeight;
        if (fontWeight != null) {
            i11 = fontWeight.hashCode();
        } else {
            i11 = 0;
        }
        int i22 = (m4231hashCodeimpl + i11) * 31;
        FontStyle fontStyle = this.fontStyle;
        if (fontStyle != null) {
            i12 = FontStyle.m3776hashCodeimpl(fontStyle.m3778unboximpl());
        } else {
            i12 = 0;
        }
        int i23 = (i22 + i12) * 31;
        FontSynthesis fontSynthesis = this.fontSynthesis;
        if (fontSynthesis != null) {
            i13 = FontSynthesis.m3785hashCodeimpl(fontSynthesis.m3789unboximpl());
        } else {
            i13 = 0;
        }
        int i24 = (i23 + i13) * 31;
        FontFamily fontFamily = this.fontFamily;
        if (fontFamily != null) {
            i14 = fontFamily.hashCode();
        } else {
            i14 = 0;
        }
        int i25 = (i24 + i14) * 31;
        String str = this.fontFeatureSettings;
        if (str != null) {
            i15 = str.hashCode();
        } else {
            i15 = 0;
        }
        int m4231hashCodeimpl2 = (((i25 + i15) * 31) + TextUnit.m4231hashCodeimpl(this.letterSpacing)) * 31;
        BaselineShift baselineShift = this.baselineShift;
        if (baselineShift != null) {
            i16 = BaselineShift.m3910hashCodeimpl(baselineShift.m3912unboximpl());
        } else {
            i16 = 0;
        }
        int i26 = (m4231hashCodeimpl2 + i16) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        if (textGeometricTransform != null) {
            i17 = textGeometricTransform.hashCode();
        } else {
            i17 = 0;
        }
        int i27 = (i26 + i17) * 31;
        LocaleList localeList = this.localeList;
        if (localeList != null) {
            i18 = localeList.hashCode();
        } else {
            i18 = 0;
        }
        int m1849hashCodeimpl2 = (((i27 + i18) * 31) + Color.m1849hashCodeimpl(this.background)) * 31;
        TextDecoration textDecoration = this.textDecoration;
        if (textDecoration != null) {
            i19 = textDecoration.hashCode();
        } else {
            i19 = 0;
        }
        int i28 = (m1849hashCodeimpl2 + i19) * 31;
        Shadow shadow = this.shadow;
        if (shadow != null) {
            i20 = shadow.hashCode();
        } else {
            i20 = 0;
        }
        int i29 = (i28 + i20) * 31;
        PlatformSpanStyle platformSpanStyle = this.platformStyle;
        if (platformSpanStyle != null) {
            i21 = platformSpanStyle.hashCode();
        }
        return i29 + i21;
    }

    @Stable
    @NotNull
    public final SpanStyle merge(@Nullable SpanStyle spanStyle) {
        long j10;
        long j11;
        if (spanStyle == null) {
            return this;
        }
        TextDrawStyle merge = this.textDrawStyle.merge(spanStyle.textDrawStyle);
        FontFamily fontFamily = spanStyle.fontFamily;
        if (fontFamily == null) {
            fontFamily = this.fontFamily;
        }
        FontFamily fontFamily2 = fontFamily;
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(spanStyle.fontSize)) {
            j10 = spanStyle.fontSize;
        } else {
            j10 = this.fontSize;
        }
        long j12 = j10;
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            fontWeight = this.fontWeight;
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle fontStyle = spanStyle.fontStyle;
        if (fontStyle == null) {
            fontStyle = this.fontStyle;
        }
        FontStyle fontStyle2 = fontStyle;
        FontSynthesis fontSynthesis = spanStyle.fontSynthesis;
        if (fontSynthesis == null) {
            fontSynthesis = this.fontSynthesis;
        }
        FontSynthesis fontSynthesis2 = fontSynthesis;
        String str = spanStyle.fontFeatureSettings;
        if (str == null) {
            str = this.fontFeatureSettings;
        }
        String str2 = str;
        if (!TextUnitKt.m4248isUnspecifiedR2X_6o(spanStyle.letterSpacing)) {
            j11 = spanStyle.letterSpacing;
        } else {
            j11 = this.letterSpacing;
        }
        long j13 = j11;
        BaselineShift baselineShift = spanStyle.baselineShift;
        if (baselineShift == null) {
            baselineShift = this.baselineShift;
        }
        BaselineShift baselineShift2 = baselineShift;
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        if (textGeometricTransform == null) {
            textGeometricTransform = this.textGeometricTransform;
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = spanStyle.localeList;
        if (localeList == null) {
            localeList = this.localeList;
        }
        LocaleList localeList2 = localeList;
        long j14 = spanStyle.background;
        if (j14 == Color.Companion.m1878getUnspecified0d7_KjU()) {
            j14 = this.background;
        }
        long j15 = j14;
        TextDecoration textDecoration = spanStyle.textDecoration;
        if (textDecoration == null) {
            textDecoration = this.textDecoration;
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.shadow;
        if (shadow == null) {
            shadow = this.shadow;
        }
        return new SpanStyle(merge, j12, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j13, baselineShift2, textGeometricTransform2, localeList2, j15, textDecoration2, shadow, mergePlatformStyle(spanStyle.platformStyle), (DefaultConstructorMarker) null);
    }

    @Stable
    @NotNull
    public final SpanStyle plus(@NotNull SpanStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    @NotNull
    public String toString() {
        return "SpanStyle(color=" + ((Object) Color.m1850toStringimpl(m3670getColor0d7_KjU())) + ", brush=" + getBrush() + ", fontSize=" + ((Object) TextUnit.m4237toStringimpl(this.fontSize)) + ", fontWeight=" + this.fontWeight + ", fontStyle=" + this.fontStyle + ", fontSynthesis=" + this.fontSynthesis + ", fontFamily=" + this.fontFamily + ", fontFeatureSettings=" + this.fontFeatureSettings + ", letterSpacing=" + ((Object) TextUnit.m4237toStringimpl(this.letterSpacing)) + ", baselineShift=" + this.baselineShift + ", textGeometricTransform=" + this.textGeometricTransform + ", localeList=" + this.localeList + ", background=" + ((Object) Color.m1850toStringimpl(this.background)) + ", textDecoration=" + this.textDecoration + ", shadow=" + this.shadow + ", platformStyle=" + this.platformStyle + ')';
    }

    public /* synthetic */ SpanStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow);
    }

    @ExperimentalTextApi
    public /* synthetic */ SpanStyle(Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DefaultConstructorMarker defaultConstructorMarker) {
        this(brush, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformSpanStyle);
    }

    public /* synthetic */ SpanStyle(TextDrawStyle textDrawStyle, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, @ExperimentalTextApi PlatformSpanStyle platformSpanStyle, DefaultConstructorMarker defaultConstructorMarker) {
        this(textDrawStyle, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformSpanStyle);
    }

    private SpanStyle(TextDrawStyle textDrawStyle, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this.textDrawStyle = textDrawStyle;
        this.fontSize = j10;
        this.fontWeight = fontWeight;
        this.fontStyle = fontStyle;
        this.fontSynthesis = fontSynthesis;
        this.fontFamily = fontFamily;
        this.fontFeatureSettings = str;
        this.letterSpacing = j11;
        this.baselineShift = baselineShift;
        this.textGeometricTransform = textGeometricTransform;
        this.localeList = localeList;
        this.background = j12;
        this.textDecoration = textDecoration;
        this.shadow = shadow;
        this.platformStyle = platformSpanStyle;
    }

    @ExperimentalTextApi
    public static /* synthetic */ void getBrush$annotations() {
    }

    public /* synthetic */ SpanStyle(TextDrawStyle textDrawStyle, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(textDrawStyle, (i10 & 2) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : platformSpanStyle, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ SpanStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j10, (i10 & 2) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j11, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j12, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j13, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (DefaultConstructorMarker) null);
    }

    private SpanStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow) {
        this(TextDrawStyle.Companion.m3975from8_81llA(j10), j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, (PlatformSpanStyle) null, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ SpanStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j10, (i10 & 2) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j11, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j12, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j13, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : platformSpanStyle, (DefaultConstructorMarker) null);
    }

    private SpanStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this(TextDrawStyle.Companion.m3975from8_81llA(j10), j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, platformSpanStyle, (DefaultConstructorMarker) null);
    }

    public /* synthetic */ SpanStyle(Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(brush, (i10 & 2) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : platformSpanStyle, (DefaultConstructorMarker) null);
    }

    private SpanStyle(Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this(TextDrawStyle.Companion.from(brush), j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformSpanStyle, (DefaultConstructorMarker) null);
    }
}
