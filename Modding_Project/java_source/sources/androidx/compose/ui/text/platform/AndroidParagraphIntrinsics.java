package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.platform.extensions.TextPaintExtensions_androidKt;
import androidx.compose.ui.unit.Density;
import at.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidParagraphIntrinsics.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {
    @NotNull
    private final CharSequence charSequence;
    @NotNull
    private final Density density;
    @NotNull
    private final FontFamily.Resolver fontFamilyResolver;
    @NotNull
    private final LayoutIntrinsics layoutIntrinsics;
    @NotNull
    private final List<AnnotatedString.Range<Placeholder>> placeholders;
    @NotNull
    private final List<TypefaceDirtyTracker> resolvedTypefaces;
    @NotNull
    private final List<AnnotatedString.Range<SpanStyle>> spanStyles;
    @NotNull
    private final TextStyle style;
    @NotNull
    private final String text;
    private final int textDirectionHeuristic;
    @NotNull
    private final AndroidTextPaint textPaint;

    public AndroidParagraphIntrinsics(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(density, "density");
        this.text = text;
        this.style = style;
        this.spanStyles = spanStyles;
        this.placeholders = placeholders;
        this.fontFamilyResolver = fontFamilyResolver;
        this.density = density;
        AndroidTextPaint androidTextPaint = new AndroidTextPaint(1, density.getDensity());
        this.textPaint = androidTextPaint;
        this.resolvedTypefaces = new ArrayList();
        int m3883resolveTextDirectionHeuristics9GRLPo0 = AndroidParagraphIntrinsics_androidKt.m3883resolveTextDirectionHeuristics9GRLPo0(style.m3720getTextDirectionmmuk1to(), style.getLocaleList());
        this.textDirectionHeuristic = m3883resolveTextDirectionHeuristics9GRLPo0;
        o<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface> oVar = new o<FontFamily, FontWeight, FontStyle, FontSynthesis, Typeface>() { // from class: androidx.compose.ui.text.platform.AndroidParagraphIntrinsics$resolveTypeface$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(4);
            }

            @Override // at.o
            public /* bridge */ /* synthetic */ Typeface invoke(FontFamily fontFamily, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis) {
                return m3882invokeDPcqOEQ(fontFamily, fontWeight, fontStyle.m3778unboximpl(), fontSynthesis.m3789unboximpl());
            }

            @NotNull
            /* renamed from: invoke-DPcqOEQ  reason: not valid java name */
            public final Typeface m3882invokeDPcqOEQ(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11) {
                List list;
                Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
                TypefaceDirtyTracker typefaceDirtyTracker = new TypefaceDirtyTracker(AndroidParagraphIntrinsics.this.getFontFamilyResolver().mo3754resolveDPcqOEQ(fontFamily, fontWeight, i10, i11));
                list = AndroidParagraphIntrinsics.this.resolvedTypefaces;
                list.add(typefaceDirtyTracker);
                return typefaceDirtyTracker.getTypeface();
            }
        };
        CharSequence createCharSequence = AndroidParagraphHelper_androidKt.createCharSequence(text, androidTextPaint.getTextSize(), style, CollectionsKt.K0(CollectionsKt.e(new AnnotatedString.Range(TextPaintExtensions_androidKt.applySpanStyle(androidTextPaint, style.toSpanStyle(), oVar, density), 0, text.length())), spanStyles), placeholders, density, oVar);
        this.charSequence = createCharSequence;
        this.layoutIntrinsics = new LayoutIntrinsics(createCharSequence, androidTextPaint, m3883resolveTextDirectionHeuristics9GRLPo0);
    }

    @NotNull
    public final CharSequence getCharSequence$ui_text_release() {
        return this.charSequence;
    }

    @NotNull
    public final Density getDensity() {
        return this.density;
    }

    @NotNull
    public final FontFamily.Resolver getFontFamilyResolver() {
        return this.fontFamilyResolver;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public boolean getHasStaleResolvedFonts() {
        List<TypefaceDirtyTracker> list = this.resolvedTypefaces;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (list.get(i10).isStaleResolvedFont()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final LayoutIntrinsics getLayoutIntrinsics$ui_text_release() {
        return this.layoutIntrinsics;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMaxIntrinsicWidth() {
        return this.layoutIntrinsics.getMaxIntrinsicWidth();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMinIntrinsicWidth() {
        return this.layoutIntrinsics.getMinIntrinsicWidth();
    }

    @NotNull
    public final List<AnnotatedString.Range<Placeholder>> getPlaceholders() {
        return this.placeholders;
    }

    @NotNull
    public final List<AnnotatedString.Range<SpanStyle>> getSpanStyles() {
        return this.spanStyles;
    }

    @NotNull
    public final TextStyle getStyle() {
        return this.style;
    }

    @NotNull
    public final String getText() {
        return this.text;
    }

    public final int getTextDirectionHeuristic$ui_text_release() {
        return this.textDirectionHeuristic;
    }

    @NotNull
    public final AndroidTextPaint getTextPaint$ui_text_release() {
        return this.textPaint;
    }
}
