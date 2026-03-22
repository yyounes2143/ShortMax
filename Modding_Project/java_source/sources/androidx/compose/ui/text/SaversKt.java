package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Savers.kt */
@Metadata
/* loaded from: classes.dex */
public final class SaversKt {
    @NotNull
    private static final Saver<AnnotatedString, Object> AnnotatedStringSaver = SaverKt.Saver(new Function2<SaverScope, AnnotatedString, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotatedStringSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull AnnotatedString it) {
            Saver saver;
            Saver saver2;
            Saver saver3;
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            Object save = SaversKt.save(it.getText());
            List<AnnotatedString.Range<SpanStyle>> spanStyles = it.getSpanStyles();
            saver = SaversKt.AnnotationRangeListSaver;
            Object save2 = SaversKt.save(spanStyles, saver, Saver);
            List<AnnotatedString.Range<ParagraphStyle>> paragraphStyles = it.getParagraphStyles();
            saver2 = SaversKt.AnnotationRangeListSaver;
            Object save3 = SaversKt.save(paragraphStyles, saver2, Saver);
            List<AnnotatedString.Range<? extends Object>> annotations$ui_text_release = it.getAnnotations$ui_text_release();
            saver3 = SaversKt.AnnotationRangeListSaver;
            return CollectionsKt.h(save, save2, save3, SaversKt.save(annotations$ui_text_release, saver3, Saver));
        }
    }, new Function1<Object, AnnotatedString>() { // from class: androidx.compose.ui.text.SaversKt$AnnotatedStringSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final AnnotatedString invoke(@NotNull Object it) {
            Saver saver;
            Saver saver2;
            Saver saver3;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            List list2 = null;
            String str = obj != null ? (String) obj : null;
            Intrinsics.checkNotNull(str);
            Object obj2 = list.get(1);
            saver = SaversKt.AnnotationRangeListSaver;
            Boolean bool = Boolean.FALSE;
            List list3 = (Intrinsics.areEqual(obj2, bool) || obj2 == null) ? null : (List) saver.restore(obj2);
            Intrinsics.checkNotNull(list3);
            Object obj3 = list.get(2);
            saver2 = SaversKt.AnnotationRangeListSaver;
            List list4 = (Intrinsics.areEqual(obj3, bool) || obj3 == null) ? null : (List) saver2.restore(obj3);
            Intrinsics.checkNotNull(list4);
            Object obj4 = list.get(3);
            saver3 = SaversKt.AnnotationRangeListSaver;
            if (!Intrinsics.areEqual(obj4, bool) && obj4 != null) {
                list2 = (List) saver3.restore(obj4);
            }
            Intrinsics.checkNotNull(list2);
            return new AnnotatedString(str, list3, list4, list2);
        }
    });
    @NotNull
    private static final Saver<List<AnnotatedString.Range<? extends Object>>, Object> AnnotationRangeListSaver = SaverKt.Saver(new Function2<SaverScope, List<? extends AnnotatedString.Range<? extends Object>>, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeListSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull List<? extends AnnotatedString.Range<? extends Object>> it) {
            Saver saver;
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            ArrayList arrayList = new ArrayList(it.size());
            int size = it.size();
            for (int i10 = 0; i10 < size; i10++) {
                saver = SaversKt.AnnotationRangeSaver;
                arrayList.add(SaversKt.save(it.get(i10), saver, Saver));
            }
            return arrayList;
        }
    }, new Function1<Object, List<? extends AnnotatedString.Range<? extends Object>>>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeListSaver$2
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final List<? extends AnnotatedString.Range<? extends Object>> invoke(@NotNull Object it) {
            Saver saver;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = list.get(i10);
                saver = SaversKt.AnnotationRangeSaver;
                AnnotatedString.Range range = null;
                if (!Intrinsics.areEqual(obj, Boolean.FALSE) && obj != null) {
                    range = (AnnotatedString.Range) saver.restore(obj);
                }
                Intrinsics.checkNotNull(range);
                arrayList.add(range);
            }
            return arrayList;
        }
    });
    @NotNull
    private static final Saver<AnnotatedString.Range<? extends Object>, Object> AnnotationRangeSaver = SaverKt.Saver(new Function2<SaverScope, AnnotatedString.Range<? extends Object>, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeSaver$1

        /* compiled from: Savers.kt */
        @Metadata
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[AnnotationType.values().length];
                iArr[AnnotationType.Paragraph.ordinal()] = 1;
                iArr[AnnotationType.Span.ordinal()] = 2;
                iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                iArr[AnnotationType.String.ordinal()] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull AnnotatedString.Range<? extends Object> it) {
            AnnotationType annotationType;
            Object save;
            Saver saver;
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            Object item = it.getItem();
            if (item instanceof ParagraphStyle) {
                annotationType = AnnotationType.Paragraph;
            } else if (item instanceof SpanStyle) {
                annotationType = AnnotationType.Span;
            } else {
                annotationType = item instanceof VerbatimTtsAnnotation ? AnnotationType.VerbatimTts : AnnotationType.String;
            }
            int i10 = WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()];
            if (i10 == 1) {
                save = SaversKt.save((ParagraphStyle) it.getItem(), SaversKt.getParagraphStyleSaver(), Saver);
            } else if (i10 == 2) {
                save = SaversKt.save((SpanStyle) it.getItem(), SaversKt.getSpanStyleSaver(), Saver);
            } else if (i10 == 3) {
                saver = SaversKt.VerbatimTtsAnnotationSaver;
                save = SaversKt.save((VerbatimTtsAnnotation) it.getItem(), saver, Saver);
            } else if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                save = SaversKt.save(it.getItem());
            }
            return CollectionsKt.h(SaversKt.save(annotationType), save, SaversKt.save(Integer.valueOf(it.getStart())), SaversKt.save(Integer.valueOf(it.getEnd())), SaversKt.save(it.getTag()));
        }
    }, new Function1<Object, AnnotatedString.Range<? extends Object>>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeSaver$2

        /* compiled from: Savers.kt */
        @Metadata
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[AnnotationType.values().length];
                iArr[AnnotationType.Paragraph.ordinal()] = 1;
                iArr[AnnotationType.Span.ordinal()] = 2;
                iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                iArr[AnnotationType.String.ordinal()] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final AnnotatedString.Range<? extends Object> invoke(@NotNull Object it) {
            Saver saver;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            AnnotationType annotationType = obj != null ? (AnnotationType) obj : null;
            Intrinsics.checkNotNull(annotationType);
            Object obj2 = list.get(2);
            Integer num = obj2 != null ? (Integer) obj2 : null;
            Intrinsics.checkNotNull(num);
            int intValue = num.intValue();
            Object obj3 = list.get(3);
            Integer num2 = obj3 != null ? (Integer) obj3 : null;
            Intrinsics.checkNotNull(num2);
            int intValue2 = num2.intValue();
            Object obj4 = list.get(4);
            String str = obj4 != null ? (String) obj4 : null;
            Intrinsics.checkNotNull(str);
            int i10 = WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()];
            if (i10 == 1) {
                Object obj5 = list.get(1);
                Saver<ParagraphStyle, Object> paragraphStyleSaver = SaversKt.getParagraphStyleSaver();
                if (!Intrinsics.areEqual(obj5, Boolean.FALSE) && obj5 != null) {
                    r1 = paragraphStyleSaver.restore(obj5);
                }
                Intrinsics.checkNotNull(r1);
                return new AnnotatedString.Range<>(r1, intValue, intValue2, str);
            } else if (i10 == 2) {
                Object obj6 = list.get(1);
                Saver<SpanStyle, Object> spanStyleSaver = SaversKt.getSpanStyleSaver();
                if (!Intrinsics.areEqual(obj6, Boolean.FALSE) && obj6 != null) {
                    r1 = spanStyleSaver.restore(obj6);
                }
                Intrinsics.checkNotNull(r1);
                return new AnnotatedString.Range<>(r1, intValue, intValue2, str);
            } else if (i10 != 3) {
                if (i10 == 4) {
                    Object obj7 = list.get(1);
                    r1 = obj7 != null ? (String) obj7 : null;
                    Intrinsics.checkNotNull(r1);
                    return new AnnotatedString.Range<>(r1, intValue, intValue2, str);
                }
                throw new NoWhenBranchMatchedException();
            } else {
                Object obj8 = list.get(1);
                saver = SaversKt.VerbatimTtsAnnotationSaver;
                if (!Intrinsics.areEqual(obj8, Boolean.FALSE) && obj8 != null) {
                    r1 = (VerbatimTtsAnnotation) saver.restore(obj8);
                }
                Intrinsics.checkNotNull(r1);
                return new AnnotatedString.Range<>(r1, intValue, intValue2, str);
            }
        }
    });
    @NotNull
    private static final Saver<VerbatimTtsAnnotation, Object> VerbatimTtsAnnotationSaver = SaverKt.Saver(new Function2<SaverScope, VerbatimTtsAnnotation, Object>() { // from class: androidx.compose.ui.text.SaversKt$VerbatimTtsAnnotationSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull VerbatimTtsAnnotation it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return SaversKt.save(it.getVerbatim());
        }
    }, new Function1<Object, VerbatimTtsAnnotation>() { // from class: androidx.compose.ui.text.SaversKt$VerbatimTtsAnnotationSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final VerbatimTtsAnnotation invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new VerbatimTtsAnnotation((String) it);
        }
    });
    @NotNull
    private static final Saver<ParagraphStyle, Object> ParagraphStyleSaver = SaverKt.Saver(new Function2<SaverScope, ParagraphStyle, Object>() { // from class: androidx.compose.ui.text.SaversKt$ParagraphStyleSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull ParagraphStyle it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.h(SaversKt.save(it.m3631getTextAlignbuA522U()), SaversKt.save(it.m3632getTextDirectionmmuk1to()), SaversKt.save(TextUnit.m4220boximpl(it.m3630getLineHeightXSAIIZE()), SaversKt.getSaver(TextUnit.Companion), Saver), SaversKt.save(it.getTextIndent(), SaversKt.getSaver(TextIndent.Companion), Saver));
        }
    }, new Function1<Object, ParagraphStyle>() { // from class: androidx.compose.ui.text.SaversKt$ParagraphStyleSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final ParagraphStyle invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            TextAlign textAlign = obj != null ? (TextAlign) obj : null;
            Object obj2 = list.get(1);
            TextDirection textDirection = obj2 != null ? (TextDirection) obj2 : null;
            Object obj3 = list.get(2);
            Saver<TextUnit, Object> saver = SaversKt.getSaver(TextUnit.Companion);
            Boolean bool = Boolean.FALSE;
            TextUnit restore = (Intrinsics.areEqual(obj3, bool) || obj3 == null) ? null : saver.restore(obj3);
            Intrinsics.checkNotNull(restore);
            long m4239unboximpl = restore.m4239unboximpl();
            Object obj4 = list.get(3);
            return new ParagraphStyle(textAlign, textDirection, m4239unboximpl, (Intrinsics.areEqual(obj4, bool) || obj4 == null) ? null : SaversKt.getSaver(TextIndent.Companion).restore(obj4), null);
        }
    });
    @NotNull
    private static final Saver<SpanStyle, Object> SpanStyleSaver = SaverKt.Saver(new Function2<SaverScope, SpanStyle, Object>() { // from class: androidx.compose.ui.text.SaversKt$SpanStyleSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull SpanStyle it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            Color m1832boximpl = Color.m1832boximpl(it.m3670getColor0d7_KjU());
            Color.Companion companion = Color.Companion;
            Object save = SaversKt.save(m1832boximpl, SaversKt.getSaver(companion), Saver);
            TextUnit m4220boximpl = TextUnit.m4220boximpl(it.m3671getFontSizeXSAIIZE());
            TextUnit.Companion companion2 = TextUnit.Companion;
            return CollectionsKt.h(save, SaversKt.save(m4220boximpl, SaversKt.getSaver(companion2), Saver), SaversKt.save(it.getFontWeight(), SaversKt.getSaver(FontWeight.Companion), Saver), SaversKt.save(it.m3672getFontStyle4Lr2A7w()), SaversKt.save(it.m3673getFontSynthesisZQGJjVo()), SaversKt.save(-1), SaversKt.save(it.getFontFeatureSettings()), SaversKt.save(TextUnit.m4220boximpl(it.m3674getLetterSpacingXSAIIZE()), SaversKt.getSaver(companion2), Saver), SaversKt.save(it.m3669getBaselineShift5SSeXJ0(), SaversKt.getSaver(BaselineShift.Companion), Saver), SaversKt.save(it.getTextGeometricTransform(), SaversKt.getSaver(TextGeometricTransform.Companion), Saver), SaversKt.save(it.getLocaleList(), SaversKt.getSaver(LocaleList.Companion), Saver), SaversKt.save(Color.m1832boximpl(it.m3668getBackground0d7_KjU()), SaversKt.getSaver(companion), Saver), SaversKt.save(it.getTextDecoration(), SaversKt.getSaver(TextDecoration.Companion), Saver), SaversKt.save(it.getShadow(), SaversKt.getSaver(Shadow.Companion), Saver));
        }
    }, new Function1<Object, SpanStyle>() { // from class: androidx.compose.ui.text.SaversKt$SpanStyleSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final SpanStyle invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Color.Companion companion = Color.Companion;
            Saver<Color, Object> saver = SaversKt.getSaver(companion);
            Boolean bool = Boolean.FALSE;
            Color restore = (Intrinsics.areEqual(obj, bool) || obj == null) ? null : saver.restore(obj);
            Intrinsics.checkNotNull(restore);
            long m1852unboximpl = restore.m1852unboximpl();
            Object obj2 = list.get(1);
            TextUnit.Companion companion2 = TextUnit.Companion;
            TextUnit restore2 = (Intrinsics.areEqual(obj2, bool) || obj2 == null) ? null : SaversKt.getSaver(companion2).restore(obj2);
            Intrinsics.checkNotNull(restore2);
            long m4239unboximpl = restore2.m4239unboximpl();
            Object obj3 = list.get(2);
            FontWeight restore3 = (Intrinsics.areEqual(obj3, bool) || obj3 == null) ? null : SaversKt.getSaver(FontWeight.Companion).restore(obj3);
            Object obj4 = list.get(3);
            FontStyle fontStyle = obj4 != null ? (FontStyle) obj4 : null;
            Object obj5 = list.get(4);
            FontSynthesis fontSynthesis = obj5 != null ? (FontSynthesis) obj5 : null;
            Object obj6 = list.get(6);
            String str = obj6 != null ? (String) obj6 : null;
            Object obj7 = list.get(7);
            TextUnit restore4 = (Intrinsics.areEqual(obj7, bool) || obj7 == null) ? null : SaversKt.getSaver(companion2).restore(obj7);
            Intrinsics.checkNotNull(restore4);
            long m4239unboximpl2 = restore4.m4239unboximpl();
            Object obj8 = list.get(8);
            BaselineShift restore5 = (Intrinsics.areEqual(obj8, bool) || obj8 == null) ? null : SaversKt.getSaver(BaselineShift.Companion).restore(obj8);
            Object obj9 = list.get(9);
            TextGeometricTransform restore6 = (Intrinsics.areEqual(obj9, bool) || obj9 == null) ? null : SaversKt.getSaver(TextGeometricTransform.Companion).restore(obj9);
            Object obj10 = list.get(10);
            LocaleList restore7 = (Intrinsics.areEqual(obj10, bool) || obj10 == null) ? null : SaversKt.getSaver(LocaleList.Companion).restore(obj10);
            Object obj11 = list.get(11);
            Color restore8 = (Intrinsics.areEqual(obj11, bool) || obj11 == null) ? null : SaversKt.getSaver(companion).restore(obj11);
            Intrinsics.checkNotNull(restore8);
            long m1852unboximpl2 = restore8.m1852unboximpl();
            Object obj12 = list.get(12);
            TextDecoration restore9 = (Intrinsics.areEqual(obj12, bool) || obj12 == null) ? null : SaversKt.getSaver(TextDecoration.Companion).restore(obj12);
            Object obj13 = list.get(13);
            return new SpanStyle(m1852unboximpl, m4239unboximpl, restore3, fontStyle, fontSynthesis, (FontFamily) null, str, m4239unboximpl2, restore5, restore6, restore7, m1852unboximpl2, restore9, (Intrinsics.areEqual(obj13, bool) || obj13 == null) ? null : SaversKt.getSaver(Shadow.Companion).restore(obj13), 32, (DefaultConstructorMarker) null);
        }
    });
    @NotNull
    private static final Saver<TextDecoration, Object> TextDecorationSaver = SaverKt.Saver(new Function2<SaverScope, TextDecoration, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextDecorationSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull TextDecoration it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf(it.getMask());
        }
    }, new Function1<Object, TextDecoration>() { // from class: androidx.compose.ui.text.SaversKt$TextDecorationSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final TextDecoration invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new TextDecoration(((Integer) it).intValue());
        }
    });
    @NotNull
    private static final Saver<TextGeometricTransform, Object> TextGeometricTransformSaver = SaverKt.Saver(new Function2<SaverScope, TextGeometricTransform, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextGeometricTransformSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull TextGeometricTransform it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.h(Float.valueOf(it.getScaleX()), Float.valueOf(it.getSkewX()));
        }
    }, new Function1<Object, TextGeometricTransform>() { // from class: androidx.compose.ui.text.SaversKt$TextGeometricTransformSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final TextGeometricTransform invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            return new TextGeometricTransform(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue());
        }
    });
    @NotNull
    private static final Saver<TextIndent, Object> TextIndentSaver = SaverKt.Saver(new Function2<SaverScope, TextIndent, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextIndentSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull TextIndent it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            TextUnit m4220boximpl = TextUnit.m4220boximpl(it.m3978getFirstLineXSAIIZE());
            TextUnit.Companion companion = TextUnit.Companion;
            return CollectionsKt.h(SaversKt.save(m4220boximpl, SaversKt.getSaver(companion), Saver), SaversKt.save(TextUnit.m4220boximpl(it.m3979getRestLineXSAIIZE()), SaversKt.getSaver(companion), Saver));
        }
    }, new Function1<Object, TextIndent>() { // from class: androidx.compose.ui.text.SaversKt$TextIndentSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final TextIndent invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            TextUnit.Companion companion = TextUnit.Companion;
            Saver<TextUnit, Object> saver = SaversKt.getSaver(companion);
            Boolean bool = Boolean.FALSE;
            TextUnit textUnit = null;
            TextUnit restore = (Intrinsics.areEqual(obj, bool) || obj == null) ? null : saver.restore(obj);
            Intrinsics.checkNotNull(restore);
            long m4239unboximpl = restore.m4239unboximpl();
            Object obj2 = list.get(1);
            Saver<TextUnit, Object> saver2 = SaversKt.getSaver(companion);
            if (!Intrinsics.areEqual(obj2, bool) && obj2 != null) {
                textUnit = saver2.restore(obj2);
            }
            Intrinsics.checkNotNull(textUnit);
            return new TextIndent(m4239unboximpl, textUnit.m4239unboximpl(), null);
        }
    });
    @NotNull
    private static final Saver<FontWeight, Object> FontWeightSaver = SaverKt.Saver(new Function2<SaverScope, FontWeight, Object>() { // from class: androidx.compose.ui.text.SaversKt$FontWeightSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull FontWeight it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf(it.getWeight());
        }
    }, new Function1<Object, FontWeight>() { // from class: androidx.compose.ui.text.SaversKt$FontWeightSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final FontWeight invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new FontWeight(((Integer) it).intValue());
        }
    });
    @NotNull
    private static final Saver<BaselineShift, Object> BaselineShiftSaver = SaverKt.Saver(new Function2<SaverScope, BaselineShift, Object>() { // from class: androidx.compose.ui.text.SaversKt$BaselineShiftSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, BaselineShift baselineShift) {
            return m3652invoke8a2Sb4w(saverScope, baselineShift.m3912unboximpl());
        }

        @Nullable
        /* renamed from: invoke-8a2Sb4w  reason: not valid java name */
        public final Object m3652invoke8a2Sb4w(@NotNull SaverScope Saver, float f10) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return Float.valueOf(f10);
        }
    }, new Function1<Object, BaselineShift>() { // from class: androidx.compose.ui.text.SaversKt$BaselineShiftSaver$2
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        /* renamed from: invoke-jTk7eUs  reason: not valid java name */
        public final BaselineShift invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return BaselineShift.m3906boximpl(BaselineShift.m3907constructorimpl(((Float) it).floatValue()));
        }
    });
    @NotNull
    private static final Saver<TextRange, Object> TextRangeSaver = SaverKt.Saver(new Function2<SaverScope, TextRange, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextRangeSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, TextRange textRange) {
            return m3658invokeFDrldGo(saverScope, textRange.m3701unboximpl());
        }

        @Nullable
        /* renamed from: invoke-FDrldGo  reason: not valid java name */
        public final Object m3658invokeFDrldGo(@NotNull SaverScope Saver, long j10) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return CollectionsKt.h((Integer) SaversKt.save(Integer.valueOf(TextRange.m3697getStartimpl(j10))), (Integer) SaversKt.save(Integer.valueOf(TextRange.m3692getEndimpl(j10))));
        }
    }, new Function1<Object, TextRange>() { // from class: androidx.compose.ui.text.SaversKt$TextRangeSaver$2
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        /* renamed from: invoke-VqIyPBM  reason: not valid java name */
        public final TextRange invoke(@NotNull Object it) {
            Integer num;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Integer num2 = null;
            if (obj != null) {
                num = (Integer) obj;
            } else {
                num = null;
            }
            Intrinsics.checkNotNull(num);
            int intValue = num.intValue();
            Object obj2 = list.get(1);
            if (obj2 != null) {
                num2 = (Integer) obj2;
            }
            Intrinsics.checkNotNull(num2);
            return TextRange.m3685boximpl(TextRangeKt.TextRange(intValue, num2.intValue()));
        }
    });
    @NotNull
    private static final Saver<Shadow, Object> ShadowSaver = SaverKt.Saver(new Function2<SaverScope, Shadow, Object>() { // from class: androidx.compose.ui.text.SaversKt$ShadowSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull Shadow it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.h(SaversKt.save(Color.m1832boximpl(it.m2126getColor0d7_KjU()), SaversKt.getSaver(Color.Companion), Saver), SaversKt.save(Offset.m1595boximpl(it.m2127getOffsetF1C5BW0()), SaversKt.getSaver(Offset.Companion), Saver), SaversKt.save(Float.valueOf(it.getBlurRadius())));
        }
    }, new Function1<Object, Shadow>() { // from class: androidx.compose.ui.text.SaversKt$ShadowSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final Shadow invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Saver<Color, Object> saver = SaversKt.getSaver(Color.Companion);
            Boolean bool = Boolean.FALSE;
            Color restore = (Intrinsics.areEqual(obj, bool) || obj == null) ? null : saver.restore(obj);
            Intrinsics.checkNotNull(restore);
            long m1852unboximpl = restore.m1852unboximpl();
            Object obj2 = list.get(1);
            Offset restore2 = (Intrinsics.areEqual(obj2, bool) || obj2 == null) ? null : SaversKt.getSaver(Offset.Companion).restore(obj2);
            Intrinsics.checkNotNull(restore2);
            long m1616unboximpl = restore2.m1616unboximpl();
            Object obj3 = list.get(2);
            Float f10 = obj3 != null ? (Float) obj3 : null;
            Intrinsics.checkNotNull(f10);
            return new Shadow(m1852unboximpl, m1616unboximpl, f10.floatValue(), null);
        }
    });
    @NotNull
    private static final Saver<Color, Object> ColorSaver = SaverKt.Saver(new Function2<SaverScope, Color, Object>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Color color) {
            return m3654invoke4WTKRHQ(saverScope, color.m1852unboximpl());
        }

        @Nullable
        /* renamed from: invoke-4WTKRHQ  reason: not valid java name */
        public final Object m3654invoke4WTKRHQ(@NotNull SaverScope Saver, long j10) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return p.a(j10);
        }
    }, new Function1<Object, Color>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$2
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        /* renamed from: invoke-ijrfgN4  reason: not valid java name */
        public final Color invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Color.m1832boximpl(Color.m1838constructorimpl(((p) it).g()));
        }
    });
    @NotNull
    private static final Saver<TextUnit, Object> TextUnitSaver = SaverKt.Saver(new Function2<SaverScope, TextUnit, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextUnitSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, TextUnit textUnit) {
            return m3660invokempE4wyQ(saverScope, textUnit.m4239unboximpl());
        }

        @Nullable
        /* renamed from: invoke-mpE4wyQ  reason: not valid java name */
        public final Object m3660invokempE4wyQ(@NotNull SaverScope Saver, long j10) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return CollectionsKt.h(SaversKt.save(Float.valueOf(TextUnit.m4230getValueimpl(j10))), SaversKt.save(TextUnitType.m4255boximpl(TextUnit.m4229getTypeUIouoOA(j10))));
        }
    }, new Function1<Object, TextUnit>() { // from class: androidx.compose.ui.text.SaversKt$TextUnitSaver$2
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        /* renamed from: invoke-XNhUCwk  reason: not valid java name */
        public final TextUnit invoke(@NotNull Object it) {
            Float f10;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            TextUnitType textUnitType = null;
            if (obj != null) {
                f10 = (Float) obj;
            } else {
                f10 = null;
            }
            Intrinsics.checkNotNull(f10);
            float floatValue = f10.floatValue();
            Object obj2 = list.get(1);
            if (obj2 != null) {
                textUnitType = (TextUnitType) obj2;
            }
            Intrinsics.checkNotNull(textUnitType);
            return TextUnit.m4220boximpl(TextUnitKt.m4242TextUnitanM5pPY(floatValue, textUnitType.m4261unboximpl()));
        }
    });
    @NotNull
    private static final Saver<Offset, Object> OffsetSaver = SaverKt.Saver(new Function2<SaverScope, Offset, Object>() { // from class: androidx.compose.ui.text.SaversKt$OffsetSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Offset offset) {
            return m3656invokeUv8p0NA(saverScope, offset.m1616unboximpl());
        }

        @Nullable
        /* renamed from: invoke-Uv8p0NA  reason: not valid java name */
        public final Object m3656invokeUv8p0NA(@NotNull SaverScope Saver, long j10) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            if (Offset.m1603equalsimpl0(j10, Offset.Companion.m1621getUnspecifiedF1C5BW0())) {
                return Boolean.FALSE;
            }
            return CollectionsKt.h((Float) SaversKt.save(Float.valueOf(Offset.m1606getXimpl(j10))), (Float) SaversKt.save(Float.valueOf(Offset.m1607getYimpl(j10))));
        }
    }, new Function1<Object, Offset>() { // from class: androidx.compose.ui.text.SaversKt$OffsetSaver$2
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        /* renamed from: invoke-x-9fifI  reason: not valid java name */
        public final Offset invoke(@NotNull Object it) {
            Float f10;
            Intrinsics.checkNotNullParameter(it, "it");
            if (Intrinsics.areEqual(it, Boolean.FALSE)) {
                return Offset.m1595boximpl(Offset.Companion.m1621getUnspecifiedF1C5BW0());
            }
            List list = (List) it;
            Object obj = list.get(0);
            Float f11 = null;
            if (obj != null) {
                f10 = (Float) obj;
            } else {
                f10 = null;
            }
            Intrinsics.checkNotNull(f10);
            float floatValue = f10.floatValue();
            Object obj2 = list.get(1);
            if (obj2 != null) {
                f11 = (Float) obj2;
            }
            Intrinsics.checkNotNull(f11);
            return Offset.m1595boximpl(OffsetKt.Offset(floatValue, f11.floatValue()));
        }
    });
    @NotNull
    private static final Saver<LocaleList, Object> LocaleListSaver = SaverKt.Saver(new Function2<SaverScope, LocaleList, Object>() { // from class: androidx.compose.ui.text.SaversKt$LocaleListSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull LocaleList it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            List<Locale> localeList = it.getLocaleList();
            ArrayList arrayList = new ArrayList(localeList.size());
            int size = localeList.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(SaversKt.save(localeList.get(i10), SaversKt.getSaver(Locale.Companion), Saver));
            }
            return arrayList;
        }
    }, new Function1<Object, LocaleList>() { // from class: androidx.compose.ui.text.SaversKt$LocaleListSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final LocaleList invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = list.get(i10);
                Saver<Locale, Object> saver = SaversKt.getSaver(Locale.Companion);
                Locale locale = null;
                if (!Intrinsics.areEqual(obj, Boolean.FALSE) && obj != null) {
                    locale = saver.restore(obj);
                }
                Intrinsics.checkNotNull(locale);
                arrayList.add(locale);
            }
            return new LocaleList(arrayList);
        }
    });
    @NotNull
    private static final Saver<Locale, Object> LocaleSaver = SaverKt.Saver(new Function2<SaverScope, Locale, Object>() { // from class: androidx.compose.ui.text.SaversKt$LocaleSaver$1
        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull SaverScope Saver, @NotNull Locale it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return it.toLanguageTag();
        }
    }, new Function1<Object, Locale>() { // from class: androidx.compose.ui.text.SaversKt$LocaleSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final Locale invoke(@NotNull Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new Locale((String) it);
        }
    });

    @NotNull
    public static final Saver<AnnotatedString, Object> getAnnotatedStringSaver() {
        return AnnotatedStringSaver;
    }

    @NotNull
    public static final Saver<ParagraphStyle, Object> getParagraphStyleSaver() {
        return ParagraphStyleSaver;
    }

    @NotNull
    public static final Saver<TextDecoration, Object> getSaver(@NotNull TextDecoration.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextDecorationSaver;
    }

    @NotNull
    public static final Saver<SpanStyle, Object> getSpanStyleSaver() {
        return SpanStyleSaver;
    }

    public static final /* synthetic */ <T extends Saver<Original, Saveable>, Original, Saveable, Result> Result restore(Saveable saveable, T saver) {
        Intrinsics.checkNotNullParameter(saver, "saver");
        if (Intrinsics.areEqual(saveable, Boolean.FALSE) || saveable == null) {
            return null;
        }
        Result result = (Result) saver.restore(saveable);
        Intrinsics.reifiedOperationMarker(1, "Result");
        return result;
    }

    @Nullable
    public static final <T> T save(@Nullable T t10) {
        return t10;
    }

    @NotNull
    public static final Saver<TextGeometricTransform, Object> getSaver(@NotNull TextGeometricTransform.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextGeometricTransformSaver;
    }

    @NotNull
    public static final <T extends Saver<Original, Saveable>, Original, Saveable> Object save(@Nullable Original original, @NotNull T saver, @NotNull SaverScope scope) {
        Object save;
        Intrinsics.checkNotNullParameter(saver, "saver");
        Intrinsics.checkNotNullParameter(scope, "scope");
        return (original == null || (save = saver.save(scope, original)) == null) ? Boolean.FALSE : save;
    }

    @NotNull
    public static final Saver<TextIndent, Object> getSaver(@NotNull TextIndent.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextIndentSaver;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <Result> Result restore(Object obj) {
        if (obj != 0) {
            Intrinsics.reifiedOperationMarker(1, "Result");
            return obj;
        }
        return null;
    }

    @NotNull
    public static final Saver<FontWeight, Object> getSaver(@NotNull FontWeight.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return FontWeightSaver;
    }

    @NotNull
    public static final Saver<BaselineShift, Object> getSaver(@NotNull BaselineShift.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return BaselineShiftSaver;
    }

    @NotNull
    public static final Saver<TextRange, Object> getSaver(@NotNull TextRange.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextRangeSaver;
    }

    @NotNull
    public static final Saver<Shadow, Object> getSaver(@NotNull Shadow.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return ShadowSaver;
    }

    @NotNull
    public static final Saver<Color, Object> getSaver(@NotNull Color.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return ColorSaver;
    }

    @NotNull
    public static final Saver<TextUnit, Object> getSaver(@NotNull TextUnit.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextUnitSaver;
    }

    @NotNull
    public static final Saver<Offset, Object> getSaver(@NotNull Offset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return OffsetSaver;
    }

    @NotNull
    public static final Saver<LocaleList, Object> getSaver(@NotNull LocaleList.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return LocaleListSaver;
    }

    @NotNull
    public static final Saver<Locale, Object> getSaver(@NotNull Locale.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return LocaleSaver;
    }

    private static /* synthetic */ void getTextUnitSaver$annotations() {
    }
}
