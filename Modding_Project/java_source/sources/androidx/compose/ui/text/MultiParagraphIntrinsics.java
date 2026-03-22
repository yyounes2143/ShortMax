package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: MultiParagraphIntrinsics.kt */
@Metadata
/* loaded from: classes.dex */
public final class MultiParagraphIntrinsics implements ParagraphIntrinsics {
    @NotNull
    private final AnnotatedString annotatedString;
    @NotNull
    private final List<ParagraphIntrinsicInfo> infoList;
    @NotNull
    private final i maxIntrinsicWidth$delegate;
    @NotNull
    private final i minIntrinsicWidth$delegate;
    @NotNull
    private final List<AnnotatedString.Range<Placeholder>> placeholders;

    public MultiParagraphIntrinsics(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver) {
        List localPlaceholders;
        AnnotatedString annotatedString2 = annotatedString;
        Intrinsics.checkNotNullParameter(annotatedString2, "annotatedString");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        this.annotatedString = annotatedString2;
        this.placeholders = placeholders;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.minIntrinsicWidth$delegate = c.a(lazyThreadSafetyMode, new Function0<Float>() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$minIntrinsicWidth$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                ParagraphIntrinsicInfo paragraphIntrinsicInfo;
                ParagraphIntrinsics intrinsics;
                List<ParagraphIntrinsicInfo> infoList$ui_text_release = MultiParagraphIntrinsics.this.getInfoList$ui_text_release();
                if (infoList$ui_text_release.isEmpty()) {
                    paragraphIntrinsicInfo = null;
                } else {
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = infoList$ui_text_release.get(0);
                    float minIntrinsicWidth = paragraphIntrinsicInfo2.getIntrinsics().getMinIntrinsicWidth();
                    int p10 = CollectionsKt.p(infoList$ui_text_release);
                    int i10 = 1;
                    if (1 <= p10) {
                        while (true) {
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = infoList$ui_text_release.get(i10);
                            float minIntrinsicWidth2 = paragraphIntrinsicInfo3.getIntrinsics().getMinIntrinsicWidth();
                            if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                paragraphIntrinsicInfo2 = paragraphIntrinsicInfo3;
                                minIntrinsicWidth = minIntrinsicWidth2;
                            }
                            if (i10 == p10) {
                                break;
                            }
                            i10++;
                        }
                    }
                    paragraphIntrinsicInfo = paragraphIntrinsicInfo2;
                }
                ParagraphIntrinsicInfo paragraphIntrinsicInfo4 = paragraphIntrinsicInfo;
                return Float.valueOf((paragraphIntrinsicInfo4 == null || (intrinsics = paragraphIntrinsicInfo4.getIntrinsics()) == null) ? 0.0f : intrinsics.getMinIntrinsicWidth());
            }
        });
        this.maxIntrinsicWidth$delegate = c.a(lazyThreadSafetyMode, new Function0<Float>() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$maxIntrinsicWidth$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Float invoke() {
                ParagraphIntrinsicInfo paragraphIntrinsicInfo;
                ParagraphIntrinsics intrinsics;
                List<ParagraphIntrinsicInfo> infoList$ui_text_release = MultiParagraphIntrinsics.this.getInfoList$ui_text_release();
                if (infoList$ui_text_release.isEmpty()) {
                    paragraphIntrinsicInfo = null;
                } else {
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = infoList$ui_text_release.get(0);
                    float maxIntrinsicWidth = paragraphIntrinsicInfo2.getIntrinsics().getMaxIntrinsicWidth();
                    int p10 = CollectionsKt.p(infoList$ui_text_release);
                    int i10 = 1;
                    if (1 <= p10) {
                        while (true) {
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = infoList$ui_text_release.get(i10);
                            float maxIntrinsicWidth2 = paragraphIntrinsicInfo3.getIntrinsics().getMaxIntrinsicWidth();
                            if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                paragraphIntrinsicInfo2 = paragraphIntrinsicInfo3;
                                maxIntrinsicWidth = maxIntrinsicWidth2;
                            }
                            if (i10 == p10) {
                                break;
                            }
                            i10++;
                        }
                    }
                    paragraphIntrinsicInfo = paragraphIntrinsicInfo2;
                }
                ParagraphIntrinsicInfo paragraphIntrinsicInfo4 = paragraphIntrinsicInfo;
                return Float.valueOf((paragraphIntrinsicInfo4 == null || (intrinsics = paragraphIntrinsicInfo4.getIntrinsics()) == null) ? 0.0f : intrinsics.getMaxIntrinsicWidth());
            }
        });
        ParagraphStyle paragraphStyle = style.toParagraphStyle();
        List<AnnotatedString.Range<ParagraphStyle>> normalizedParagraphStyles = AnnotatedStringKt.normalizedParagraphStyles(annotatedString2, paragraphStyle);
        ArrayList arrayList = new ArrayList(normalizedParagraphStyles.size());
        int size = normalizedParagraphStyles.size();
        int i10 = 0;
        while (i10 < size) {
            AnnotatedString.Range<ParagraphStyle> range = normalizedParagraphStyles.get(i10);
            AnnotatedString substringWithoutParagraphStyles = AnnotatedStringKt.substringWithoutParagraphStyles(annotatedString2, range.getStart(), range.getEnd());
            ParagraphStyle resolveTextDirection = resolveTextDirection(range.getItem(), paragraphStyle);
            String text = substringWithoutParagraphStyles.getText();
            TextStyle merge = style.merge(resolveTextDirection);
            List<AnnotatedString.Range<SpanStyle>> spanStyles = substringWithoutParagraphStyles.getSpanStyles();
            localPlaceholders = MultiParagraphIntrinsicsKt.getLocalPlaceholders(getPlaceholders(), range.getStart(), range.getEnd());
            arrayList.add(new ParagraphIntrinsicInfo(ParagraphIntrinsicsKt.ParagraphIntrinsics(text, merge, spanStyles, localPlaceholders, density, fontFamilyResolver), range.getStart(), range.getEnd()));
            i10++;
            annotatedString2 = annotatedString;
        }
        this.infoList = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ParagraphStyle resolveTextDirection(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2) {
        TextDirection m3632getTextDirectionmmuk1to = paragraphStyle.m3632getTextDirectionmmuk1to();
        if (m3632getTextDirectionmmuk1to != null) {
            m3632getTextDirectionmmuk1to.m3969unboximpl();
            return paragraphStyle;
        }
        return ParagraphStyle.m3626copyElsmlbk$default(paragraphStyle, null, paragraphStyle2.m3632getTextDirectionmmuk1to(), 0L, null, 13, null);
    }

    @NotNull
    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public boolean getHasStaleResolvedFonts() {
        List<ParagraphIntrinsicInfo> list = this.infoList;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (list.get(i10).getIntrinsics().getHasStaleResolvedFonts()) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final List<ParagraphIntrinsicInfo> getInfoList$ui_text_release() {
        return this.infoList;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMaxIntrinsicWidth() {
        return ((Number) this.maxIntrinsicWidth$delegate.getValue()).floatValue();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMinIntrinsicWidth() {
        return ((Number) this.minIntrinsicWidth$delegate.getValue()).floatValue();
    }

    @NotNull
    public final List<AnnotatedString.Range<Placeholder>> getPlaceholders() {
        return this.placeholders;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @ms.c
    public MultiParagraphIntrinsics(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        this(annotatedString, style, placeholders, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.createFontFamilyResolver(resourceLoader));
        Intrinsics.checkNotNullParameter(annotatedString, "annotatedString");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
    }
}
