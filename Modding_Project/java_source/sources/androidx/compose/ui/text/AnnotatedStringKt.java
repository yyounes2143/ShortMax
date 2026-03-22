package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.intl.LocaleList;
import at.n;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnnotatedString.kt */
@Metadata
/* loaded from: classes.dex */
public final class AnnotatedStringKt {
    @NotNull
    private static final AnnotatedString EmptyAnnotatedString = new AnnotatedString("", null, null, 6, null);

    @NotNull
    public static final AnnotatedString AnnotatedString(@NotNull String text, @NotNull SpanStyle spanStyle, @Nullable ParagraphStyle paragraphStyle) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(spanStyle, "spanStyle");
        return new AnnotatedString(text, CollectionsKt.e(new AnnotatedString.Range(spanStyle, 0, text.length())), paragraphStyle == null ? CollectionsKt.n() : CollectionsKt.e(new AnnotatedString.Range(paragraphStyle, 0, text.length())));
    }

    public static /* synthetic */ AnnotatedString AnnotatedString$default(String str, SpanStyle spanStyle, ParagraphStyle paragraphStyle, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            paragraphStyle = null;
        }
        return AnnotatedString(str, spanStyle, paragraphStyle);
    }

    @NotNull
    public static final AnnotatedString buildAnnotatedString(@NotNull Function1<? super AnnotatedString.Builder, Unit> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        AnnotatedString.Builder builder2 = new AnnotatedString.Builder(0, 1, null);
        builder.invoke(builder2);
        return builder2.toAnnotatedString();
    }

    @NotNull
    public static final AnnotatedString capitalize(@NotNull AnnotatedString annotatedString, @NotNull final LocaleList localeList) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        return JvmAnnotatedString_jvmKt.transform(annotatedString, new n<String, Integer, Integer, String>() { // from class: androidx.compose.ui.text.AnnotatedStringKt$capitalize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ String invoke(String str, Integer num, Integer num2) {
                return invoke(str, num.intValue(), num2.intValue());
            }

            @NotNull
            public final String invoke(@NotNull String str, int i10, int i11) {
                Intrinsics.checkNotNullParameter(str, "str");
                if (i10 == 0) {
                    String substring = str.substring(i10, i11);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return StringKt.capitalize(substring, LocaleList.this);
                }
                String substring2 = str.substring(i10, i11);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring2;
            }
        });
    }

    public static /* synthetic */ AnnotatedString capitalize$default(AnnotatedString annotatedString, LocaleList localeList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return capitalize(annotatedString, localeList);
    }

    public static final boolean contains(int i10, int i11, int i12, int i13) {
        boolean z10;
        boolean z11;
        if (i10 > i12 || i13 > i11) {
            return false;
        }
        if (i11 == i13) {
            if (i12 == i13) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (i10 == i11) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (z10 != z11) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final AnnotatedString decapitalize(@NotNull AnnotatedString annotatedString, @NotNull final LocaleList localeList) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        return JvmAnnotatedString_jvmKt.transform(annotatedString, new n<String, Integer, Integer, String>() { // from class: androidx.compose.ui.text.AnnotatedStringKt$decapitalize$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ String invoke(String str, Integer num, Integer num2) {
                return invoke(str, num.intValue(), num2.intValue());
            }

            @NotNull
            public final String invoke(@NotNull String str, int i10, int i11) {
                Intrinsics.checkNotNullParameter(str, "str");
                if (i10 == 0) {
                    String substring = str.substring(i10, i11);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return StringKt.decapitalize(substring, LocaleList.this);
                }
                String substring2 = str.substring(i10, i11);
                Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                return substring2;
            }
        });
    }

    public static /* synthetic */ AnnotatedString decapitalize$default(AnnotatedString annotatedString, LocaleList localeList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return decapitalize(annotatedString, localeList);
    }

    @NotNull
    public static final AnnotatedString emptyAnnotatedString() {
        return EmptyAnnotatedString;
    }

    public static final <T> List<AnnotatedString.Range<T>> filterRanges(List<? extends AnnotatedString.Range<? extends T>> list, int i10, int i11) {
        if (i10 <= i11) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                AnnotatedString.Range<? extends T> range = list.get(i12);
                AnnotatedString.Range<? extends T> range2 = range;
                if (intersect(i10, i11, range2.getStart(), range2.getEnd())) {
                    arrayList.add(range);
                }
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size2 = arrayList.size();
            for (int i13 = 0; i13 < size2; i13++) {
                AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList.get(i13);
                arrayList2.add(new AnnotatedString.Range(range3.getItem(), Math.max(i10, range3.getStart()) - i10, Math.min(i11, range3.getEnd()) - i10, range3.getTag()));
            }
            return arrayList2;
        }
        throw new IllegalArgumentException(("start (" + i10 + ") should be less than or equal to end (" + i11 + ')').toString());
    }

    private static final List<AnnotatedString.Range<SpanStyle>> getLocalStyles(AnnotatedString annotatedString, int i10, int i11) {
        if (i10 == i11) {
            return CollectionsKt.n();
        }
        if (i10 == 0 && i11 >= annotatedString.getText().length()) {
            return annotatedString.getSpanStyles();
        }
        List<AnnotatedString.Range<SpanStyle>> spanStyles = annotatedString.getSpanStyles();
        ArrayList arrayList = new ArrayList(spanStyles.size());
        int size = spanStyles.size();
        for (int i12 = 0; i12 < size; i12++) {
            AnnotatedString.Range<SpanStyle> range = spanStyles.get(i12);
            AnnotatedString.Range<SpanStyle> range2 = range;
            if (intersect(i10, i11, range2.getStart(), range2.getEnd())) {
                arrayList.add(range);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList.get(i13);
            arrayList2.add(new AnnotatedString.Range(range3.getItem(), e.n(range3.getStart(), i10, i11) - i10, e.n(range3.getEnd(), i10, i11) - i10));
        }
        return arrayList2;
    }

    public static final boolean intersect(int i10, int i11, int i12, int i13) {
        if (Math.max(i10, i12) >= Math.min(i11, i13) && !contains(i10, i11, i12, i13) && !contains(i12, i13, i10, i11)) {
            return false;
        }
        return true;
    }

    @NotNull
    public static final <T> List<T> mapEachParagraphStyle(@NotNull AnnotatedString annotatedString, @NotNull ParagraphStyle defaultParagraphStyle, @NotNull Function2<? super AnnotatedString, ? super AnnotatedString.Range<ParagraphStyle>, ? extends T> block) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(defaultParagraphStyle, "defaultParagraphStyle");
        Intrinsics.checkNotNullParameter(block, "block");
        List<AnnotatedString.Range<ParagraphStyle>> normalizedParagraphStyles = normalizedParagraphStyles(annotatedString, defaultParagraphStyle);
        ArrayList arrayList = new ArrayList(normalizedParagraphStyles.size());
        int size = normalizedParagraphStyles.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<ParagraphStyle> range = normalizedParagraphStyles.get(i10);
            arrayList.add(block.invoke(substringWithoutParagraphStyles(annotatedString, range.getStart(), range.getEnd()), range));
        }
        return arrayList;
    }

    @NotNull
    public static final List<AnnotatedString.Range<ParagraphStyle>> normalizedParagraphStyles(@NotNull AnnotatedString annotatedString, @NotNull ParagraphStyle defaultParagraphStyle) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(defaultParagraphStyle, "defaultParagraphStyle");
        int length = annotatedString.getText().length();
        List<AnnotatedString.Range<ParagraphStyle>> paragraphStyles = annotatedString.getParagraphStyles();
        ArrayList arrayList = new ArrayList();
        int size = paragraphStyles.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            AnnotatedString.Range<ParagraphStyle> range = paragraphStyles.get(i10);
            ParagraphStyle component1 = range.component1();
            int component2 = range.component2();
            int component3 = range.component3();
            if (component2 != i11) {
                arrayList.add(new AnnotatedString.Range(defaultParagraphStyle, i11, component2));
            }
            arrayList.add(new AnnotatedString.Range(defaultParagraphStyle.merge(component1), component2, component3));
            i10++;
            i11 = component3;
        }
        if (i11 != length) {
            arrayList.add(new AnnotatedString.Range(defaultParagraphStyle, i11, length));
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new AnnotatedString.Range(defaultParagraphStyle, 0, 0));
        }
        return arrayList;
    }

    public static final AnnotatedString substringWithoutParagraphStyles(AnnotatedString annotatedString, int i10, int i11) {
        String str;
        if (i10 != i11) {
            str = annotatedString.getText().substring(i10, i11);
            Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String…ing(startIndex, endIndex)");
        } else {
            str = "";
        }
        return new AnnotatedString(str, getLocalStyles(annotatedString, i10, i11), null, 4, null);
    }

    @NotNull
    public static final AnnotatedString toLowerCase(@NotNull AnnotatedString annotatedString, @NotNull final LocaleList localeList) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        return JvmAnnotatedString_jvmKt.transform(annotatedString, new n<String, Integer, Integer, String>() { // from class: androidx.compose.ui.text.AnnotatedStringKt$toLowerCase$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ String invoke(String str, Integer num, Integer num2) {
                return invoke(str, num.intValue(), num2.intValue());
            }

            @NotNull
            public final String invoke(@NotNull String str, int i10, int i11) {
                Intrinsics.checkNotNullParameter(str, "str");
                String substring = str.substring(i10, i11);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                return StringKt.toLowerCase(substring, LocaleList.this);
            }
        });
    }

    public static /* synthetic */ AnnotatedString toLowerCase$default(AnnotatedString annotatedString, LocaleList localeList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return toLowerCase(annotatedString, localeList);
    }

    @NotNull
    public static final AnnotatedString toUpperCase(@NotNull AnnotatedString annotatedString, @NotNull final LocaleList localeList) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(localeList, "localeList");
        return JvmAnnotatedString_jvmKt.transform(annotatedString, new n<String, Integer, Integer, String>() { // from class: androidx.compose.ui.text.AnnotatedStringKt$toUpperCase$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ String invoke(String str, Integer num, Integer num2) {
                return invoke(str, num.intValue(), num2.intValue());
            }

            @NotNull
            public final String invoke(@NotNull String str, int i10, int i11) {
                Intrinsics.checkNotNullParameter(str, "str");
                String substring = str.substring(i10, i11);
                Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                return StringKt.toUpperCase(substring, LocaleList.this);
            }
        });
    }

    public static /* synthetic */ AnnotatedString toUpperCase$default(AnnotatedString annotatedString, LocaleList localeList, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return toUpperCase(annotatedString, localeList);
    }

    @ExperimentalTextApi
    @NotNull
    public static final <R> R withAnnotation(@NotNull AnnotatedString.Builder builder, @NotNull String tag, @NotNull String annotation, @NotNull Function1<? super AnnotatedString.Builder, ? extends R> block) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(annotation, "annotation");
        Intrinsics.checkNotNullParameter(block, "block");
        int pushStringAnnotation = builder.pushStringAnnotation(tag, annotation);
        try {
            return block.invoke(builder);
        } finally {
            InlineMarker.finallyStart(1);
            builder.pop(pushStringAnnotation);
            InlineMarker.finallyEnd(1);
        }
    }

    @NotNull
    public static final <R> R withStyle(@NotNull AnnotatedString.Builder builder, @NotNull SpanStyle style, @NotNull Function1<? super AnnotatedString.Builder, ? extends R> block) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(block, "block");
        int pushStyle = builder.pushStyle(style);
        try {
            return block.invoke(builder);
        } finally {
            InlineMarker.finallyStart(1);
            builder.pop(pushStyle);
            InlineMarker.finallyEnd(1);
        }
    }

    @NotNull
    public static final AnnotatedString AnnotatedString(@NotNull String text, @NotNull ParagraphStyle paragraphStyle) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(paragraphStyle, "paragraphStyle");
        return new AnnotatedString(text, CollectionsKt.n(), CollectionsKt.e(new AnnotatedString.Range(paragraphStyle, 0, text.length())));
    }

    @ExperimentalTextApi
    @NotNull
    public static final <R> R withAnnotation(@NotNull AnnotatedString.Builder builder, @NotNull TtsAnnotation ttsAnnotation, @NotNull Function1<? super AnnotatedString.Builder, ? extends R> block) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(ttsAnnotation, "ttsAnnotation");
        Intrinsics.checkNotNullParameter(block, "block");
        int pushTtsAnnotation = builder.pushTtsAnnotation(ttsAnnotation);
        try {
            return block.invoke(builder);
        } finally {
            InlineMarker.finallyStart(1);
            builder.pop(pushTtsAnnotation);
            InlineMarker.finallyEnd(1);
        }
    }

    @NotNull
    public static final <R> R withStyle(@NotNull AnnotatedString.Builder builder, @NotNull ParagraphStyle style, @NotNull Function1<? super AnnotatedString.Builder, ? extends R> block) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(block, "block");
        int pushStyle = builder.pushStyle(style);
        try {
            return block.invoke(builder);
        } finally {
            InlineMarker.finallyStart(1);
            builder.pop(pushStyle);
            InlineMarker.finallyEnd(1);
        }
    }
}
