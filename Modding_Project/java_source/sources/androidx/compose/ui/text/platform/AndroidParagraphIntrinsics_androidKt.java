package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.intl.AndroidLocale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import androidx.core.text.TextUtilsCompat;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidParagraphIntrinsics.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidParagraphIntrinsics_androidKt {
    @NotNull
    public static final ParagraphIntrinsics ActualParagraphIntrinsics(@NotNull String text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<SpanStyle>> spanStyles, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        return new AndroidParagraphIntrinsics(text, style, spanStyles, placeholders, fontFamilyResolver, density);
    }

    /* renamed from: resolveTextDirectionHeuristics-9GRLPo0  reason: not valid java name */
    public static final int m3883resolveTextDirectionHeuristics9GRLPo0(@Nullable TextDirection textDirection, @Nullable LocaleList localeList) {
        int m3970getContents_7Xco;
        Locale locale;
        if (textDirection != null) {
            m3970getContents_7Xco = textDirection.m3969unboximpl();
        } else {
            m3970getContents_7Xco = TextDirection.Companion.m3970getContents_7Xco();
        }
        TextDirection.Companion companion = TextDirection.Companion;
        if (TextDirection.m3966equalsimpl0(m3970getContents_7Xco, companion.m3971getContentOrLtrs_7Xco())) {
            return 2;
        }
        if (!TextDirection.m3966equalsimpl0(m3970getContents_7Xco, companion.m3972getContentOrRtls_7Xco())) {
            if (TextDirection.m3966equalsimpl0(m3970getContents_7Xco, companion.m3973getLtrs_7Xco())) {
                return 0;
            }
            if (TextDirection.m3966equalsimpl0(m3970getContents_7Xco, companion.m3974getRtls_7Xco())) {
                return 1;
            }
            if (TextDirection.m3966equalsimpl0(m3970getContents_7Xco, companion.m3970getContents_7Xco())) {
                if (localeList == null || (locale = ((AndroidLocale) localeList.get(0).getPlatformLocale$ui_text_release()).getJavaLocale()) == null) {
                    locale = Locale.getDefault();
                }
                int layoutDirectionFromLocale = TextUtilsCompat.getLayoutDirectionFromLocale(locale);
                if (layoutDirectionFromLocale == 0 || layoutDirectionFromLocale != 1) {
                    return 2;
                }
            } else {
                throw new IllegalStateException("Invalid TextDirection.");
            }
        }
        return 3;
    }

    /* renamed from: resolveTextDirectionHeuristics-9GRLPo0$default  reason: not valid java name */
    public static /* synthetic */ int m3884resolveTextDirectionHeuristics9GRLPo0$default(TextDirection textDirection, LocaleList localeList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            textDirection = null;
        }
        if ((i10 & 2) != 0) {
            localeList = null;
        }
        return m3883resolveTextDirectionHeuristics9GRLPo0(textDirection, localeList);
    }
}
