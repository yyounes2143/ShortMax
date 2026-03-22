package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics_androidKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: ParagraphIntrinsics.kt */
@Metadata
/* loaded from: classes.dex */
public final class ParagraphIntrinsicsKt {
    @c
    @NotNull
    public static final ParagraphIntrinsics ParagraphIntrinsics(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        return AndroidParagraphIntrinsics_androidKt.ActualParagraphIntrinsics(text, style, spanStyles, placeholders, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.createFontFamilyResolver(resourceLoader));
    }

    public static /* synthetic */ ParagraphIntrinsics ParagraphIntrinsics$default(String str, TextStyle textStyle, List list, List list2, Density density, Font.ResourceLoader resourceLoader, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = CollectionsKt.n();
        }
        List list3 = list;
        if ((i10 & 8) != 0) {
            list2 = CollectionsKt.n();
        }
        return ParagraphIntrinsics(str, textStyle, list3, list2, density, resourceLoader);
    }

    @NotNull
    public static final ParagraphIntrinsics ParagraphIntrinsics(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        return AndroidParagraphIntrinsics_androidKt.ActualParagraphIntrinsics(text, style, spanStyles, placeholders, density, fontFamilyResolver);
    }

    public static /* synthetic */ ParagraphIntrinsics ParagraphIntrinsics$default(String str, TextStyle textStyle, List list, List list2, Density density, FontFamily.Resolver resolver, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = CollectionsKt.n();
        }
        List list3 = list;
        if ((i10 & 8) != 0) {
            list2 = CollectionsKt.n();
        }
        return ParagraphIntrinsics(str, textStyle, list3, list2, density, resolver);
    }
}
