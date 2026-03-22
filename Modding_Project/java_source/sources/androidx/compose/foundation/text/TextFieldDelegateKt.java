package androidx.compose.foundation.text;

import androidx.compose.ui.text.Paragraph;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSizeKt;
import bt.a;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextFieldDelegate.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldDelegateKt {
    public static final int DefaultWidthCharCount = 10;
    @NotNull
    private static final String EmptyTextReplacement = StringsKt.L("H", 10);

    public static final long computeSizeForDefaultText(@NotNull TextStyle style, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull String text, int i10) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(text, "text");
        Paragraph m3623ParagraphUdtVg6A$default = ParagraphKt.m3623ParagraphUdtVg6A$default(text, style, ConstraintsKt.Constraints$default(0, 0, 0, 0, 15, null), density, fontFamilyResolver, CollectionsKt.n(), null, i10, false, 64, null);
        return IntSizeKt.IntSize(toIntPx(m3623ParagraphUdtVg6A$default.getMinIntrinsicWidth()), toIntPx(m3623ParagraphUdtVg6A$default.getHeight()));
    }

    public static /* synthetic */ long computeSizeForDefaultText$default(TextStyle textStyle, Density density, FontFamily.Resolver resolver, String str, int i10, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str = EmptyTextReplacement;
        }
        if ((i11 & 16) != 0) {
            i10 = 1;
        }
        return computeSizeForDefaultText(textStyle, density, resolver, str, i10);
    }

    @NotNull
    public static final String getEmptyTextReplacement() {
        return EmptyTextReplacement;
    }

    private static final int toIntPx(float f10) {
        return a.c((float) Math.ceil(f10));
    }
}
