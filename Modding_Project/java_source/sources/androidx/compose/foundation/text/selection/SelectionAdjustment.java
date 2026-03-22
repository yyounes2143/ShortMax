package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectionAdjustment.kt */
@Metadata
/* loaded from: classes.dex */
public interface SelectionAdjustment {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: SelectionAdjustment.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @NotNull
        private static final SelectionAdjustment None = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$None$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo820adjustZXO7KMw(@NotNull TextLayoutResult textLayoutResult, long j10, int i10, boolean z10, @Nullable TextRange textRange) {
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                return j10;
            }
        };
        @NotNull
        private static final SelectionAdjustment Character = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Character$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo820adjustZXO7KMw(@NotNull TextLayoutResult textLayoutResult, long j10, int i10, boolean z10, @Nullable TextRange textRange) {
                boolean z11;
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                if (TextRange.m3691getCollapsedimpl(j10)) {
                    if (textRange != null) {
                        z11 = TextRange.m3696getReversedimpl(textRange.m3701unboximpl());
                    } else {
                        z11 = false;
                    }
                    return SelectionAdjustmentKt.ensureAtLeastOneChar(TextRange.m3697getStartimpl(j10), StringsKt.k0(textLayoutResult.getLayoutInput().getText()), z10, z11);
                }
                return j10;
            }
        };
        @NotNull
        private static final SelectionAdjustment Word = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Word$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo820adjustZXO7KMw(@NotNull TextLayoutResult textLayoutResult, long j10, int i10, boolean z10, @Nullable TextRange textRange) {
                long m822adjustByBoundaryDvylE;
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                m822adjustByBoundaryDvylE = SelectionAdjustment.Companion.$$INSTANCE.m822adjustByBoundaryDvylE(textLayoutResult, j10, new SelectionAdjustment$Companion$Word$1$adjust$1(textLayoutResult));
                return m822adjustByBoundaryDvylE;
            }
        };
        @NotNull
        private static final SelectionAdjustment Paragraph = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$Paragraph$1
            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo820adjustZXO7KMw(@NotNull TextLayoutResult textLayoutResult, long j10, int i10, boolean z10, @Nullable TextRange textRange) {
                long m822adjustByBoundaryDvylE;
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                m822adjustByBoundaryDvylE = SelectionAdjustment.Companion.$$INSTANCE.m822adjustByBoundaryDvylE(textLayoutResult, j10, new SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1(textLayoutResult.getLayoutInput().getText()));
                return m822adjustByBoundaryDvylE;
            }
        };
        @NotNull
        private static final SelectionAdjustment CharacterWithWordAccelerate = new SelectionAdjustment() { // from class: androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$CharacterWithWordAccelerate$1
            private final boolean isAtWordBoundary(TextLayoutResult textLayoutResult, int i10) {
                long m3684getWordBoundaryjx7JFs = textLayoutResult.m3684getWordBoundaryjx7JFs(i10);
                if (i10 != TextRange.m3697getStartimpl(m3684getWordBoundaryjx7JFs) && i10 != TextRange.m3692getEndimpl(m3684getWordBoundaryjx7JFs)) {
                    return false;
                }
                return true;
            }

            private final boolean isExpanding(int i10, int i11, boolean z10, boolean z11) {
                if (i11 == -1) {
                    return true;
                }
                if (i10 == i11) {
                    return false;
                }
                if (z10 ^ z11) {
                    if (i10 < i11) {
                        return true;
                    }
                } else if (i10 > i11) {
                    return true;
                }
                return false;
            }

            private final int snapToWordBoundary(TextLayoutResult textLayoutResult, int i10, int i11, int i12, boolean z10, boolean z11) {
                int lineStart;
                int lineEnd$default;
                long m3684getWordBoundaryjx7JFs = textLayoutResult.m3684getWordBoundaryjx7JFs(i10);
                if (textLayoutResult.getLineForOffset(TextRange.m3697getStartimpl(m3684getWordBoundaryjx7JFs)) == i11) {
                    lineStart = TextRange.m3697getStartimpl(m3684getWordBoundaryjx7JFs);
                } else {
                    lineStart = textLayoutResult.getLineStart(i11);
                }
                if (textLayoutResult.getLineForOffset(TextRange.m3692getEndimpl(m3684getWordBoundaryjx7JFs)) == i11) {
                    lineEnd$default = TextRange.m3692getEndimpl(m3684getWordBoundaryjx7JFs);
                } else {
                    lineEnd$default = TextLayoutResult.getLineEnd$default(textLayoutResult, i11, false, 2, null);
                }
                if (lineStart == i12) {
                    return lineEnd$default;
                }
                if (lineEnd$default == i12) {
                    return lineStart;
                }
                int i13 = (lineStart + lineEnd$default) / 2;
                if (z10 ^ z11) {
                    if (i10 <= i13) {
                        return lineStart;
                    }
                } else if (i10 < i13) {
                    return lineStart;
                }
                return lineEnd$default;
            }

            private final int updateSelectionBoundary(TextLayoutResult textLayoutResult, int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
                if (i10 == i11) {
                    return i12;
                }
                int lineForOffset = textLayoutResult.getLineForOffset(i10);
                if (lineForOffset != textLayoutResult.getLineForOffset(i12)) {
                    return snapToWordBoundary(textLayoutResult, i10, lineForOffset, i13, z10, z11);
                }
                if (!isExpanding(i10, i11, z10, z11)) {
                    return i10;
                }
                if (!isAtWordBoundary(textLayoutResult, i12)) {
                    return i10;
                }
                return snapToWordBoundary(textLayoutResult, i10, lineForOffset, i13, z10, z11);
            }

            @Override // androidx.compose.foundation.text.selection.SelectionAdjustment
            /* renamed from: adjust-ZXO7KMw */
            public long mo820adjustZXO7KMw(@NotNull TextLayoutResult textLayoutResult, long j10, int i10, boolean z10, @Nullable TextRange textRange) {
                int updateSelectionBoundary;
                int i11;
                Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
                if (textRange == null) {
                    return SelectionAdjustment.Companion.$$INSTANCE.getWord().mo820adjustZXO7KMw(textLayoutResult, j10, i10, z10, textRange);
                }
                if (TextRange.m3691getCollapsedimpl(j10)) {
                    return SelectionAdjustmentKt.ensureAtLeastOneChar(TextRange.m3697getStartimpl(j10), StringsKt.k0(textLayoutResult.getLayoutInput().getText()), z10, TextRange.m3696getReversedimpl(textRange.m3701unboximpl()));
                }
                if (z10) {
                    i11 = updateSelectionBoundary(textLayoutResult, TextRange.m3697getStartimpl(j10), i10, TextRange.m3697getStartimpl(textRange.m3701unboximpl()), TextRange.m3692getEndimpl(j10), true, TextRange.m3696getReversedimpl(j10));
                    updateSelectionBoundary = TextRange.m3692getEndimpl(j10);
                } else {
                    int m3697getStartimpl = TextRange.m3697getStartimpl(j10);
                    updateSelectionBoundary = updateSelectionBoundary(textLayoutResult, TextRange.m3692getEndimpl(j10), i10, TextRange.m3692getEndimpl(textRange.m3701unboximpl()), TextRange.m3697getStartimpl(j10), false, TextRange.m3696getReversedimpl(j10));
                    i11 = m3697getStartimpl;
                }
                return TextRangeKt.TextRange(i11, updateSelectionBoundary);
            }
        };

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: adjustByBoundary--Dv-ylE  reason: not valid java name */
        public final long m822adjustByBoundaryDvylE(TextLayoutResult textLayoutResult, long j10, Function1<? super Integer, TextRange> function1) {
            int m3697getStartimpl;
            int m3692getEndimpl;
            if (textLayoutResult.getLayoutInput().getText().length() == 0) {
                return TextRange.Companion.m3702getZerod9O1mEE();
            }
            int k02 = StringsKt.k0(textLayoutResult.getLayoutInput().getText());
            long m3701unboximpl = function1.invoke(Integer.valueOf(e.n(TextRange.m3697getStartimpl(j10), 0, k02))).m3701unboximpl();
            long m3701unboximpl2 = function1.invoke(Integer.valueOf(e.n(TextRange.m3692getEndimpl(j10), 0, k02))).m3701unboximpl();
            if (TextRange.m3696getReversedimpl(j10)) {
                m3697getStartimpl = TextRange.m3692getEndimpl(m3701unboximpl);
            } else {
                m3697getStartimpl = TextRange.m3697getStartimpl(m3701unboximpl);
            }
            if (TextRange.m3696getReversedimpl(j10)) {
                m3692getEndimpl = TextRange.m3697getStartimpl(m3701unboximpl2);
            } else {
                m3692getEndimpl = TextRange.m3692getEndimpl(m3701unboximpl2);
            }
            return TextRangeKt.TextRange(m3697getStartimpl, m3692getEndimpl);
        }

        @NotNull
        public final SelectionAdjustment getCharacter() {
            return Character;
        }

        @NotNull
        public final SelectionAdjustment getCharacterWithWordAccelerate() {
            return CharacterWithWordAccelerate;
        }

        @NotNull
        public final SelectionAdjustment getNone() {
            return None;
        }

        @NotNull
        public final SelectionAdjustment getParagraph() {
            return Paragraph;
        }

        @NotNull
        public final SelectionAdjustment getWord() {
            return Word;
        }
    }

    /* renamed from: adjust-ZXO7KMw  reason: not valid java name */
    long mo820adjustZXO7KMw(@NotNull TextLayoutResult textLayoutResult, long j10, int i10, boolean z10, @Nullable TextRange textRange);
}
