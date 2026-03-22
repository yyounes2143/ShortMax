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
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextDrawStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextStyle.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class TextStyle {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final TextStyle Default = new TextStyle(0, 0, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0, (TextIndent) null, 262143, (DefaultConstructorMarker) null);
    @NotNull
    private final ParagraphStyle paragraphStyle;
    @Nullable
    private final PlatformTextStyle platformStyle;
    @NotNull
    private final SpanStyle spanStyle;

    /* compiled from: TextStyle.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TextStyle getDefault() {
            return TextStyle.Default;
        }

        private Companion() {
        }

        @Stable
        public static /* synthetic */ void getDefault$annotations() {
        }
    }

    @ExperimentalTextApi
    public /* synthetic */ TextStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j14, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, textAlign, textDirection, j14, textIndent, platformTextStyle, lineHeightStyle);
    }

    /* renamed from: copy-HL5avdY$default */
    public static /* synthetic */ TextStyle m3705copyHL5avdY$default(TextStyle textStyle, long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j14, TextIndent textIndent, int i10, Object obj) {
        return textStyle.m3708copyHL5avdY((i10 & 1) != 0 ? textStyle.spanStyle.m3670getColor0d7_KjU() : j10, (i10 & 2) != 0 ? textStyle.spanStyle.m3671getFontSizeXSAIIZE() : j11, (i10 & 4) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight, (i10 & 8) != 0 ? textStyle.spanStyle.m3672getFontStyle4Lr2A7w() : fontStyle, (i10 & 16) != 0 ? textStyle.spanStyle.m3673getFontSynthesisZQGJjVo() : fontSynthesis, (i10 & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily, (i10 & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str, (i10 & 128) != 0 ? textStyle.spanStyle.m3674getLetterSpacingXSAIIZE() : j12, (i10 & 256) != 0 ? textStyle.spanStyle.m3669getBaselineShift5SSeXJ0() : baselineShift, (i10 & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform, (i10 & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : localeList, (i10 & 2048) != 0 ? textStyle.spanStyle.m3668getBackground0d7_KjU() : j13, (i10 & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration, (i10 & 8192) != 0 ? textStyle.spanStyle.getShadow() : shadow, (i10 & 16384) != 0 ? textStyle.paragraphStyle.m3631getTextAlignbuA522U() : textAlign, (i10 & 32768) != 0 ? textStyle.paragraphStyle.m3632getTextDirectionmmuk1to() : textDirection, (i10 & 65536) != 0 ? textStyle.paragraphStyle.m3630getLineHeightXSAIIZE() : j14, (i10 & 131072) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent);
    }

    /* renamed from: copy-WQp3-mU$default */
    public static /* synthetic */ TextStyle m3707copyWQp3mU$default(TextStyle textStyle, Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i10, Object obj) {
        TextAlign textAlign2;
        TextDirection textDirection2;
        TextDirection textDirection3;
        long j14;
        TextIndent textIndent2;
        PlatformTextStyle platformTextStyle2;
        long m3671getFontSizeXSAIIZE = (i10 & 2) != 0 ? textStyle.spanStyle.m3671getFontSizeXSAIIZE() : j10;
        FontWeight fontWeight2 = (i10 & 4) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight;
        FontStyle m3672getFontStyle4Lr2A7w = (i10 & 8) != 0 ? textStyle.spanStyle.m3672getFontStyle4Lr2A7w() : fontStyle;
        FontSynthesis m3673getFontSynthesisZQGJjVo = (i10 & 16) != 0 ? textStyle.spanStyle.m3673getFontSynthesisZQGJjVo() : fontSynthesis;
        FontFamily fontFamily2 = (i10 & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily;
        String fontFeatureSettings = (i10 & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str;
        long m3674getLetterSpacingXSAIIZE = (i10 & 128) != 0 ? textStyle.spanStyle.m3674getLetterSpacingXSAIIZE() : j11;
        BaselineShift m3669getBaselineShift5SSeXJ0 = (i10 & 256) != 0 ? textStyle.spanStyle.m3669getBaselineShift5SSeXJ0() : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i10 & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform;
        LocaleList localeList2 = (i10 & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : localeList;
        long m3668getBackground0d7_KjU = (i10 & 2048) != 0 ? textStyle.spanStyle.m3668getBackground0d7_KjU() : j12;
        TextDecoration textDecoration2 = (i10 & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration;
        Shadow shadow2 = (i10 & 8192) != 0 ? textStyle.spanStyle.getShadow() : shadow;
        TextAlign m3631getTextAlignbuA522U = (i10 & 16384) != 0 ? textStyle.paragraphStyle.m3631getTextAlignbuA522U() : textAlign;
        if ((i10 & 32768) != 0) {
            textAlign2 = m3631getTextAlignbuA522U;
            textDirection2 = textStyle.paragraphStyle.m3632getTextDirectionmmuk1to();
        } else {
            textAlign2 = m3631getTextAlignbuA522U;
            textDirection2 = textDirection;
        }
        if ((i10 & 65536) != 0) {
            textDirection3 = textDirection2;
            j14 = textStyle.paragraphStyle.m3630getLineHeightXSAIIZE();
        } else {
            textDirection3 = textDirection2;
            j14 = j13;
        }
        TextIndent textIndent3 = (131072 & i10) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent;
        if ((i10 & 262144) != 0) {
            textIndent2 = textIndent3;
            platformTextStyle2 = textStyle.platformStyle;
        } else {
            textIndent2 = textIndent3;
            platformTextStyle2 = platformTextStyle;
        }
        return textStyle.m3710copyWQp3mU(brush, m3671getFontSizeXSAIIZE, fontWeight2, m3672getFontStyle4Lr2A7w, m3673getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, m3674getLetterSpacingXSAIIZE, m3669getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, m3668getBackground0d7_KjU, textDecoration2, shadow2, textAlign2, textDirection3, j14, textIndent2, platformTextStyle2, (i10 & 524288) != 0 ? textStyle.paragraphStyle.getLineHeightStyle() : lineHeightStyle);
    }

    public static /* synthetic */ TextStyle merge$default(TextStyle textStyle, TextStyle textStyle2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            textStyle2 = null;
        }
        return textStyle.merge(textStyle2);
    }

    @NotNull
    /* renamed from: copy-HL5avdY */
    public final TextStyle m3708copyHL5avdY(long j10, long j11, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j12, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j13, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow, @Nullable TextAlign textAlign, @Nullable TextDirection textDirection, long j14, @Nullable TextIndent textIndent) {
        TextDrawStyle m3975from8_81llA;
        if (Color.m1843equalsimpl0(j10, this.spanStyle.m3670getColor0d7_KjU())) {
            m3975from8_81llA = this.spanStyle.getTextDrawStyle$ui_text_release();
        } else {
            m3975from8_81llA = TextDrawStyle.Companion.m3975from8_81llA(j10);
        }
        return new TextStyle(new SpanStyle(m3975from8_81llA, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, this.spanStyle.getPlatformStyle(), (DefaultConstructorMarker) null), new ParagraphStyle(textAlign, textDirection, j14, textIndent, this.paragraphStyle.getPlatformStyle(), getLineHeightStyle(), null), this.platformStyle);
    }

    @ExperimentalTextApi
    @NotNull
    /* renamed from: copy-NOaFTUo */
    public final TextStyle m3709copyNOaFTUo(long j10, long j11, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j12, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j13, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow, @Nullable TextAlign textAlign, @Nullable TextDirection textDirection, long j14, @Nullable TextIndent textIndent, @Nullable PlatformTextStyle platformTextStyle, @Nullable LineHeightStyle lineHeightStyle) {
        TextDrawStyle m3975from8_81llA;
        PlatformSpanStyle platformSpanStyle;
        if (Color.m1843equalsimpl0(j10, this.spanStyle.m3670getColor0d7_KjU())) {
            m3975from8_81llA = this.spanStyle.getTextDrawStyle$ui_text_release();
        } else {
            m3975from8_81llA = TextDrawStyle.Companion.m3975from8_81llA(j10);
        }
        TextDrawStyle textDrawStyle = m3975from8_81llA;
        PlatformParagraphStyle platformParagraphStyle = null;
        if (platformTextStyle != null) {
            platformSpanStyle = platformTextStyle.getSpanStyle();
        } else {
            platformSpanStyle = null;
        }
        SpanStyle spanStyle = new SpanStyle(textDrawStyle, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, platformSpanStyle, (DefaultConstructorMarker) null);
        if (platformTextStyle != null) {
            platformParagraphStyle = platformTextStyle.getParagraphStyle();
        }
        return new TextStyle(spanStyle, new ParagraphStyle(textAlign, textDirection, j14, textIndent, platformParagraphStyle, lineHeightStyle, null), platformTextStyle);
    }

    @ExperimentalTextApi
    @NotNull
    /* renamed from: copy-WQp3-mU */
    public final TextStyle m3710copyWQp3mU(@Nullable Brush brush, long j10, @Nullable FontWeight fontWeight, @Nullable FontStyle fontStyle, @Nullable FontSynthesis fontSynthesis, @Nullable FontFamily fontFamily, @Nullable String str, long j11, @Nullable BaselineShift baselineShift, @Nullable TextGeometricTransform textGeometricTransform, @Nullable LocaleList localeList, long j12, @Nullable TextDecoration textDecoration, @Nullable Shadow shadow, @Nullable TextAlign textAlign, @Nullable TextDirection textDirection, long j13, @Nullable TextIndent textIndent, @Nullable PlatformTextStyle platformTextStyle, @Nullable LineHeightStyle lineHeightStyle) {
        PlatformSpanStyle platformSpanStyle;
        PlatformParagraphStyle platformParagraphStyle = null;
        if (platformTextStyle != null) {
            platformSpanStyle = platformTextStyle.getSpanStyle();
        } else {
            platformSpanStyle = null;
        }
        SpanStyle spanStyle = new SpanStyle(brush, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformSpanStyle, (DefaultConstructorMarker) null);
        if (platformTextStyle != null) {
            platformParagraphStyle = platformTextStyle.getParagraphStyle();
        }
        return new TextStyle(spanStyle, new ParagraphStyle(textAlign, textDirection, j13, textIndent, platformParagraphStyle, lineHeightStyle, null), platformTextStyle);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStyle)) {
            return false;
        }
        TextStyle textStyle = (TextStyle) obj;
        if (Intrinsics.areEqual(this.spanStyle, textStyle.spanStyle) && Intrinsics.areEqual(this.paragraphStyle, textStyle.paragraphStyle) && Intrinsics.areEqual(this.platformStyle, textStyle.platformStyle)) {
            return true;
        }
        return false;
    }

    /* renamed from: getBackground-0d7_KjU */
    public final long m3711getBackground0d7_KjU() {
        return this.spanStyle.m3668getBackground0d7_KjU();
    }

    @Nullable
    /* renamed from: getBaselineShift-5SSeXJ0 */
    public final BaselineShift m3712getBaselineShift5SSeXJ0() {
        return this.spanStyle.m3669getBaselineShift5SSeXJ0();
    }

    @ExperimentalTextApi
    @Nullable
    public final Brush getBrush() {
        return this.spanStyle.getBrush();
    }

    /* renamed from: getColor-0d7_KjU */
    public final long m3713getColor0d7_KjU() {
        return this.spanStyle.m3670getColor0d7_KjU();
    }

    @Nullable
    public final FontFamily getFontFamily() {
        return this.spanStyle.getFontFamily();
    }

    @Nullable
    public final String getFontFeatureSettings() {
        return this.spanStyle.getFontFeatureSettings();
    }

    /* renamed from: getFontSize-XSAIIZE */
    public final long m3714getFontSizeXSAIIZE() {
        return this.spanStyle.m3671getFontSizeXSAIIZE();
    }

    @Nullable
    /* renamed from: getFontStyle-4Lr2A7w */
    public final FontStyle m3715getFontStyle4Lr2A7w() {
        return this.spanStyle.m3672getFontStyle4Lr2A7w();
    }

    @Nullable
    /* renamed from: getFontSynthesis-ZQGJjVo */
    public final FontSynthesis m3716getFontSynthesisZQGJjVo() {
        return this.spanStyle.m3673getFontSynthesisZQGJjVo();
    }

    @Nullable
    public final FontWeight getFontWeight() {
        return this.spanStyle.getFontWeight();
    }

    /* renamed from: getLetterSpacing-XSAIIZE */
    public final long m3717getLetterSpacingXSAIIZE() {
        return this.spanStyle.m3674getLetterSpacingXSAIIZE();
    }

    /* renamed from: getLineHeight-XSAIIZE */
    public final long m3718getLineHeightXSAIIZE() {
        return this.paragraphStyle.m3630getLineHeightXSAIIZE();
    }

    @ExperimentalTextApi
    @Nullable
    public final LineHeightStyle getLineHeightStyle() {
        return this.paragraphStyle.getLineHeightStyle();
    }

    @Nullable
    public final LocaleList getLocaleList() {
        return this.spanStyle.getLocaleList();
    }

    @NotNull
    public final ParagraphStyle getParagraphStyle$ui_text_release() {
        return this.paragraphStyle;
    }

    @ExperimentalTextApi
    @Nullable
    public final PlatformTextStyle getPlatformStyle() {
        return this.platformStyle;
    }

    @Nullable
    public final Shadow getShadow() {
        return this.spanStyle.getShadow();
    }

    @NotNull
    public final SpanStyle getSpanStyle$ui_text_release() {
        return this.spanStyle;
    }

    @Nullable
    /* renamed from: getTextAlign-buA522U */
    public final TextAlign m3719getTextAlignbuA522U() {
        return this.paragraphStyle.m3631getTextAlignbuA522U();
    }

    @Nullable
    public final TextDecoration getTextDecoration() {
        return this.spanStyle.getTextDecoration();
    }

    @Nullable
    /* renamed from: getTextDirection-mmuk1to */
    public final TextDirection m3720getTextDirectionmmuk1to() {
        return this.paragraphStyle.m3632getTextDirectionmmuk1to();
    }

    @Nullable
    public final TextGeometricTransform getTextGeometricTransform() {
        return this.spanStyle.getTextGeometricTransform();
    }

    @Nullable
    public final TextIndent getTextIndent() {
        return this.paragraphStyle.getTextIndent();
    }

    public final boolean hasSameLayoutAffectingAttributes(@NotNull TextStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (this != other && (!Intrinsics.areEqual(this.paragraphStyle, other.paragraphStyle) || !this.spanStyle.hasSameLayoutAffectingAttributes$ui_text_release(other.spanStyle))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10;
        int hashCode = ((this.spanStyle.hashCode() * 31) + this.paragraphStyle.hashCode()) * 31;
        PlatformTextStyle platformTextStyle = this.platformStyle;
        if (platformTextStyle != null) {
            i10 = platformTextStyle.hashCode();
        } else {
            i10 = 0;
        }
        return hashCode + i10;
    }

    @Stable
    @NotNull
    public final TextStyle merge(@Nullable TextStyle textStyle) {
        return (textStyle == null || Intrinsics.areEqual(textStyle, Default)) ? this : new TextStyle(toSpanStyle().merge(textStyle.toSpanStyle()), toParagraphStyle().merge(textStyle.toParagraphStyle()));
    }

    @Stable
    @NotNull
    public final TextStyle plus(@NotNull TextStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    @Stable
    @NotNull
    public final ParagraphStyle toParagraphStyle() {
        return this.paragraphStyle;
    }

    @Stable
    @NotNull
    public final SpanStyle toSpanStyle() {
        return this.spanStyle;
    }

    @NotNull
    public String toString() {
        return "TextStyle(color=" + ((Object) Color.m1850toStringimpl(m3713getColor0d7_KjU())) + ", brush=" + getBrush() + ", fontSize=" + ((Object) TextUnit.m4237toStringimpl(m3714getFontSizeXSAIIZE())) + ", fontWeight=" + getFontWeight() + ", fontStyle=" + m3715getFontStyle4Lr2A7w() + ", fontSynthesis=" + m3716getFontSynthesisZQGJjVo() + ", fontFamily=" + getFontFamily() + ", fontFeatureSettings=" + getFontFeatureSettings() + ", letterSpacing=" + ((Object) TextUnit.m4237toStringimpl(m3717getLetterSpacingXSAIIZE())) + ", baselineShift=" + m3712getBaselineShift5SSeXJ0() + ", textGeometricTransform=" + getTextGeometricTransform() + ", localeList=" + getLocaleList() + ", background=" + ((Object) Color.m1850toStringimpl(m3711getBackground0d7_KjU())) + ", textDecoration=" + getTextDecoration() + ", shadow=" + getShadow() + ", textAlign=" + m3719getTextAlignbuA522U() + ", textDirection=" + m3720getTextDirectionmmuk1to() + ", lineHeight=" + ((Object) TextUnit.m4237toStringimpl(m3718getLineHeightXSAIIZE())) + ", textIndent=" + getTextIndent() + ", platformStyle=" + this.platformStyle + "lineHeightStyle=" + getLineHeightStyle() + ')';
    }

    public /* synthetic */ TextStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j14, TextIndent textIndent, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, textAlign, textDirection, j14, textIndent);
    }

    @Stable
    @NotNull
    public final TextStyle plus(@NotNull ParagraphStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    @ExperimentalTextApi
    public /* synthetic */ TextStyle(Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, DefaultConstructorMarker defaultConstructorMarker) {
        this(brush, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, textAlign, textDirection, j13, textIndent, platformTextStyle, lineHeightStyle);
    }

    @Stable
    @NotNull
    public final TextStyle plus(@NotNull SpanStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    public TextStyle(@NotNull SpanStyle spanStyle, @NotNull ParagraphStyle paragraphStyle, @ExperimentalTextApi @Nullable PlatformTextStyle platformTextStyle) {
        Intrinsics.checkNotNullParameter(spanStyle, "spanStyle");
        Intrinsics.checkNotNullParameter(paragraphStyle, "paragraphStyle");
        this.spanStyle = spanStyle;
        this.paragraphStyle = paragraphStyle;
        this.platformStyle = platformTextStyle;
    }

    @Stable
    @NotNull
    public final TextStyle merge(@NotNull SpanStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return new TextStyle(toSpanStyle().merge(other), toParagraphStyle());
    }

    public /* synthetic */ TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(spanStyle, paragraphStyle, (i10 & 4) != 0 ? null : platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextStyle(@org.jetbrains.annotations.NotNull androidx.compose.ui.text.SpanStyle r3, @org.jetbrains.annotations.NotNull androidx.compose.ui.text.ParagraphStyle r4) {
        /*
            r2 = this;
            java.lang.String r0 = "spanStyle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "paragraphStyle"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.compose.ui.text.PlatformSpanStyle r0 = r3.getPlatformStyle()
            androidx.compose.ui.text.PlatformParagraphStyle r1 = r4.getPlatformStyle()
            androidx.compose.ui.text.PlatformTextStyle r0 = androidx.compose.ui.text.TextStyleKt.access$createPlatformTextStyleInternal(r0, r1)
            r2.<init>(r3, r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.TextStyle.<init>(androidx.compose.ui.text.SpanStyle, androidx.compose.ui.text.ParagraphStyle):void");
    }

    @Stable
    @NotNull
    public final TextStyle merge(@NotNull ParagraphStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return new TextStyle(toSpanStyle(), toParagraphStyle().merge(other));
    }

    public /* synthetic */ TextStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j14, TextIndent textIndent, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j10, (i10 & 2) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j11, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j12, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j13, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : textAlign, (i10 & 32768) != 0 ? null : textDirection, (i10 & 65536) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j14, (i10 & 131072) != 0 ? null : textIndent, null);
    }

    @ExperimentalTextApi
    public static /* synthetic */ void getBrush$annotations() {
    }

    @ExperimentalTextApi
    public static /* synthetic */ void getLineHeightStyle$annotations() {
    }

    private TextStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j14, TextIndent textIndent) {
        this(new SpanStyle(j10, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, (PlatformSpanStyle) null, (DefaultConstructorMarker) null), new ParagraphStyle(textAlign, textDirection, j14, textIndent, null, null, null), null);
    }

    public /* synthetic */ TextStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j14, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j10, (i10 & 2) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j11, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j12, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j13, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : textAlign, (i10 & 32768) != 0 ? null : textDirection, (i10 & 65536) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j14, (i10 & 131072) != 0 ? null : textIndent, (i10 & 262144) != 0 ? null : platformTextStyle, (i10 & 524288) != 0 ? null : lineHeightStyle, (DefaultConstructorMarker) null);
    }

    private TextStyle(long j10, long j11, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j12, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j13, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j14, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle) {
        this(new SpanStyle(j10, j11, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j12, baselineShift, textGeometricTransform, localeList, j13, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, (DefaultConstructorMarker) null), new ParagraphStyle(textAlign, textDirection, j14, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, null), platformTextStyle);
    }

    public /* synthetic */ TextStyle(Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(brush, (i10 & 2) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j10, (i10 & 4) != 0 ? null : fontWeight, (i10 & 8) != 0 ? null : fontStyle, (i10 & 16) != 0 ? null : fontSynthesis, (i10 & 32) != 0 ? null : fontFamily, (i10 & 64) != 0 ? null : str, (i10 & 128) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j11, (i10 & 256) != 0 ? null : baselineShift, (i10 & 512) != 0 ? null : textGeometricTransform, (i10 & 1024) != 0 ? null : localeList, (i10 & 2048) != 0 ? Color.Companion.m1878getUnspecified0d7_KjU() : j12, (i10 & 4096) != 0 ? null : textDecoration, (i10 & 8192) != 0 ? null : shadow, (i10 & 16384) != 0 ? null : textAlign, (32768 & i10) != 0 ? null : textDirection, (65536 & i10) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j13, (131072 & i10) != 0 ? null : textIndent, (262144 & i10) != 0 ? null : platformTextStyle, (i10 & 524288) != 0 ? null : lineHeightStyle, (DefaultConstructorMarker) null);
    }

    private TextStyle(Brush brush, long j10, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j11, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j12, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j13, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle) {
        this(new SpanStyle(brush, j10, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j11, baselineShift, textGeometricTransform, localeList, j12, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, (DefaultConstructorMarker) null), new ParagraphStyle(textAlign, textDirection, j13, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, null), platformTextStyle);
    }
}
