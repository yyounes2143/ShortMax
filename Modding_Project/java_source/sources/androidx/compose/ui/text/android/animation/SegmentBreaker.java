package androidx.compose.ui.text.android.animation;

import android.text.Layout;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.android.InternalPlatformTextApi;
import androidx.compose.ui.text.android.LayoutCompatKt;
import androidx.compose.ui.text.android.LayoutHelper;
import java.text.Bidi;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SegmentBreaker.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class SegmentBreaker {
    @NotNull
    public static final SegmentBreaker INSTANCE = new SegmentBreaker();

    /* compiled from: SegmentBreaker.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SegmentType.values().length];
            iArr[SegmentType.Document.ordinal()] = 1;
            iArr[SegmentType.Paragraph.ordinal()] = 2;
            iArr[SegmentType.Line.ordinal()] = 3;
            iArr[SegmentType.Word.ordinal()] = 4;
            iArr[SegmentType.Character.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private SegmentBreaker() {
    }

    private final List<Integer> breakInWords(LayoutHelper layoutHelper) {
        CharSequence text = layoutHelper.getLayout().getText();
        Intrinsics.checkNotNullExpressionValue(text, "text");
        BreakIterator lineInstance = BreakIterator.getLineInstance(Locale.getDefault());
        Intrinsics.checkNotNullExpressionValue(lineInstance, "getLineInstance(Locale.getDefault())");
        List<Integer> breakWithBreakIterator = breakWithBreakIterator(text, lineInstance);
        TreeSet treeSet = new TreeSet();
        int size = breakWithBreakIterator.size();
        for (int i10 = 0; i10 < size; i10++) {
            treeSet.add(Integer.valueOf(breakWithBreakIterator.get(i10).intValue()));
        }
        int paragraphCount = layoutHelper.getParagraphCount();
        for (int i11 = 0; i11 < paragraphCount; i11++) {
            Bidi analyzeBidi = layoutHelper.analyzeBidi(i11);
            if (analyzeBidi != null) {
                int paragraphStart = layoutHelper.getParagraphStart(i11);
                int runCount = analyzeBidi.getRunCount();
                for (int i12 = 0; i12 < runCount; i12++) {
                    treeSet.add(Integer.valueOf(analyzeBidi.getRunStart(i12) + paragraphStart));
                }
            }
        }
        return CollectionsKt.d1(treeSet);
    }

    private final List<Segment> breakSegmentWithChar(LayoutHelper layoutHelper, boolean z10) {
        boolean z11;
        boolean z12;
        ArrayList arrayList = new ArrayList();
        List<Integer> breakOffsets = breakOffsets(layoutHelper, SegmentType.Character);
        if (breakOffsets.size() != 0) {
            boolean z13 = true;
            if (breakOffsets.size() != 1) {
                ArrayList arrayList2 = new ArrayList();
                boolean z14 = false;
                Integer num = breakOffsets.get(0);
                int p10 = CollectionsKt.p(breakOffsets);
                int i10 = 0;
                while (i10 < p10) {
                    i10++;
                    Integer num2 = breakOffsets.get(i10);
                    int intValue = num2.intValue();
                    int intValue2 = num.intValue();
                    Layout layout = layoutHelper.getLayout();
                    if (!z10 || intValue != intValue2 + 1 || !layoutHelper.isLineEndSpace(layout.getText().charAt(intValue2))) {
                        int lineForOffset = LayoutCompatKt.getLineForOffset(layout, intValue2, z14);
                        if (layout.getParagraphDirection(lineForOffset) == -1) {
                            z11 = z13;
                        } else {
                            z11 = z14;
                        }
                        boolean isRtlCharAt = layout.isRtlCharAt(intValue2);
                        if (isRtlCharAt != z11) {
                            z13 = z14;
                        }
                        int ceil = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue2, z13, z14));
                        if (isRtlCharAt == z11) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        int ceil2 = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue, z12, true));
                        arrayList.add(new Segment(intValue2, intValue, Math.min(ceil, ceil2), layout.getLineTop(lineForOffset), Math.max(ceil, ceil2), layout.getLineBottom(lineForOffset)));
                    }
                    arrayList2.add(Unit.f60915a);
                    num = num2;
                    z13 = true;
                    z14 = false;
                }
                return arrayList;
            }
        }
        CollectionsKt.n();
        return arrayList;
    }

    private final List<Segment> breakSegmentWithDocument(LayoutHelper layoutHelper) {
        return CollectionsKt.e(new Segment(0, layoutHelper.getLayout().getText().length(), 0, 0, layoutHelper.getLayout().getWidth(), layoutHelper.getLayout().getHeight()));
    }

    private final List<Segment> breakSegmentWithLine(LayoutHelper layoutHelper, boolean z10) {
        int i10;
        int width;
        ArrayList arrayList = new ArrayList();
        Layout layout = layoutHelper.getLayout();
        int lineCount = layoutHelper.getLayout().getLineCount();
        for (int i11 = 0; i11 < lineCount; i11++) {
            int lineStart = layout.getLineStart(i11);
            int lineEnd = layout.getLineEnd(i11);
            if (z10) {
                i10 = (int) Math.ceil(layout.getLineLeft(i11));
            } else {
                i10 = 0;
            }
            int lineTop = layout.getLineTop(i11);
            if (z10) {
                width = (int) Math.ceil(layout.getLineRight(i11));
            } else {
                width = layout.getWidth();
            }
            arrayList.add(new Segment(lineStart, lineEnd, i10, lineTop, width, layout.getLineBottom(i11)));
        }
        return arrayList;
    }

    private final List<Segment> breakSegmentWithParagraph(LayoutHelper layoutHelper) {
        ArrayList arrayList = new ArrayList();
        Layout layout = layoutHelper.getLayout();
        int paragraphCount = layoutHelper.getParagraphCount();
        for (int i10 = 0; i10 < paragraphCount; i10++) {
            int paragraphStart = layoutHelper.getParagraphStart(i10);
            int paragraphEnd = layoutHelper.getParagraphEnd(i10);
            arrayList.add(new Segment(paragraphStart, paragraphEnd, 0, layout.getLineTop(LayoutCompatKt.getLineForOffset(layout, paragraphStart, false)), layout.getWidth(), layout.getLineBottom(LayoutCompatKt.getLineForOffset(layout, paragraphEnd, true))));
        }
        return arrayList;
    }

    private final List<Segment> breakSegmentWithWord(LayoutHelper layoutHelper, boolean z10) {
        boolean z11;
        boolean z12;
        int i10;
        Layout layout = layoutHelper.getLayout();
        int ceil = (int) Math.ceil(layout.getPaint().measureText(" "));
        List<Integer> breakOffsets = breakOffsets(layoutHelper, SegmentType.Word);
        if (breakOffsets.size() != 0) {
            boolean z13 = true;
            if (breakOffsets.size() != 1) {
                ArrayList arrayList = new ArrayList();
                boolean z14 = false;
                Integer num = breakOffsets.get(0);
                int p10 = CollectionsKt.p(breakOffsets);
                int i11 = 0;
                while (i11 < p10) {
                    i11++;
                    Integer num2 = breakOffsets.get(i11);
                    int intValue = num2.intValue();
                    int intValue2 = num.intValue();
                    int lineForOffset = LayoutCompatKt.getLineForOffset(layout, intValue2, z14);
                    if (layout.getParagraphDirection(lineForOffset) == -1) {
                        z11 = z13;
                    } else {
                        z11 = z14;
                    }
                    boolean isRtlCharAt = layout.isRtlCharAt(intValue2);
                    if (isRtlCharAt != z11) {
                        z13 = z14;
                    }
                    int ceil2 = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue2, z13, z14));
                    if (isRtlCharAt == z11) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    int ceil3 = (int) Math.ceil(layoutHelper.getHorizontalPosition(intValue, z12, true));
                    int min = Math.min(ceil2, ceil3);
                    int max = Math.max(ceil2, ceil3);
                    if (z10 && intValue != 0 && layout.getText().charAt(intValue - 1) == ' ') {
                        i10 = lineForOffset;
                        if (layout.getLineEnd(i10) != intValue) {
                            if (isRtlCharAt) {
                                min += ceil;
                            } else {
                                max -= ceil;
                            }
                        }
                    } else {
                        i10 = lineForOffset;
                    }
                    arrayList.add(new Segment(intValue2, intValue, min, layout.getLineTop(i10), max, layout.getLineBottom(i10)));
                    num = num2;
                    z13 = true;
                    z14 = false;
                }
                return arrayList;
            }
        }
        return CollectionsKt.n();
    }

    private final List<Integer> breakWithBreakIterator(CharSequence charSequence, BreakIterator breakIterator) {
        CharSequenceCharacterIterator charSequenceCharacterIterator = new CharSequenceCharacterIterator(charSequence, 0, charSequence.length());
        List<Integer> t10 = CollectionsKt.t(0);
        breakIterator.setText(charSequenceCharacterIterator);
        while (breakIterator.next() != -1) {
            t10.add(Integer.valueOf(breakIterator.current()));
        }
        return t10;
    }

    @NotNull
    public final List<Integer> breakOffsets(@NotNull LayoutHelper layoutHelper, @NotNull SegmentType segmentType) {
        Intrinsics.checkNotNullParameter(layoutHelper, "layoutHelper");
        Intrinsics.checkNotNullParameter(segmentType, "segmentType");
        Layout layout = layoutHelper.getLayout();
        CharSequence text = layout.getText();
        int i10 = WhenMappings.$EnumSwitchMapping$0[segmentType.ordinal()];
        int i11 = 0;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            Intrinsics.checkNotNullExpressionValue(text, "text");
                            BreakIterator characterInstance = BreakIterator.getCharacterInstance(Locale.getDefault());
                            Intrinsics.checkNotNullExpressionValue(characterInstance, "getCharacterInstance(Locale.getDefault())");
                            return breakWithBreakIterator(text, characterInstance);
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return breakInWords(layoutHelper);
                }
                List<Integer> t10 = CollectionsKt.t(0);
                int lineCount = layout.getLineCount();
                while (i11 < lineCount) {
                    t10.add(Integer.valueOf(layout.getLineEnd(i11)));
                    i11++;
                }
                return t10;
            }
            List<Integer> t11 = CollectionsKt.t(0);
            int paragraphCount = layoutHelper.getParagraphCount();
            while (i11 < paragraphCount) {
                t11.add(Integer.valueOf(layoutHelper.getParagraphEnd(i11)));
                i11++;
            }
            return t11;
        }
        return CollectionsKt.q(0, Integer.valueOf(text.length()));
    }

    @NotNull
    public final List<Segment> breakSegments(@NotNull LayoutHelper layoutHelper, @NotNull SegmentType segmentType, boolean z10) {
        Intrinsics.checkNotNullParameter(layoutHelper, "layoutHelper");
        Intrinsics.checkNotNullParameter(segmentType, "segmentType");
        int i10 = WhenMappings.$EnumSwitchMapping$0[segmentType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            return breakSegmentWithChar(layoutHelper, z10);
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return breakSegmentWithWord(layoutHelper, z10);
                }
                return breakSegmentWithLine(layoutHelper, z10);
            }
            return breakSegmentWithParagraph(layoutHelper);
        }
        return breakSegmentWithDocument(layoutHelper);
    }
}
