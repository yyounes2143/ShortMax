package androidx.compose.foundation.text;

import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextFieldSize.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldSize {
    @NotNull
    private Density density;
    @NotNull
    private FontFamily.Resolver fontFamilyResolver;
    @NotNull
    private LayoutDirection layoutDirection;
    private long minSize;
    @NotNull
    private TextStyle resolvedStyle;
    @NotNull
    private Object typeface;

    public TextFieldSize(@NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull TextStyle resolvedStyle, @NotNull Object typeface) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(resolvedStyle, "resolvedStyle");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        this.layoutDirection = layoutDirection;
        this.density = density;
        this.fontFamilyResolver = fontFamilyResolver;
        this.resolvedStyle = resolvedStyle;
        this.typeface = typeface;
        this.minSize = m786computeMinSizeYbymL2g();
    }

    /* renamed from: computeMinSize-YbymL2g  reason: not valid java name */
    private final long m786computeMinSizeYbymL2g() {
        return TextFieldDelegateKt.computeSizeForDefaultText$default(this.resolvedStyle, this.density, this.fontFamilyResolver, null, 0, 24, null);
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

    /* renamed from: getMinSize-YbymL2g  reason: not valid java name */
    public final long m787getMinSizeYbymL2g() {
        return this.minSize;
    }

    @NotNull
    public final TextStyle getResolvedStyle() {
        return this.resolvedStyle;
    }

    @NotNull
    public final Object getTypeface() {
        return this.typeface;
    }

    public final void setDensity(@NotNull Density density) {
        Intrinsics.checkNotNullParameter(density, "<set-?>");
        this.density = density;
    }

    public final void setFontFamilyResolver(@NotNull FontFamily.Resolver resolver) {
        Intrinsics.checkNotNullParameter(resolver, "<set-?>");
        this.fontFamilyResolver = resolver;
    }

    public final void setLayoutDirection(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.layoutDirection = layoutDirection;
    }

    public final void setResolvedStyle(@NotNull TextStyle textStyle) {
        Intrinsics.checkNotNullParameter(textStyle, "<set-?>");
        this.resolvedStyle = textStyle;
    }

    public final void setTypeface(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<set-?>");
        this.typeface = obj;
    }

    public final void update(@NotNull LayoutDirection layoutDirection, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull TextStyle resolvedStyle, @NotNull Object typeface) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(resolvedStyle, "resolvedStyle");
        Intrinsics.checkNotNullParameter(typeface, "typeface");
        if (layoutDirection != this.layoutDirection || !Intrinsics.areEqual(density, this.density) || !Intrinsics.areEqual(fontFamilyResolver, this.fontFamilyResolver) || !Intrinsics.areEqual(resolvedStyle, this.resolvedStyle) || !Intrinsics.areEqual(typeface, this.typeface)) {
            this.layoutDirection = layoutDirection;
            this.density = density;
            this.fontFamilyResolver = fontFamilyResolver;
            this.resolvedStyle = resolvedStyle;
            this.typeface = typeface;
            this.minSize = m786computeMinSizeYbymL2g();
        }
    }
}
