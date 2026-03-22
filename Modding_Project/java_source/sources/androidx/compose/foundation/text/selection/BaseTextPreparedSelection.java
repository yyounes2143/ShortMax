package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.StringHelpersKt;
import androidx.compose.foundation.text.StringHelpers_androidKt;
import androidx.compose.foundation.text.selection.BaseTextPreparedSelection;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextPreparedSelection.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class BaseTextPreparedSelection<T extends BaseTextPreparedSelection<T>> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int NoCharacterFound = -1;
    @NotNull
    private AnnotatedString annotatedString;
    @Nullable
    private final TextLayoutResult layoutResult;
    @NotNull
    private final OffsetMapping offsetMapping;
    private final long originalSelection;
    @NotNull
    private final AnnotatedString originalText;
    private long selection;
    @NotNull
    private final TextPreparedSelectionState state;

    /* compiled from: TextPreparedSelection.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ BaseTextPreparedSelection(AnnotatedString annotatedString, long j10, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j10, textLayoutResult, offsetMapping, textPreparedSelectionState);
    }

    public static /* synthetic */ BaseTextPreparedSelection apply$default(BaseTextPreparedSelection baseTextPreparedSelection, Object obj, boolean z10, Function1 block, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 1) != 0) {
                z10 = true;
            }
            Intrinsics.checkNotNullParameter(block, "block");
            if (z10) {
                baseTextPreparedSelection.getState().resetCachedX();
            }
            if (baseTextPreparedSelection.getText$foundation_release().length() > 0) {
                block.invoke(obj);
            }
            if (obj != null) {
                return (BaseTextPreparedSelection) obj;
            }
            throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection");
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: apply");
    }

    private final int charOffset(int i10) {
        return e.j(i10, getText$foundation_release().length() - 1);
    }

    private final int getLineEndByOffsetForLayout(TextLayoutResult textLayoutResult, int i10) {
        return this.offsetMapping.transformedToOriginal(textLayoutResult.getLineEnd(textLayoutResult.getLineForOffset(i10), true));
    }

    static /* synthetic */ int getLineEndByOffsetForLayout$default(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = baseTextPreparedSelection.transformedMaxOffset();
            }
            return baseTextPreparedSelection.getLineEndByOffsetForLayout(textLayoutResult, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLineEndByOffsetForLayout");
    }

    private final int getLineStartByOffsetForLayout(TextLayoutResult textLayoutResult, int i10) {
        return this.offsetMapping.transformedToOriginal(textLayoutResult.getLineStart(textLayoutResult.getLineForOffset(i10)));
    }

    static /* synthetic */ int getLineStartByOffsetForLayout$default(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = baseTextPreparedSelection.transformedMinOffset();
            }
            return baseTextPreparedSelection.getLineStartByOffsetForLayout(textLayoutResult, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLineStartByOffsetForLayout");
    }

    private final int getNextWordOffsetForLayout(TextLayoutResult textLayoutResult, int i10) {
        if (i10 >= this.originalText.length()) {
            return this.originalText.length();
        }
        long m3684getWordBoundaryjx7JFs = textLayoutResult.m3684getWordBoundaryjx7JFs(charOffset(i10));
        if (TextRange.m3692getEndimpl(m3684getWordBoundaryjx7JFs) <= i10) {
            return getNextWordOffsetForLayout(textLayoutResult, i10 + 1);
        }
        return this.offsetMapping.transformedToOriginal(TextRange.m3692getEndimpl(m3684getWordBoundaryjx7JFs));
    }

    static /* synthetic */ int getNextWordOffsetForLayout$default(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = baseTextPreparedSelection.transformedEndOffset();
            }
            return baseTextPreparedSelection.getNextWordOffsetForLayout(textLayoutResult, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getNextWordOffsetForLayout");
    }

    private final int getParagraphEnd() {
        return StringHelpersKt.findParagraphEnd(getText$foundation_release(), TextRange.m3694getMaximpl(this.selection));
    }

    private final int getParagraphStart() {
        return StringHelpersKt.findParagraphStart(getText$foundation_release(), TextRange.m3695getMinimpl(this.selection));
    }

    private final int getPrevWordOffset(TextLayoutResult textLayoutResult, int i10) {
        if (i10 < 0) {
            return 0;
        }
        long m3684getWordBoundaryjx7JFs = textLayoutResult.m3684getWordBoundaryjx7JFs(charOffset(i10));
        if (TextRange.m3697getStartimpl(m3684getWordBoundaryjx7JFs) >= i10) {
            return getPrevWordOffset(textLayoutResult, i10 - 1);
        }
        return this.offsetMapping.transformedToOriginal(TextRange.m3697getStartimpl(m3684getWordBoundaryjx7JFs));
    }

    static /* synthetic */ int getPrevWordOffset$default(BaseTextPreparedSelection baseTextPreparedSelection, TextLayoutResult textLayoutResult, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = baseTextPreparedSelection.transformedEndOffset();
            }
            return baseTextPreparedSelection.getPrevWordOffset(textLayoutResult, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPrevWordOffset");
    }

    private final boolean isLtr() {
        ResolvedTextDirection resolvedTextDirection;
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult != null) {
            resolvedTextDirection = textLayoutResult.getParagraphDirection(TextRange.m3692getEndimpl(this.selection));
        } else {
            resolvedTextDirection = null;
        }
        if (resolvedTextDirection != ResolvedTextDirection.Rtl) {
            return true;
        }
        return false;
    }

    private final int jumpByLinesOffset(TextLayoutResult textLayoutResult, int i10) {
        int transformedEndOffset = transformedEndOffset();
        if (this.state.getCachedX() == null) {
            this.state.setCachedX(Float.valueOf(textLayoutResult.getCursorRect(transformedEndOffset).getLeft()));
        }
        int lineForOffset = textLayoutResult.getLineForOffset(transformedEndOffset) + i10;
        if (lineForOffset < 0) {
            return 0;
        }
        if (lineForOffset >= textLayoutResult.getLineCount()) {
            return getText$foundation_release().length();
        }
        float lineBottom = textLayoutResult.getLineBottom(lineForOffset) - 1;
        Float cachedX = this.state.getCachedX();
        Intrinsics.checkNotNull(cachedX);
        float floatValue = cachedX.floatValue();
        if ((isLtr() && floatValue >= textLayoutResult.getLineRight(lineForOffset)) || (!isLtr() && floatValue <= textLayoutResult.getLineLeft(lineForOffset))) {
            return textLayoutResult.getLineEnd(lineForOffset, true);
        }
        return this.offsetMapping.transformedToOriginal(textLayoutResult.m3682getOffsetForPositionk4lQ0M(OffsetKt.Offset(cachedX.floatValue(), lineBottom)));
    }

    private final T moveCursorNext() {
        int nextCharacterIndex;
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0 && (nextCharacterIndex = getNextCharacterIndex()) != -1) {
            setCursor(nextCharacterIndex);
        }
        return this;
    }

    private final T moveCursorNextByWord() {
        Integer nextWordOffset;
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0 && (nextWordOffset = getNextWordOffset()) != null) {
            setCursor(nextWordOffset.intValue());
        }
        return this;
    }

    private final T moveCursorPrev() {
        int precedingCharacterIndex;
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0 && (precedingCharacterIndex = getPrecedingCharacterIndex()) != -1) {
            setCursor(precedingCharacterIndex);
        }
        return this;
    }

    private final T moveCursorPrevByWord() {
        Integer previousWordOffset;
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0 && (previousWordOffset = getPreviousWordOffset()) != null) {
            setCursor(previousWordOffset.intValue());
        }
        return this;
    }

    private final int transformedEndOffset() {
        return this.offsetMapping.originalToTransformed(TextRange.m3692getEndimpl(this.selection));
    }

    private final int transformedMaxOffset() {
        return this.offsetMapping.originalToTransformed(TextRange.m3694getMaximpl(this.selection));
    }

    private final int transformedMinOffset() {
        return this.offsetMapping.originalToTransformed(TextRange.m3695getMinimpl(this.selection));
    }

    @NotNull
    protected final <U> T apply(U u10, boolean z10, @NotNull Function1<? super U, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        if (z10) {
            getState().resetCachedX();
        }
        if (getText$foundation_release().length() > 0) {
            block.invoke(u10);
        }
        if (u10 != null) {
            return (T) u10;
        }
        throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.foundation.text.selection.BaseTextPreparedSelection");
    }

    @NotNull
    public final T collapseLeftOr(@NotNull Function1<? super T, Unit> or2) {
        Intrinsics.checkNotNullParameter(or2, "or");
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (TextRange.m3691getCollapsedimpl(this.selection)) {
                or2.invoke(this);
            } else if (isLtr()) {
                setCursor(TextRange.m3695getMinimpl(this.selection));
            } else {
                setCursor(TextRange.m3694getMaximpl(this.selection));
            }
        }
        return this;
    }

    @NotNull
    public final T collapseRightOr(@NotNull Function1<? super T, Unit> or2) {
        Intrinsics.checkNotNullParameter(or2, "or");
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (TextRange.m3691getCollapsedimpl(this.selection)) {
                or2.invoke(this);
            } else if (isLtr()) {
                setCursor(TextRange.m3694getMaximpl(this.selection));
            } else {
                setCursor(TextRange.m3695getMinimpl(this.selection));
            }
        }
        return this;
    }

    @NotNull
    public final T deselect() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            setCursor(TextRange.m3692getEndimpl(this.selection));
        }
        return this;
    }

    @NotNull
    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    @Nullable
    public final TextLayoutResult getLayoutResult() {
        return this.layoutResult;
    }

    @Nullable
    public final Integer getLineEndByOffset() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        return Integer.valueOf(getLineEndByOffsetForLayout$default(this, textLayoutResult, 0, 1, null));
    }

    @Nullable
    public final Integer getLineStartByOffset() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        return Integer.valueOf(getLineStartByOffsetForLayout$default(this, textLayoutResult, 0, 1, null));
    }

    public final int getNextCharacterIndex() {
        return StringHelpers_androidKt.findFollowingBreak(this.annotatedString.getText(), TextRange.m3692getEndimpl(this.selection));
    }

    @Nullable
    public final Integer getNextWordOffset() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        return Integer.valueOf(getNextWordOffsetForLayout$default(this, textLayoutResult, 0, 1, null));
    }

    @NotNull
    public final OffsetMapping getOffsetMapping() {
        return this.offsetMapping;
    }

    /* renamed from: getOriginalSelection-d9O1mEE  reason: not valid java name */
    public final long m806getOriginalSelectiond9O1mEE() {
        return this.originalSelection;
    }

    @NotNull
    public final AnnotatedString getOriginalText() {
        return this.originalText;
    }

    public final int getPrecedingCharacterIndex() {
        return StringHelpers_androidKt.findPrecedingBreak(this.annotatedString.getText(), TextRange.m3692getEndimpl(this.selection));
    }

    @Nullable
    public final Integer getPreviousWordOffset() {
        TextLayoutResult textLayoutResult = this.layoutResult;
        if (textLayoutResult == null) {
            return null;
        }
        return Integer.valueOf(getPrevWordOffset$default(this, textLayoutResult, 0, 1, null));
    }

    /* renamed from: getSelection-d9O1mEE  reason: not valid java name */
    public final long m807getSelectiond9O1mEE() {
        return this.selection;
    }

    @NotNull
    public final TextPreparedSelectionState getState() {
        return this.state;
    }

    @NotNull
    public final String getText$foundation_release() {
        return this.annotatedString.getText();
    }

    @NotNull
    public final T moveCursorDownByLine() {
        TextLayoutResult textLayoutResult;
        if (getText$foundation_release().length() > 0 && (textLayoutResult = this.layoutResult) != null) {
            setCursor(jumpByLinesOffset(textLayoutResult, 1));
        }
        return this;
    }

    @NotNull
    public final T moveCursorLeft() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (isLtr()) {
                moveCursorPrev();
            } else {
                moveCursorNext();
            }
        }
        return this;
    }

    @NotNull
    public final T moveCursorLeftByWord() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (isLtr()) {
                moveCursorPrevByWord();
            } else {
                moveCursorNextByWord();
            }
        }
        return this;
    }

    @NotNull
    public final T moveCursorNextByParagraph() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            setCursor(getParagraphEnd());
        }
        return this;
    }

    @NotNull
    public final T moveCursorPrevByParagraph() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            setCursor(getParagraphStart());
        }
        return this;
    }

    @NotNull
    public final T moveCursorRight() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (isLtr()) {
                moveCursorNext();
            } else {
                moveCursorPrev();
            }
        }
        return this;
    }

    @NotNull
    public final T moveCursorRightByWord() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (isLtr()) {
                moveCursorNextByWord();
            } else {
                moveCursorPrevByWord();
            }
        }
        return this;
    }

    @NotNull
    public final T moveCursorToEnd() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            setCursor(getText$foundation_release().length());
        }
        return this;
    }

    @NotNull
    public final T moveCursorToHome() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            setCursor(0);
        }
        return this;
    }

    @NotNull
    public final T moveCursorToLineEnd() {
        Integer lineEndByOffset;
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0 && (lineEndByOffset = getLineEndByOffset()) != null) {
            setCursor(lineEndByOffset.intValue());
        }
        return this;
    }

    @NotNull
    public final T moveCursorToLineLeftSide() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (isLtr()) {
                moveCursorToLineStart();
            } else {
                moveCursorToLineEnd();
            }
        }
        return this;
    }

    @NotNull
    public final T moveCursorToLineRightSide() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            if (isLtr()) {
                moveCursorToLineEnd();
            } else {
                moveCursorToLineStart();
            }
        }
        return this;
    }

    @NotNull
    public final T moveCursorToLineStart() {
        Integer lineStartByOffset;
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0 && (lineStartByOffset = getLineStartByOffset()) != null) {
            setCursor(lineStartByOffset.intValue());
        }
        return this;
    }

    @NotNull
    public final T moveCursorUpByLine() {
        TextLayoutResult textLayoutResult;
        if (getText$foundation_release().length() > 0 && (textLayoutResult = this.layoutResult) != null) {
            setCursor(jumpByLinesOffset(textLayoutResult, -1));
        }
        return this;
    }

    @NotNull
    public final T selectAll() {
        getState().resetCachedX();
        if (getText$foundation_release().length() > 0) {
            setSelection(0, getText$foundation_release().length());
        }
        return this;
    }

    @NotNull
    public final T selectMovement() {
        if (getText$foundation_release().length() > 0) {
            this.selection = TextRangeKt.TextRange(TextRange.m3697getStartimpl(this.originalSelection), TextRange.m3692getEndimpl(this.selection));
        }
        return this;
    }

    public final void setAnnotatedString(@NotNull AnnotatedString annotatedString) {
        Intrinsics.checkNotNullParameter(annotatedString, "<set-?>");
        this.annotatedString = annotatedString;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setCursor(int i10) {
        setSelection(i10, i10);
    }

    protected final void setSelection(int i10, int i11) {
        this.selection = TextRangeKt.TextRange(i10, i11);
    }

    /* renamed from: setSelection-5zc-tL8  reason: not valid java name */
    public final void m808setSelection5zctL8(long j10) {
        this.selection = j10;
    }

    private BaseTextPreparedSelection(AnnotatedString annotatedString, long j10, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, TextPreparedSelectionState textPreparedSelectionState) {
        this.originalText = annotatedString;
        this.originalSelection = j10;
        this.layoutResult = textLayoutResult;
        this.offsetMapping = offsetMapping;
        this.state = textPreparedSelectionState;
        this.selection = j10;
        this.annotatedString = annotatedString;
    }
}
