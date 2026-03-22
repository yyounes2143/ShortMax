package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextLayoutResult.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextLayoutInput {
    @Nullable
    private Font.ResourceLoader _developerSuppliedResourceLoader;
    private final long constraints;
    @NotNull
    private final Density density;
    @NotNull
    private final FontFamily.Resolver fontFamilyResolver;
    @NotNull
    private final LayoutDirection layoutDirection;
    private final int maxLines;
    private final int overflow;
    @NotNull
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    private final boolean softWrap;
    @NotNull
    private final TextStyle style;
    @NotNull
    private final AnnotatedString text;

    @c
    public /* synthetic */ TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i10, boolean z10, int i11, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, list, i10, z10, i11, density, layoutDirection, resourceLoader, j10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: copy-hu-1Yfo$default  reason: not valid java name */
    public static /* synthetic */ TextLayoutInput m3676copyhu1Yfo$default(TextLayoutInput textLayoutInput, AnnotatedString annotatedString, TextStyle textStyle, List list, int i10, boolean z10, int i11, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j10, int i12, Object obj) {
        AnnotatedString annotatedString2;
        TextStyle textStyle2;
        List<AnnotatedString.Range<Placeholder>> list2;
        int i13;
        boolean z11;
        int i14;
        Density density2;
        LayoutDirection layoutDirection2;
        Font.ResourceLoader resourceLoader2;
        long j11;
        if ((i12 & 1) != 0) {
            annotatedString2 = textLayoutInput.text;
        } else {
            annotatedString2 = annotatedString;
        }
        if ((i12 & 2) != 0) {
            textStyle2 = textLayoutInput.style;
        } else {
            textStyle2 = textStyle;
        }
        if ((i12 & 4) != 0) {
            list2 = textLayoutInput.placeholders;
        } else {
            list2 = list;
        }
        if ((i12 & 8) != 0) {
            i13 = textLayoutInput.maxLines;
        } else {
            i13 = i10;
        }
        if ((i12 & 16) != 0) {
            z11 = textLayoutInput.softWrap;
        } else {
            z11 = z10;
        }
        if ((i12 & 32) != 0) {
            i14 = textLayoutInput.overflow;
        } else {
            i14 = i11;
        }
        if ((i12 & 64) != 0) {
            density2 = textLayoutInput.density;
        } else {
            density2 = density;
        }
        if ((i12 & 128) != 0) {
            layoutDirection2 = textLayoutInput.layoutDirection;
        } else {
            layoutDirection2 = layoutDirection;
        }
        if ((i12 & 256) != 0) {
            resourceLoader2 = textLayoutInput.getResourceLoader();
        } else {
            resourceLoader2 = resourceLoader;
        }
        if ((i12 & 512) != 0) {
            j11 = textLayoutInput.constraints;
        } else {
            j11 = j10;
        }
        return textLayoutInput.m3677copyhu1Yfo(annotatedString2, textStyle2, list2, i13, z11, i14, density2, layoutDirection2, resourceLoader2, j11);
    }

    @c
    @NotNull
    /* renamed from: copy-hu-1Yfo  reason: not valid java name */
    public final TextLayoutInput m3677copyhu1Yfo(@NotNull AnnotatedString text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10, int i11, @NotNull Density density, @NotNull LayoutDirection layoutDirection, @NotNull Font.ResourceLoader resourceLoader, long j10) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        return new TextLayoutInput(text, style, placeholders, i10, z10, i11, density, layoutDirection, resourceLoader, this.fontFamilyResolver, j10);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextLayoutInput)) {
            return false;
        }
        TextLayoutInput textLayoutInput = (TextLayoutInput) obj;
        if (Intrinsics.areEqual(this.text, textLayoutInput.text) && Intrinsics.areEqual(this.style, textLayoutInput.style) && Intrinsics.areEqual(this.placeholders, textLayoutInput.placeholders) && this.maxLines == textLayoutInput.maxLines && this.softWrap == textLayoutInput.softWrap && TextOverflow.m3983equalsimpl0(this.overflow, textLayoutInput.overflow) && Intrinsics.areEqual(this.density, textLayoutInput.density) && this.layoutDirection == textLayoutInput.layoutDirection && Intrinsics.areEqual(this.fontFamilyResolver, textLayoutInput.fontFamilyResolver) && Constraints.m3998equalsimpl0(this.constraints, textLayoutInput.constraints)) {
            return true;
        }
        return false;
    }

    /* renamed from: getConstraints-msEJaDk  reason: not valid java name */
    public final long m3678getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @NotNull
    public final Density getDensity() {
        return this.density;
    }

    @NotNull
    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    @NotNull
    public final LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    /* renamed from: getOverflow-gIe3tQ8  reason: not valid java name */
    public final int m3679getOverflowgIe3tQ8() {
        return this.overflow;
    }

    @NotNull
    public final List<AnnotatedString.Range<Placeholder>> getPlaceholders() {
        return this.placeholders;
    }

    @NotNull
    public final Font.ResourceLoader getResourceLoader() {
        Font.ResourceLoader resourceLoader = this._developerSuppliedResourceLoader;
        if (resourceLoader == null) {
            return DeprecatedBridgeFontResourceLoader.Companion.from(this.fontFamilyResolver);
        }
        return resourceLoader;
    }

    public final boolean getSoftWrap() {
        return this.softWrap;
    }

    @NotNull
    public final TextStyle getStyle() {
        return this.style;
    }

    @NotNull
    public final AnnotatedString getText() {
        return this.text;
    }

    public int hashCode() {
        return (((((((((((((((((this.text.hashCode() * 31) + this.style.hashCode()) * 31) + this.placeholders.hashCode()) * 31) + this.maxLines) * 31) + Boolean.hashCode(this.softWrap)) * 31) + TextOverflow.m3984hashCodeimpl(this.overflow)) * 31) + this.density.hashCode()) * 31) + this.layoutDirection.hashCode()) * 31) + this.fontFamilyResolver.hashCode()) * 31) + Constraints.m4008hashCodeimpl(this.constraints);
    }

    @NotNull
    public String toString() {
        return "TextLayoutInput(text=" + ((Object) this.text) + ", style=" + this.style + ", placeholders=" + this.placeholders + ", maxLines=" + this.maxLines + ", softWrap=" + this.softWrap + ", overflow=" + ((Object) TextOverflow.m3985toStringimpl(this.overflow)) + ", density=" + this.density + ", layoutDirection=" + this.layoutDirection + ", fontFamilyResolver=" + this.fontFamilyResolver + ", constraints=" + ((Object) Constraints.m4010toStringimpl(this.constraints)) + ')';
    }

    public /* synthetic */ TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List list, int i10, boolean z10, int i11, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, list, i10, z10, i11, density, layoutDirection, resolver, j10);
    }

    private TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z10, int i11, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, FontFamily.Resolver resolver, long j10) {
        this.text = annotatedString;
        this.style = textStyle;
        this.placeholders = list;
        this.maxLines = i10;
        this.softWrap = z10;
        this.overflow = i11;
        this.density = density;
        this.layoutDirection = layoutDirection;
        this.fontFamilyResolver = resolver;
        this.constraints = j10;
        this._developerSuppliedResourceLoader = resourceLoader;
    }

    private TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z10, int i11, Density density, LayoutDirection layoutDirection, Font.ResourceLoader resourceLoader, long j10) {
        this(annotatedString, textStyle, list, i10, z10, i11, density, layoutDirection, resourceLoader, DelegatingFontLoaderForDeprecatedUsage_androidKt.createFontFamilyResolver(resourceLoader), j10);
    }

    @c
    public static /* synthetic */ void getResourceLoader$annotations() {
    }

    private TextLayoutInput(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z10, int i11, Density density, LayoutDirection layoutDirection, FontFamily.Resolver resolver, long j10) {
        this(annotatedString, textStyle, list, i10, z10, i11, density, layoutDirection, (Font.ResourceLoader) null, resolver, j10);
    }
}
