package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidParagraph.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidParagraph_androidKt {
    @c
    @NotNull
    public static final Paragraph ActualParagraph(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10, float f10, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        return new AndroidParagraph(new AndroidParagraphIntrinsics(text, style, spanStyles, placeholders, DelegatingFontLoaderForDeprecatedUsage_androidKt.createFontFamilyResolver(resourceLoader), density), i10, z10, ConstraintsKt.Constraints$default(0, ParagraphKt.ceilToInt(f10), 0, 0, 13, null), null);
    }

    @NotNull
    /* renamed from: ActualParagraph--hBUhpc  reason: not valid java name */
    public static final Paragraph m3885ActualParagraphhBUhpc(@NotNull ParagraphIntrinsics paragraphIntrinsics, int i10, boolean z10, long j10) {
        Intrinsics.checkNotNullParameter(paragraphIntrinsics, "paragraphIntrinsics");
        return new AndroidParagraph((AndroidParagraphIntrinsics) paragraphIntrinsics, i10, z10, j10, null);
    }

    @NotNull
    /* renamed from: ActualParagraph-O3s9Psw  reason: not valid java name */
    public static final Paragraph m3886ActualParagraphO3s9Psw(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10, long j10, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        return new AndroidParagraph(new AndroidParagraphIntrinsics(text, style, spanStyles, placeholders, fontFamilyResolver, density), i10, z10, j10, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int numberOfLinesThatFitMaxHeight(TextLayout textLayout, int i10) {
        int lineCount = textLayout.getLineCount();
        for (int i11 = 0; i11 < lineCount; i11++) {
            if (textLayout.getLineBottom(i11) > i10) {
                return i11;
            }
        }
        return textLayout.getLineCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutAlign-AMY3VfE  reason: not valid java name */
    public static final int m3888toLayoutAlignAMY3VfE(TextAlign textAlign) {
        boolean m3953equalsimpl0;
        boolean m3953equalsimpl02;
        boolean m3953equalsimpl03;
        boolean m3953equalsimpl04;
        boolean m3953equalsimpl05;
        TextAlign.Companion companion = TextAlign.Companion;
        int m3960getLefte0LSkKk = companion.m3960getLefte0LSkKk();
        if (textAlign == null) {
            m3953equalsimpl0 = false;
        } else {
            m3953equalsimpl0 = TextAlign.m3953equalsimpl0(textAlign.m3956unboximpl(), m3960getLefte0LSkKk);
        }
        if (m3953equalsimpl0) {
            return 3;
        }
        int m3961getRighte0LSkKk = companion.m3961getRighte0LSkKk();
        if (textAlign == null) {
            m3953equalsimpl02 = false;
        } else {
            m3953equalsimpl02 = TextAlign.m3953equalsimpl0(textAlign.m3956unboximpl(), m3961getRighte0LSkKk);
        }
        if (m3953equalsimpl02) {
            return 4;
        }
        int m3957getCentere0LSkKk = companion.m3957getCentere0LSkKk();
        if (textAlign == null) {
            m3953equalsimpl03 = false;
        } else {
            m3953equalsimpl03 = TextAlign.m3953equalsimpl0(textAlign.m3956unboximpl(), m3957getCentere0LSkKk);
        }
        if (m3953equalsimpl03) {
            return 2;
        }
        int m3962getStarte0LSkKk = companion.m3962getStarte0LSkKk();
        if (textAlign == null) {
            m3953equalsimpl04 = false;
        } else {
            m3953equalsimpl04 = TextAlign.m3953equalsimpl0(textAlign.m3956unboximpl(), m3962getStarte0LSkKk);
        }
        if (m3953equalsimpl04) {
            return 0;
        }
        int m3958getEnde0LSkKk = companion.m3958getEnde0LSkKk();
        if (textAlign == null) {
            m3953equalsimpl05 = false;
        } else {
            m3953equalsimpl05 = TextAlign.m3953equalsimpl0(textAlign.m3956unboximpl(), m3958getEnde0LSkKk);
        }
        if (!m3953equalsimpl05) {
            return 0;
        }
        return 1;
    }
}
