package androidx.compose.ui.text;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ParagraphStyle.kt */
@Immutable
@Metadata
/* loaded from: classes.dex */
public final class ParagraphStyle {
    private final long lineHeight;
    @Nullable
    private final LineHeightStyle lineHeightStyle;
    @Nullable
    private final PlatformParagraphStyle platformStyle;
    @Nullable
    private final TextAlign textAlign;
    @Nullable
    private final TextDirection textDirection;
    @Nullable
    private final TextIndent textIndent;

    @ExperimentalTextApi
    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent, @ExperimentalTextApi PlatformParagraphStyle platformParagraphStyle, @ExperimentalTextApi LineHeightStyle lineHeightStyle, DefaultConstructorMarker defaultConstructorMarker) {
        this(textAlign, textDirection, j10, textIndent, platformParagraphStyle, lineHeightStyle);
    }

    /* renamed from: copy-Elsmlbk$default  reason: not valid java name */
    public static /* synthetic */ ParagraphStyle m3626copyElsmlbk$default(ParagraphStyle paragraphStyle, TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            textAlign = paragraphStyle.textAlign;
        }
        if ((i10 & 2) != 0) {
            textDirection = paragraphStyle.textDirection;
        }
        TextDirection textDirection2 = textDirection;
        if ((i10 & 4) != 0) {
            j10 = paragraphStyle.lineHeight;
        }
        long j11 = j10;
        if ((i10 & 8) != 0) {
            textIndent = paragraphStyle.textIndent;
        }
        return paragraphStyle.m3628copyElsmlbk(textAlign, textDirection2, j11, textIndent);
    }

    /* renamed from: copy-xPh5V4g$default  reason: not valid java name */
    public static /* synthetic */ ParagraphStyle m3627copyxPh5V4g$default(ParagraphStyle paragraphStyle, TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            textAlign = paragraphStyle.textAlign;
        }
        if ((i10 & 2) != 0) {
            textDirection = paragraphStyle.textDirection;
        }
        TextDirection textDirection2 = textDirection;
        if ((i10 & 4) != 0) {
            j10 = paragraphStyle.lineHeight;
        }
        long j11 = j10;
        if ((i10 & 8) != 0) {
            textIndent = paragraphStyle.textIndent;
        }
        TextIndent textIndent2 = textIndent;
        if ((i10 & 16) != 0) {
            platformParagraphStyle = paragraphStyle.platformStyle;
        }
        PlatformParagraphStyle platformParagraphStyle2 = platformParagraphStyle;
        if ((i10 & 32) != 0) {
            lineHeightStyle = paragraphStyle.lineHeightStyle;
        }
        return paragraphStyle.m3629copyxPh5V4g(textAlign, textDirection2, j11, textIndent2, platformParagraphStyle2, lineHeightStyle);
    }

    public static /* synthetic */ ParagraphStyle merge$default(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            paragraphStyle2 = null;
        }
        return paragraphStyle.merge(paragraphStyle2);
    }

    private final PlatformParagraphStyle mergePlatformStyle(PlatformParagraphStyle platformParagraphStyle) {
        PlatformParagraphStyle platformParagraphStyle2 = this.platformStyle;
        if (platformParagraphStyle2 == null) {
            return platformParagraphStyle;
        }
        if (platformParagraphStyle == null) {
            return platformParagraphStyle2;
        }
        return platformParagraphStyle2.merge(platformParagraphStyle);
    }

    @NotNull
    /* renamed from: copy-Elsmlbk  reason: not valid java name */
    public final ParagraphStyle m3628copyElsmlbk(@Nullable TextAlign textAlign, @Nullable TextDirection textDirection, long j10, @Nullable TextIndent textIndent) {
        return new ParagraphStyle(textAlign, textDirection, j10, textIndent, this.platformStyle, this.lineHeightStyle, null);
    }

    @ExperimentalTextApi
    @NotNull
    /* renamed from: copy-xPh5V4g  reason: not valid java name */
    public final ParagraphStyle m3629copyxPh5V4g(@Nullable TextAlign textAlign, @Nullable TextDirection textDirection, long j10, @Nullable TextIndent textIndent, @Nullable PlatformParagraphStyle platformParagraphStyle, @Nullable LineHeightStyle lineHeightStyle) {
        return new ParagraphStyle(textAlign, textDirection, j10, textIndent, platformParagraphStyle, lineHeightStyle, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParagraphStyle)) {
            return false;
        }
        ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
        if (Intrinsics.areEqual(this.textAlign, paragraphStyle.textAlign) && Intrinsics.areEqual(this.textDirection, paragraphStyle.textDirection) && TextUnit.m4227equalsimpl0(this.lineHeight, paragraphStyle.lineHeight) && Intrinsics.areEqual(this.textIndent, paragraphStyle.textIndent) && Intrinsics.areEqual(this.platformStyle, paragraphStyle.platformStyle) && Intrinsics.areEqual(this.lineHeightStyle, paragraphStyle.lineHeightStyle)) {
            return true;
        }
        return false;
    }

    /* renamed from: getLineHeight-XSAIIZE  reason: not valid java name */
    public final long m3630getLineHeightXSAIIZE() {
        return this.lineHeight;
    }

    @ExperimentalTextApi
    @Nullable
    public final LineHeightStyle getLineHeightStyle() {
        return this.lineHeightStyle;
    }

    @ExperimentalTextApi
    @Nullable
    public final PlatformParagraphStyle getPlatformStyle() {
        return this.platformStyle;
    }

    @Nullable
    /* renamed from: getTextAlign-buA522U  reason: not valid java name */
    public final TextAlign m3631getTextAlignbuA522U() {
        return this.textAlign;
    }

    @Nullable
    /* renamed from: getTextDirection-mmuk1to  reason: not valid java name */
    public final TextDirection m3632getTextDirectionmmuk1to() {
        return this.textDirection;
    }

    @Nullable
    public final TextIndent getTextIndent() {
        return this.textIndent;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        TextAlign textAlign = this.textAlign;
        int i14 = 0;
        if (textAlign != null) {
            i10 = TextAlign.m3954hashCodeimpl(textAlign.m3956unboximpl());
        } else {
            i10 = 0;
        }
        int i15 = i10 * 31;
        TextDirection textDirection = this.textDirection;
        if (textDirection != null) {
            i11 = TextDirection.m3967hashCodeimpl(textDirection.m3969unboximpl());
        } else {
            i11 = 0;
        }
        int m4231hashCodeimpl = (((i15 + i11) * 31) + TextUnit.m4231hashCodeimpl(this.lineHeight)) * 31;
        TextIndent textIndent = this.textIndent;
        if (textIndent != null) {
            i12 = textIndent.hashCode();
        } else {
            i12 = 0;
        }
        int i16 = (m4231hashCodeimpl + i12) * 31;
        PlatformParagraphStyle platformParagraphStyle = this.platformStyle;
        if (platformParagraphStyle != null) {
            i13 = platformParagraphStyle.hashCode();
        } else {
            i13 = 0;
        }
        int i17 = (i16 + i13) * 31;
        LineHeightStyle lineHeightStyle = this.lineHeightStyle;
        if (lineHeightStyle != null) {
            i14 = lineHeightStyle.hashCode();
        }
        return i17 + i14;
    }

    @Stable
    @NotNull
    public final ParagraphStyle merge(@Nullable ParagraphStyle paragraphStyle) {
        long j10;
        if (paragraphStyle == null) {
            return this;
        }
        if (TextUnitKt.m4248isUnspecifiedR2X_6o(paragraphStyle.lineHeight)) {
            j10 = this.lineHeight;
        } else {
            j10 = paragraphStyle.lineHeight;
        }
        long j11 = j10;
        TextIndent textIndent = paragraphStyle.textIndent;
        if (textIndent == null) {
            textIndent = this.textIndent;
        }
        TextIndent textIndent2 = textIndent;
        TextAlign textAlign = paragraphStyle.textAlign;
        if (textAlign == null) {
            textAlign = this.textAlign;
        }
        TextAlign textAlign2 = textAlign;
        TextDirection textDirection = paragraphStyle.textDirection;
        if (textDirection == null) {
            textDirection = this.textDirection;
        }
        TextDirection textDirection2 = textDirection;
        PlatformParagraphStyle mergePlatformStyle = mergePlatformStyle(paragraphStyle.platformStyle);
        LineHeightStyle lineHeightStyle = paragraphStyle.lineHeightStyle;
        if (lineHeightStyle == null) {
            lineHeightStyle = this.lineHeightStyle;
        }
        return new ParagraphStyle(textAlign2, textDirection2, j11, textIndent2, mergePlatformStyle, lineHeightStyle, null);
    }

    @Stable
    @NotNull
    public final ParagraphStyle plus(@NotNull ParagraphStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    @NotNull
    public String toString() {
        return "ParagraphStyle(textAlign=" + this.textAlign + ", textDirection=" + this.textDirection + ", lineHeight=" + ((Object) TextUnit.m4237toStringimpl(this.lineHeight)) + ", textIndent=" + this.textIndent + ", platformStyle=" + this.platformStyle + ", lineHeightStyle=" + this.lineHeightStyle + ')';
    }

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent, DefaultConstructorMarker defaultConstructorMarker) {
        this(textAlign, textDirection, j10, textIndent);
    }

    private ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle) {
        this.textAlign = textAlign;
        this.textDirection = textDirection;
        this.lineHeight = j10;
        this.textIndent = textIndent;
        this.platformStyle = platformParagraphStyle;
        this.lineHeightStyle = lineHeightStyle;
        if (TextUnit.m4227equalsimpl0(j10, TextUnit.Companion.m4241getUnspecifiedXSAIIZE()) || TextUnit.m4230getValueimpl(j10) >= 0.0f) {
            return;
        }
        throw new IllegalStateException(("lineHeight can't be negative (" + TextUnit.m4230getValueimpl(j10) + ')').toString());
    }

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : textAlign, (i10 & 2) != 0 ? null : textDirection, (i10 & 4) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j10, (i10 & 8) != 0 ? null : textIndent, (i10 & 16) != 0 ? null : platformParagraphStyle, (i10 & 32) == 0 ? lineHeightStyle : null, null);
    }

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : textAlign, (i10 & 2) != 0 ? null : textDirection, (i10 & 4) != 0 ? TextUnit.Companion.m4241getUnspecifiedXSAIIZE() : j10, (i10 & 8) != 0 ? null : textIndent, null);
    }

    private ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j10, TextIndent textIndent) {
        this(textAlign, textDirection, j10, textIndent, null, null, null);
    }
}
