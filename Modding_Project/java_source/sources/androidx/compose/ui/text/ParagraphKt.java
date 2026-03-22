package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidParagraph_androidKt;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: Paragraph.kt */
@Metadata
/* loaded from: classes.dex */
public final class ParagraphKt {
    public static final int DefaultMaxLines = Integer.MAX_VALUE;

    @c
    @NotNull
    public static final Paragraph Paragraph(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10, float f10, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        return AndroidParagraph_androidKt.ActualParagraph(text, style, spanStyles, placeholders, i10, z10, f10, density, resourceLoader);
    }

    @NotNull
    /* renamed from: Paragraph-UdtVg6A  reason: not valid java name */
    public static final Paragraph m3622ParagraphUdtVg6A(@NotNull String text, @NotNull TextStyle style, long j10, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        return AndroidParagraph_androidKt.m3886ActualParagraphO3s9Psw(text, style, spanStyles, placeholders, i10, z10, j10, density, fontFamilyResolver);
    }

    /* renamed from: Paragraph-UdtVg6A$default  reason: not valid java name */
    public static /* synthetic */ Paragraph m3623ParagraphUdtVg6A$default(String str, TextStyle textStyle, long j10, Density density, FontFamily.Resolver resolver, List list, List list2, int i10, boolean z10, int i11, Object obj) {
        List list3;
        List list4;
        int i12;
        boolean z11;
        if ((i11 & 32) != 0) {
            list3 = CollectionsKt.n();
        } else {
            list3 = list;
        }
        if ((i11 & 64) != 0) {
            list4 = CollectionsKt.n();
        } else {
            list4 = list2;
        }
        if ((i11 & 128) != 0) {
            i12 = Integer.MAX_VALUE;
        } else {
            i12 = i10;
        }
        if ((i11 & 256) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        return m3622ParagraphUdtVg6A(str, textStyle, j10, density, resolver, list3, list4, i12, z11);
    }

    @NotNull
    /* renamed from: Paragraph-_EkL_-Y  reason: not valid java name */
    public static final Paragraph m3624Paragraph_EkL_Y(@NotNull ParagraphIntrinsics paragraphIntrinsics, long j10, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(paragraphIntrinsics, "paragraphIntrinsics");
        return AndroidParagraph_androidKt.m3885ActualParagraphhBUhpc(paragraphIntrinsics, i10, z10, j10);
    }

    /* renamed from: Paragraph-_EkL_-Y$default  reason: not valid java name */
    public static /* synthetic */ Paragraph m3625Paragraph_EkL_Y$default(ParagraphIntrinsics paragraphIntrinsics, long j10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        return m3624Paragraph_EkL_Y(paragraphIntrinsics, j10, i10, z10);
    }

    public static final int ceilToInt(float f10) {
        return (int) Math.ceil(f10);
    }

    @c
    @NotNull
    public static final Paragraph Paragraph(@NotNull String text, @NotNull TextStyle style, float f10, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        return AndroidParagraph_androidKt.m3886ActualParagraphO3s9Psw(text, style, spanStyles, placeholders, i10, z10, ConstraintsKt.Constraints$default(0, ceilToInt(f10), 0, 0, 13, null), density, fontFamilyResolver);
    }

    @c
    @NotNull
    public static final Paragraph Paragraph(@NotNull ParagraphIntrinsics paragraphIntrinsics, int i10, boolean z10, float f10) {
        Intrinsics.checkNotNullParameter(paragraphIntrinsics, "paragraphIntrinsics");
        return AndroidParagraph_androidKt.m3885ActualParagraphhBUhpc(paragraphIntrinsics, i10, z10, ConstraintsKt.Constraints$default(0, ceilToInt(f10), 0, 0, 13, null));
    }

    public static /* synthetic */ Paragraph Paragraph$default(ParagraphIntrinsics paragraphIntrinsics, int i10, boolean z10, float f10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = Integer.MAX_VALUE;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return Paragraph(paragraphIntrinsics, i10, z10, f10);
    }
}
