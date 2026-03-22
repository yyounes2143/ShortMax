package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.RestrictTo;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.InternalTextApi;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TtsAnnotation;
import androidx.compose.ui.text.font.AndroidFontUtils_androidKt;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.platform.extensions.TtsAnnotationExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidAccessibilitySpannableString.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidAccessibilitySpannableString_androidKt {
    private static final void setSpanStyle(SpannableString spannableString, SpanStyle spanStyle, int i10, int i11, Density density, FontFamily.Resolver resolver) {
        int m3780getNormal_LCdwA;
        int m3790getAllGVVA2EU;
        SpannableExtensions_androidKt.m3900setColorRPmYEkk(spannableString, spanStyle.m3670getColor0d7_KjU(), i10, i11);
        SpannableExtensions_androidKt.m3901setFontSizeKmRG4DE(spannableString, spanStyle.m3671getFontSizeXSAIIZE(), density, i10, i11);
        if (spanStyle.getFontWeight() != null || spanStyle.m3672getFontStyle4Lr2A7w() != null) {
            FontWeight fontWeight = spanStyle.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            FontStyle m3672getFontStyle4Lr2A7w = spanStyle.m3672getFontStyle4Lr2A7w();
            if (m3672getFontStyle4Lr2A7w != null) {
                m3780getNormal_LCdwA = m3672getFontStyle4Lr2A7w.m3778unboximpl();
            } else {
                m3780getNormal_LCdwA = FontStyle.Companion.m3780getNormal_LCdwA();
            }
            spannableString.setSpan(new StyleSpan(AndroidFontUtils_androidKt.m3733getAndroidTypefaceStyleFO1MlWM(fontWeight, m3780getNormal_LCdwA)), i10, i11, 33);
        }
        if (spanStyle.getFontFamily() != null) {
            if (spanStyle.getFontFamily() instanceof GenericFontFamily) {
                spannableString.setSpan(new TypefaceSpan(((GenericFontFamily) spanStyle.getFontFamily()).getName()), i10, i11, 33);
            } else if (Build.VERSION.SDK_INT >= 28) {
                FontFamily fontFamily = spanStyle.getFontFamily();
                FontSynthesis m3673getFontSynthesisZQGJjVo = spanStyle.m3673getFontSynthesisZQGJjVo();
                if (m3673getFontSynthesisZQGJjVo != null) {
                    m3790getAllGVVA2EU = m3673getFontSynthesisZQGJjVo.m3789unboximpl();
                } else {
                    m3790getAllGVVA2EU = FontSynthesis.Companion.m3790getAllGVVA2EU();
                }
                spannableString.setSpan(Api28Impl.INSTANCE.createTypefaceSpan((Typeface) FontFamily.Resolver.m3753resolveDPcqOEQ$default(resolver, fontFamily, null, 0, m3790getAllGVVA2EU, 6, null).getValue()), i10, i11, 33);
            }
        }
        if (spanStyle.getTextDecoration() != null) {
            TextDecoration textDecoration = spanStyle.getTextDecoration();
            TextDecoration.Companion companion = TextDecoration.Companion;
            if (textDecoration.contains(companion.getUnderline())) {
                spannableString.setSpan(new UnderlineSpan(), i10, i11, 33);
            }
            if (spanStyle.getTextDecoration().contains(companion.getLineThrough())) {
                spannableString.setSpan(new StrikethroughSpan(), i10, i11, 33);
            }
        }
        if (spanStyle.getTextGeometricTransform() != null) {
            spannableString.setSpan(new ScaleXSpan(spanStyle.getTextGeometricTransform().getScaleX()), i10, i11, 33);
        }
        SpannableExtensions_androidKt.setLocaleList(spannableString, spanStyle.getLocaleList(), i10, i11);
        SpannableExtensions_androidKt.m3898setBackgroundRPmYEkk(spannableString, spanStyle.m3668getBackground0d7_KjU(), i10, i11);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @InternalTextApi
    @NotNull
    public static final SpannableString toAccessibilitySpannableString(@NotNull AnnotatedString annotatedString, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        return toAccessibilitySpannableString(annotatedString, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.createFontFamilyResolver(resourceLoader));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @InternalTextApi
    @NotNull
    public static final SpannableString toAccessibilitySpannableString(@NotNull AnnotatedString annotatedString, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        SpannableString spannableString = new SpannableString(annotatedString.getText());
        List<AnnotatedString.Range<SpanStyle>> spanStyles = annotatedString.getSpanStyles();
        int size = spanStyles.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<SpanStyle> range = spanStyles.get(i10);
            setSpanStyle(spannableString, SpanStyle.m3663copyIuqyXdg$default(range.component1(), 0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, null, null, 16351, null), range.component2(), range.component3(), density, fontFamilyResolver);
        }
        List<AnnotatedString.Range<TtsAnnotation>> ttsAnnotations = annotatedString.getTtsAnnotations(0, annotatedString.length());
        int size2 = ttsAnnotations.size();
        for (int i11 = 0; i11 < size2; i11++) {
            AnnotatedString.Range<TtsAnnotation> range2 = ttsAnnotations.get(i11);
            spannableString.setSpan(TtsAnnotationExtensions_androidKt.toSpan(range2.component1()), range2.component2(), range2.component3(), 33);
        }
        return spannableString;
    }
}
