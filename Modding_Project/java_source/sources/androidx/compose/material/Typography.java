package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Typography.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class Typography {
    @NotNull
    private final TextStyle body1;
    @NotNull
    private final TextStyle body2;
    @NotNull
    private final TextStyle button;
    @NotNull
    private final TextStyle caption;
    @NotNull

    /* renamed from: h1  reason: collision with root package name */
    private final TextStyle f906h1;
    @NotNull

    /* renamed from: h2  reason: collision with root package name */
    private final TextStyle f907h2;
    @NotNull

    /* renamed from: h3  reason: collision with root package name */
    private final TextStyle f908h3;
    @NotNull

    /* renamed from: h4  reason: collision with root package name */
    private final TextStyle f909h4;
    @NotNull

    /* renamed from: h5  reason: collision with root package name */
    private final TextStyle f910h5;
    @NotNull

    /* renamed from: h6  reason: collision with root package name */
    private final TextStyle f911h6;
    @NotNull
    private final TextStyle overline;
    @NotNull
    private final TextStyle subtitle1;
    @NotNull
    private final TextStyle subtitle2;

    public Typography(@NotNull TextStyle h12, @NotNull TextStyle h22, @NotNull TextStyle h32, @NotNull TextStyle h42, @NotNull TextStyle h52, @NotNull TextStyle h62, @NotNull TextStyle subtitle1, @NotNull TextStyle subtitle2, @NotNull TextStyle body1, @NotNull TextStyle body2, @NotNull TextStyle button, @NotNull TextStyle caption, @NotNull TextStyle overline) {
        Intrinsics.checkNotNullParameter(h12, "h1");
        Intrinsics.checkNotNullParameter(h22, "h2");
        Intrinsics.checkNotNullParameter(h32, "h3");
        Intrinsics.checkNotNullParameter(h42, "h4");
        Intrinsics.checkNotNullParameter(h52, "h5");
        Intrinsics.checkNotNullParameter(h62, "h6");
        Intrinsics.checkNotNullParameter(subtitle1, "subtitle1");
        Intrinsics.checkNotNullParameter(subtitle2, "subtitle2");
        Intrinsics.checkNotNullParameter(body1, "body1");
        Intrinsics.checkNotNullParameter(body2, "body2");
        Intrinsics.checkNotNullParameter(button, "button");
        Intrinsics.checkNotNullParameter(caption, "caption");
        Intrinsics.checkNotNullParameter(overline, "overline");
        this.f906h1 = h12;
        this.f907h2 = h22;
        this.f908h3 = h32;
        this.f909h4 = h42;
        this.f910h5 = h52;
        this.f911h6 = h62;
        this.subtitle1 = subtitle1;
        this.subtitle2 = subtitle2;
        this.body1 = body1;
        this.body2 = body2;
        this.button = button;
        this.caption = caption;
        this.overline = overline;
    }

    public static /* synthetic */ Typography copy$default(Typography typography, TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, int i10, Object obj) {
        TextStyle textStyle14;
        TextStyle textStyle15;
        TextStyle textStyle16;
        TextStyle textStyle17;
        TextStyle textStyle18;
        TextStyle textStyle19;
        TextStyle textStyle20;
        TextStyle textStyle21;
        TextStyle textStyle22;
        TextStyle textStyle23;
        TextStyle textStyle24;
        TextStyle textStyle25;
        TextStyle textStyle26;
        if ((i10 & 1) != 0) {
            textStyle14 = typography.f906h1;
        } else {
            textStyle14 = textStyle;
        }
        if ((i10 & 2) != 0) {
            textStyle15 = typography.f907h2;
        } else {
            textStyle15 = textStyle2;
        }
        if ((i10 & 4) != 0) {
            textStyle16 = typography.f908h3;
        } else {
            textStyle16 = textStyle3;
        }
        if ((i10 & 8) != 0) {
            textStyle17 = typography.f909h4;
        } else {
            textStyle17 = textStyle4;
        }
        if ((i10 & 16) != 0) {
            textStyle18 = typography.f910h5;
        } else {
            textStyle18 = textStyle5;
        }
        if ((i10 & 32) != 0) {
            textStyle19 = typography.f911h6;
        } else {
            textStyle19 = textStyle6;
        }
        if ((i10 & 64) != 0) {
            textStyle20 = typography.subtitle1;
        } else {
            textStyle20 = textStyle7;
        }
        if ((i10 & 128) != 0) {
            textStyle21 = typography.subtitle2;
        } else {
            textStyle21 = textStyle8;
        }
        if ((i10 & 256) != 0) {
            textStyle22 = typography.body1;
        } else {
            textStyle22 = textStyle9;
        }
        if ((i10 & 512) != 0) {
            textStyle23 = typography.body2;
        } else {
            textStyle23 = textStyle10;
        }
        if ((i10 & 1024) != 0) {
            textStyle24 = typography.button;
        } else {
            textStyle24 = textStyle11;
        }
        if ((i10 & 2048) != 0) {
            textStyle25 = typography.caption;
        } else {
            textStyle25 = textStyle12;
        }
        if ((i10 & 4096) != 0) {
            textStyle26 = typography.overline;
        } else {
            textStyle26 = textStyle13;
        }
        return typography.copy(textStyle14, textStyle15, textStyle16, textStyle17, textStyle18, textStyle19, textStyle20, textStyle21, textStyle22, textStyle23, textStyle24, textStyle25, textStyle26);
    }

    @NotNull
    public final Typography copy(@NotNull TextStyle h12, @NotNull TextStyle h22, @NotNull TextStyle h32, @NotNull TextStyle h42, @NotNull TextStyle h52, @NotNull TextStyle h62, @NotNull TextStyle subtitle1, @NotNull TextStyle subtitle2, @NotNull TextStyle body1, @NotNull TextStyle body2, @NotNull TextStyle button, @NotNull TextStyle caption, @NotNull TextStyle overline) {
        Intrinsics.checkNotNullParameter(h12, "h1");
        Intrinsics.checkNotNullParameter(h22, "h2");
        Intrinsics.checkNotNullParameter(h32, "h3");
        Intrinsics.checkNotNullParameter(h42, "h4");
        Intrinsics.checkNotNullParameter(h52, "h5");
        Intrinsics.checkNotNullParameter(h62, "h6");
        Intrinsics.checkNotNullParameter(subtitle1, "subtitle1");
        Intrinsics.checkNotNullParameter(subtitle2, "subtitle2");
        Intrinsics.checkNotNullParameter(body1, "body1");
        Intrinsics.checkNotNullParameter(body2, "body2");
        Intrinsics.checkNotNullParameter(button, "button");
        Intrinsics.checkNotNullParameter(caption, "caption");
        Intrinsics.checkNotNullParameter(overline, "overline");
        return new Typography(h12, h22, h32, h42, h52, h62, subtitle1, subtitle2, body1, body2, button, caption, overline);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Typography)) {
            return false;
        }
        Typography typography = (Typography) obj;
        if (Intrinsics.areEqual(this.f906h1, typography.f906h1) && Intrinsics.areEqual(this.f907h2, typography.f907h2) && Intrinsics.areEqual(this.f908h3, typography.f908h3) && Intrinsics.areEqual(this.f909h4, typography.f909h4) && Intrinsics.areEqual(this.f910h5, typography.f910h5) && Intrinsics.areEqual(this.f911h6, typography.f911h6) && Intrinsics.areEqual(this.subtitle1, typography.subtitle1) && Intrinsics.areEqual(this.subtitle2, typography.subtitle2) && Intrinsics.areEqual(this.body1, typography.body1) && Intrinsics.areEqual(this.body2, typography.body2) && Intrinsics.areEqual(this.button, typography.button) && Intrinsics.areEqual(this.caption, typography.caption) && Intrinsics.areEqual(this.overline, typography.overline)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final TextStyle getBody1() {
        return this.body1;
    }

    @NotNull
    public final TextStyle getBody2() {
        return this.body2;
    }

    @NotNull
    public final TextStyle getButton() {
        return this.button;
    }

    @NotNull
    public final TextStyle getCaption() {
        return this.caption;
    }

    @NotNull
    public final TextStyle getH1() {
        return this.f906h1;
    }

    @NotNull
    public final TextStyle getH2() {
        return this.f907h2;
    }

    @NotNull
    public final TextStyle getH3() {
        return this.f908h3;
    }

    @NotNull
    public final TextStyle getH4() {
        return this.f909h4;
    }

    @NotNull
    public final TextStyle getH5() {
        return this.f910h5;
    }

    @NotNull
    public final TextStyle getH6() {
        return this.f911h6;
    }

    @NotNull
    public final TextStyle getOverline() {
        return this.overline;
    }

    @NotNull
    public final TextStyle getSubtitle1() {
        return this.subtitle1;
    }

    @NotNull
    public final TextStyle getSubtitle2() {
        return this.subtitle2;
    }

    public int hashCode() {
        return (((((((((((((((((((((((this.f906h1.hashCode() * 31) + this.f907h2.hashCode()) * 31) + this.f908h3.hashCode()) * 31) + this.f909h4.hashCode()) * 31) + this.f910h5.hashCode()) * 31) + this.f911h6.hashCode()) * 31) + this.subtitle1.hashCode()) * 31) + this.subtitle2.hashCode()) * 31) + this.body1.hashCode()) * 31) + this.body2.hashCode()) * 31) + this.button.hashCode()) * 31) + this.caption.hashCode()) * 31) + this.overline.hashCode();
    }

    @NotNull
    public String toString() {
        return "Typography(h1=" + this.f906h1 + ", h2=" + this.f907h2 + ", h3=" + this.f908h3 + ", h4=" + this.f909h4 + ", h5=" + this.f910h5 + ", h6=" + this.f911h6 + ", subtitle1=" + this.subtitle1 + ", subtitle2=" + this.subtitle2 + ", body1=" + this.body1 + ", body2=" + this.body2 + ", button=" + this.button + ", caption=" + this.caption + ", overline=" + this.overline + ')';
    }

    public /* synthetic */ Typography(FontFamily fontFamily, TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? FontFamily.Companion.getDefault() : fontFamily, (i10 & 2) != 0 ? new TextStyle(0L, TextUnitKt.getSp(96), FontWeight.Companion.getLight(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(-1.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle, (i10 & 4) != 0 ? new TextStyle(0L, TextUnitKt.getSp(60), FontWeight.Companion.getLight(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(-0.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle2, (i10 & 8) != 0 ? new TextStyle(0L, TextUnitKt.getSp(48), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle3, (i10 & 16) != 0 ? new TextStyle(0L, TextUnitKt.getSp(34), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0.25d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle4, (i10 & 32) != 0 ? new TextStyle(0L, TextUnitKt.getSp(24), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle5, (i10 & 64) != 0 ? new TextStyle(0L, TextUnitKt.getSp(20), FontWeight.Companion.getMedium(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0.15d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle6, (i10 & 128) != 0 ? new TextStyle(0L, TextUnitKt.getSp(16), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0.15d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle7, (i10 & 256) != 0 ? new TextStyle(0L, TextUnitKt.getSp(14), FontWeight.Companion.getMedium(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0.1d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle8, (i10 & 512) != 0 ? new TextStyle(0L, TextUnitKt.getSp(16), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle9, (i10 & 1024) != 0 ? new TextStyle(0L, TextUnitKt.getSp(14), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0.25d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle10, (i10 & 2048) != 0 ? new TextStyle(0L, TextUnitKt.getSp(14), FontWeight.Companion.getMedium(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(1.25d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle11, (i10 & 4096) != 0 ? new TextStyle(0L, TextUnitKt.getSp(12), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(0.4d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle12, (i10 & 8192) != 0 ? new TextStyle(0L, TextUnitKt.getSp(10), FontWeight.Companion.getNormal(), (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, TextUnitKt.getSp(1.5d), (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262009, (DefaultConstructorMarker) null) : textStyle13);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Typography(@NotNull FontFamily defaultFontFamily, @NotNull TextStyle h12, @NotNull TextStyle h22, @NotNull TextStyle h32, @NotNull TextStyle h42, @NotNull TextStyle h52, @NotNull TextStyle h62, @NotNull TextStyle subtitle1, @NotNull TextStyle subtitle2, @NotNull TextStyle body1, @NotNull TextStyle body2, @NotNull TextStyle button, @NotNull TextStyle caption, @NotNull TextStyle overline) {
        this(TypographyKt.access$withDefaultFontFamily(h12, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(h22, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(h32, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(h42, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(h52, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(h62, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(subtitle1, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(subtitle2, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(body1, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(body2, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(button, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(caption, defaultFontFamily), TypographyKt.access$withDefaultFontFamily(overline, defaultFontFamily));
        Intrinsics.checkNotNullParameter(defaultFontFamily, "defaultFontFamily");
        Intrinsics.checkNotNullParameter(h12, "h1");
        Intrinsics.checkNotNullParameter(h22, "h2");
        Intrinsics.checkNotNullParameter(h32, "h3");
        Intrinsics.checkNotNullParameter(h42, "h4");
        Intrinsics.checkNotNullParameter(h52, "h5");
        Intrinsics.checkNotNullParameter(h62, "h6");
        Intrinsics.checkNotNullParameter(subtitle1, "subtitle1");
        Intrinsics.checkNotNullParameter(subtitle2, "subtitle2");
        Intrinsics.checkNotNullParameter(body1, "body1");
        Intrinsics.checkNotNullParameter(body2, "body2");
        Intrinsics.checkNotNullParameter(button, "button");
        Intrinsics.checkNotNullParameter(caption, "caption");
        Intrinsics.checkNotNullParameter(overline, "overline");
    }
}
