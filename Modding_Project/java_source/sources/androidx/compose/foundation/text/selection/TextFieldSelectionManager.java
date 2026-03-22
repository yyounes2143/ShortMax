package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldCursorKt;
import androidx.compose.foundation.text.TextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextFieldValueKt;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldSelectionManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldSelectionManager {
    @Nullable
    private ClipboardManager clipboardManager;
    @NotNull
    private final MutableState currentDragPosition$delegate;
    @Nullable
    private Integer dragBeginOffsetInText;
    private long dragBeginPosition;
    private long dragTotalDistance;
    @NotNull
    private final MutableState draggingHandle$delegate;
    @NotNull
    private final MutableState editable$delegate;
    @Nullable
    private FocusRequester focusRequester;
    @Nullable
    private HapticFeedback hapticFeedBack;
    @NotNull
    private final MouseSelectionObserver mouseSelectionObserver;
    @NotNull
    private OffsetMapping offsetMapping;
    @NotNull
    private TextFieldValue oldValue;
    @NotNull
    private Function1<? super TextFieldValue, Unit> onValueChange;
    @Nullable
    private TextFieldState state;
    @Nullable
    private TextToolbar textToolbar;
    @NotNull
    private final TextDragObserver touchSelectionObserver;
    @Nullable
    private final UndoManager undoManager;
    @NotNull
    private final MutableState value$delegate;
    @NotNull
    private VisualTransformation visualTransformation;

    public TextFieldSelectionManager() {
        this(null, 1, null);
    }

    public static /* synthetic */ void copy$foundation_release$default(TextFieldSelectionManager textFieldSelectionManager, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        textFieldSelectionManager.copy$foundation_release(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createTextFieldValue-FDrldGo  reason: not valid java name */
    public final TextFieldValue m886createTextFieldValueFDrldGo(AnnotatedString annotatedString, long j10) {
        return new TextFieldValue(annotatedString, j10, (TextRange) null, 4, (DefaultConstructorMarker) null);
    }

    /* renamed from: deselect-_kEHs6E$foundation_release$default  reason: not valid java name */
    public static /* synthetic */ void m887deselect_kEHs6E$foundation_release$default(TextFieldSelectionManager textFieldSelectionManager, Offset offset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            offset = null;
        }
        textFieldSelectionManager.m890deselect_kEHs6E$foundation_release(offset);
    }

    private final Rect getContentRect() {
        long m1622getZeroF1C5BW0;
        long m1622getZeroF1C5BW02;
        float f10;
        LayoutCoordinates layoutCoordinates;
        float f11;
        TextLayoutResult value;
        Rect cursorRect;
        LayoutCoordinates layoutCoordinates2;
        float f12;
        TextLayoutResult value2;
        Rect cursorRect2;
        LayoutCoordinates layoutCoordinates3;
        LayoutCoordinates layoutCoordinates4;
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            if (textFieldState != null && (layoutCoordinates4 = textFieldState.getLayoutCoordinates()) != null) {
                m1622getZeroF1C5BW0 = layoutCoordinates4.mo3339localToRootMKHz9U(m893getHandlePositiontuRUvjQ$foundation_release(true));
            } else {
                m1622getZeroF1C5BW0 = Offset.Companion.m1622getZeroF1C5BW0();
            }
            TextFieldState textFieldState2 = this.state;
            if (textFieldState2 != null && (layoutCoordinates3 = textFieldState2.getLayoutCoordinates()) != null) {
                m1622getZeroF1C5BW02 = layoutCoordinates3.mo3339localToRootMKHz9U(m893getHandlePositiontuRUvjQ$foundation_release(false));
            } else {
                m1622getZeroF1C5BW02 = Offset.Companion.m1622getZeroF1C5BW0();
            }
            TextFieldState textFieldState3 = this.state;
            float f13 = 0.0f;
            if (textFieldState3 != null && (layoutCoordinates2 = textFieldState3.getLayoutCoordinates()) != null) {
                TextLayoutResultProxy layoutResult = textFieldState.getLayoutResult();
                if (layoutResult != null && (value2 = layoutResult.getValue()) != null && (cursorRect2 = value2.getCursorRect(e.n(TextRange.m3697getStartimpl(getValue$foundation_release().m3874getSelectiond9O1mEE()), 0, Math.max(0, getValue$foundation_release().getText().length() - 1)))) != null) {
                    f12 = cursorRect2.getTop();
                } else {
                    f12 = 0.0f;
                }
                f10 = Offset.m1607getYimpl(layoutCoordinates2.mo3339localToRootMKHz9U(OffsetKt.Offset(0.0f, f12)));
            } else {
                f10 = 0.0f;
            }
            TextFieldState textFieldState4 = this.state;
            if (textFieldState4 != null && (layoutCoordinates = textFieldState4.getLayoutCoordinates()) != null) {
                TextLayoutResultProxy layoutResult2 = textFieldState.getLayoutResult();
                if (layoutResult2 != null && (value = layoutResult2.getValue()) != null && (cursorRect = value.getCursorRect(e.n(TextRange.m3692getEndimpl(getValue$foundation_release().m3874getSelectiond9O1mEE()), 0, Math.max(0, getValue$foundation_release().getText().length() - 1)))) != null) {
                    f11 = cursorRect.getTop();
                } else {
                    f11 = 0.0f;
                }
                f13 = Offset.m1607getYimpl(layoutCoordinates.mo3339localToRootMKHz9U(OffsetKt.Offset(0.0f, f11)));
            }
            return new Rect(Math.min(Offset.m1606getXimpl(m1622getZeroF1C5BW0), Offset.m1606getXimpl(m1622getZeroF1C5BW02)), Math.min(f10, f13), Math.max(Offset.m1606getXimpl(m1622getZeroF1C5BW0), Offset.m1606getXimpl(m1622getZeroF1C5BW02)), Math.max(Offset.m1607getYimpl(m1622getZeroF1C5BW0), Offset.m1607getYimpl(m1622getZeroF1C5BW02)) + (Dp.m4049constructorimpl(25) * textFieldState.getTextDelegate().getDensity().getDensity()));
        }
        return Rect.Companion.getZero();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setCurrentDragPosition-_kEHs6E  reason: not valid java name */
    public final void m888setCurrentDragPosition_kEHs6E(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDraggingHandle(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    private final void setHandleState(HandleState handleState) {
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textFieldState.setHandleState(handleState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSelection(TextFieldValue textFieldValue, int i10, int i11, boolean z10, SelectionAdjustment selectionAdjustment) {
        TextLayoutResult textLayoutResult;
        TextLayoutResultProxy layoutResult;
        long TextRange = TextRangeKt.TextRange(this.offsetMapping.originalToTransformed(TextRange.m3697getStartimpl(textFieldValue.m3874getSelectiond9O1mEE())), this.offsetMapping.originalToTransformed(TextRange.m3692getEndimpl(textFieldValue.m3874getSelectiond9O1mEE())));
        TextFieldState textFieldState = this.state;
        TextRange textRange = null;
        if (textFieldState != null && (layoutResult = textFieldState.getLayoutResult()) != null) {
            textLayoutResult = layoutResult.getValue();
        } else {
            textLayoutResult = null;
        }
        if (!TextRange.m3691getCollapsedimpl(TextRange)) {
            textRange = TextRange.m3685boximpl(TextRange);
        }
        long m883getTextFieldSelectionbb3KNj8 = TextFieldSelectionDelegateKt.m883getTextFieldSelectionbb3KNj8(textLayoutResult, i10, i11, textRange, z10, selectionAdjustment);
        long TextRange2 = TextRangeKt.TextRange(this.offsetMapping.transformedToOriginal(TextRange.m3697getStartimpl(m883getTextFieldSelectionbb3KNj8)), this.offsetMapping.transformedToOriginal(TextRange.m3692getEndimpl(m883getTextFieldSelectionbb3KNj8)));
        if (TextRange.m3690equalsimpl0(TextRange2, textFieldValue.m3874getSelectiond9O1mEE())) {
            return;
        }
        HapticFeedback hapticFeedback = this.hapticFeedBack;
        if (hapticFeedback != null) {
            hapticFeedback.mo2454performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m2463getTextHandleMove5zf0vsI());
        }
        this.onValueChange.invoke(m886createTextFieldValueFDrldGo(textFieldValue.getAnnotatedString(), TextRange2));
        TextFieldState textFieldState2 = this.state;
        if (textFieldState2 != null) {
            textFieldState2.setShowSelectionHandleStart(TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(this, true));
        }
        TextFieldState textFieldState3 = this.state;
        if (textFieldState3 != null) {
            textFieldState3.setShowSelectionHandleEnd(TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(this, false));
        }
    }

    /* renamed from: contextMenuOpenAdjustment-k-4lQ0M  reason: not valid java name */
    public final void m889contextMenuOpenAdjustmentk4lQ0M(long j10) {
        TextLayoutResultProxy layoutResult;
        TextFieldState textFieldState = this.state;
        if (textFieldState != null && (layoutResult = textFieldState.getLayoutResult()) != null) {
            int m794getOffsetForPosition3MmeM6k$default = TextLayoutResultProxy.m794getOffsetForPosition3MmeM6k$default(layoutResult, j10, false, 2, null);
            if (!TextRange.m3688containsimpl(getValue$foundation_release().m3874getSelectiond9O1mEE(), m794getOffsetForPosition3MmeM6k$default)) {
                updateSelection(getValue$foundation_release(), m794getOffsetForPosition3MmeM6k$default, m794getOffsetForPosition3MmeM6k$default, false, SelectionAdjustment.Companion.getWord());
            }
        }
    }

    public final void copy$foundation_release(boolean z10) {
        if (TextRange.m3691getCollapsedimpl(getValue$foundation_release().m3874getSelectiond9O1mEE())) {
            return;
        }
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.setText(TextFieldValueKt.getSelectedText(getValue$foundation_release()));
        }
        if (!z10) {
            return;
        }
        int m3694getMaximpl = TextRange.m3694getMaximpl(getValue$foundation_release().m3874getSelectiond9O1mEE());
        this.onValueChange.invoke(m886createTextFieldValueFDrldGo(getValue$foundation_release().getAnnotatedString(), TextRangeKt.TextRange(m3694getMaximpl, m3694getMaximpl)));
        setHandleState(HandleState.None);
    }

    @NotNull
    public final TextDragObserver cursorDragObserver$foundation_release() {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cursorDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public void mo760onDownk4lQ0M(long j10) {
                TextFieldSelectionManager.this.setDraggingHandle(Handle.Cursor);
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                textFieldSelectionManager.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(SelectionHandlesKt.m832getAdjustedCoordinatesk4lQ0M(textFieldSelectionManager.m893getHandlePositiontuRUvjQ$foundation_release(true))));
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public void mo761onDragk4lQ0M(long j10) {
                long j11;
                TextLayoutResultProxy layoutResult;
                TextLayoutResult value;
                long j12;
                long j13;
                TextFieldValue m886createTextFieldValueFDrldGo;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                j11 = textFieldSelectionManager.dragTotalDistance;
                textFieldSelectionManager.dragTotalDistance = Offset.m1611plusMKHz9U(j11, j10);
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null && (value = layoutResult.getValue()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                    j12 = textFieldSelectionManager2.dragBeginPosition;
                    j13 = textFieldSelectionManager2.dragTotalDistance;
                    textFieldSelectionManager2.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(Offset.m1611plusMKHz9U(j12, j13)));
                    Offset m891getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m891getCurrentDragPosition_m7T9E();
                    Intrinsics.checkNotNull(m891getCurrentDragPosition_m7T9E);
                    int m3682getOffsetForPositionk4lQ0M = value.m3682getOffsetForPositionk4lQ0M(m891getCurrentDragPosition_m7T9E.m1616unboximpl());
                    long TextRange = TextRangeKt.TextRange(m3682getOffsetForPositionk4lQ0M, m3682getOffsetForPositionk4lQ0M);
                    if (TextRange.m3690equalsimpl0(TextRange, textFieldSelectionManager2.getValue$foundation_release().m3874getSelectiond9O1mEE())) {
                        return;
                    }
                    HapticFeedback hapticFeedBack = textFieldSelectionManager2.getHapticFeedBack();
                    if (hapticFeedBack != null) {
                        hapticFeedBack.mo2454performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m2463getTextHandleMove5zf0vsI());
                    }
                    Function1<TextFieldValue, Unit> onValueChange$foundation_release = textFieldSelectionManager2.getOnValueChange$foundation_release();
                    m886createTextFieldValueFDrldGo = textFieldSelectionManager2.m886createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation_release().getAnnotatedString(), TextRange);
                    onValueChange$foundation_release.invoke(m886createTextFieldValueFDrldGo);
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-k-4lQ0M */
            public void mo762onStartk4lQ0M(long j10) {
                long j11;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                textFieldSelectionManager.dragBeginPosition = SelectionHandlesKt.m832getAdjustedCoordinatesk4lQ0M(textFieldSelectionManager.m893getHandlePositiontuRUvjQ$foundation_release(true));
                TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                j11 = textFieldSelectionManager2.dragBeginPosition;
                textFieldSelectionManager2.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(j11));
                TextFieldSelectionManager.this.dragTotalDistance = Offset.Companion.m1622getZeroF1C5BW0();
                TextFieldSelectionManager.this.setDraggingHandle(Handle.Cursor);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m888setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m888setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }
        };
    }

    public final void cut$foundation_release() {
        if (TextRange.m3691getCollapsedimpl(getValue$foundation_release().m3874getSelectiond9O1mEE())) {
            return;
        }
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.setText(TextFieldValueKt.getSelectedText(getValue$foundation_release()));
        }
        AnnotatedString plus = TextFieldValueKt.getTextBeforeSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()).plus(TextFieldValueKt.getTextAfterSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()));
        int m3695getMinimpl = TextRange.m3695getMinimpl(getValue$foundation_release().m3874getSelectiond9O1mEE());
        this.onValueChange.invoke(m886createTextFieldValueFDrldGo(plus, TextRangeKt.TextRange(m3695getMinimpl, m3695getMinimpl)));
        setHandleState(HandleState.None);
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.forceNextSnapshot();
        }
    }

    /* renamed from: deselect-_kEHs6E$foundation_release  reason: not valid java name */
    public final void m890deselect_kEHs6E$foundation_release(@Nullable Offset offset) {
        HandleState handleState;
        TextLayoutResultProxy textLayoutResultProxy;
        int m3694getMaximpl;
        if (!TextRange.m3691getCollapsedimpl(getValue$foundation_release().m3874getSelectiond9O1mEE())) {
            TextFieldState textFieldState = this.state;
            if (textFieldState != null) {
                textLayoutResultProxy = textFieldState.getLayoutResult();
            } else {
                textLayoutResultProxy = null;
            }
            TextLayoutResultProxy textLayoutResultProxy2 = textLayoutResultProxy;
            if (offset != null && textLayoutResultProxy2 != null) {
                m3694getMaximpl = this.offsetMapping.transformedToOriginal(TextLayoutResultProxy.m794getOffsetForPosition3MmeM6k$default(textLayoutResultProxy2, offset.m1616unboximpl(), false, 2, null));
            } else {
                m3694getMaximpl = TextRange.m3694getMaximpl(getValue$foundation_release().m3874getSelectiond9O1mEE());
            }
            this.onValueChange.invoke(TextFieldValue.m3869copy3r_uNRQ$default(getValue$foundation_release(), (AnnotatedString) null, TextRangeKt.TextRange(m3694getMaximpl), (TextRange) null, 5, (Object) null));
        }
        if (offset != null && getValue$foundation_release().getText().length() > 0) {
            handleState = HandleState.Cursor;
        } else {
            handleState = HandleState.None;
        }
        setHandleState(handleState);
        hideSelectionToolbar$foundation_release();
    }

    public final void enterSelectionMode$foundation_release() {
        FocusRequester focusRequester;
        TextFieldState textFieldState = this.state;
        if (textFieldState != null && !textFieldState.getHasFocus() && (focusRequester = this.focusRequester) != null) {
            focusRequester.requestFocus();
        }
        this.oldValue = getValue$foundation_release();
        TextFieldState textFieldState2 = this.state;
        if (textFieldState2 != null) {
            textFieldState2.setShowFloatingToolbar(true);
        }
        setHandleState(HandleState.Selection);
    }

    public final void exitSelectionMode$foundation_release() {
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textFieldState.setShowFloatingToolbar(false);
        }
        setHandleState(HandleState.None);
    }

    @Nullable
    public final ClipboardManager getClipboardManager$foundation_release() {
        return this.clipboardManager;
    }

    @Nullable
    /* renamed from: getCurrentDragPosition-_m7T9-E  reason: not valid java name */
    public final Offset m891getCurrentDragPosition_m7T9E() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    /* renamed from: getCursorPosition-tuRUvjQ$foundation_release  reason: not valid java name */
    public final long m892getCursorPositiontuRUvjQ$foundation_release(@NotNull Density density) {
        TextLayoutResultProxy textLayoutResultProxy;
        Intrinsics.checkNotNullParameter(density, "density");
        int originalToTransformed = this.offsetMapping.originalToTransformed(TextRange.m3697getStartimpl(getValue$foundation_release().m3874getSelectiond9O1mEE()));
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textLayoutResultProxy = textFieldState.getLayoutResult();
        } else {
            textLayoutResultProxy = null;
        }
        Intrinsics.checkNotNull(textLayoutResultProxy);
        TextLayoutResult value = textLayoutResultProxy.getValue();
        Rect cursorRect = value.getCursorRect(e.n(originalToTransformed, 0, value.getLayoutInput().getText().length()));
        return OffsetKt.Offset(cursorRect.getLeft() + (density.mo342toPx0680j_4(TextFieldCursorKt.getDefaultCursorThickness()) / 2), cursorRect.getBottom());
    }

    @Nullable
    public final Handle getDraggingHandle() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    public final boolean getEditable() {
        return ((Boolean) this.editable$delegate.getValue()).booleanValue();
    }

    @Nullable
    public final FocusRequester getFocusRequester() {
        return this.focusRequester;
    }

    /* renamed from: getHandlePosition-tuRUvjQ$foundation_release  reason: not valid java name */
    public final long m893getHandlePositiontuRUvjQ$foundation_release(boolean z10) {
        int m3692getEndimpl;
        TextLayoutResultProxy textLayoutResultProxy;
        long m3874getSelectiond9O1mEE = getValue$foundation_release().m3874getSelectiond9O1mEE();
        if (z10) {
            m3692getEndimpl = TextRange.m3697getStartimpl(m3874getSelectiond9O1mEE);
        } else {
            m3692getEndimpl = TextRange.m3692getEndimpl(m3874getSelectiond9O1mEE);
        }
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textLayoutResultProxy = textFieldState.getLayoutResult();
        } else {
            textLayoutResultProxy = null;
        }
        Intrinsics.checkNotNull(textLayoutResultProxy);
        return TextSelectionDelegateKt.getSelectionHandleCoordinates(textLayoutResultProxy.getValue(), this.offsetMapping.originalToTransformed(m3692getEndimpl), z10, TextRange.m3696getReversedimpl(getValue$foundation_release().m3874getSelectiond9O1mEE()));
    }

    @Nullable
    public final HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    @NotNull
    public final MouseSelectionObserver getMouseSelectionObserver$foundation_release() {
        return this.mouseSelectionObserver;
    }

    @NotNull
    public final OffsetMapping getOffsetMapping$foundation_release() {
        return this.offsetMapping;
    }

    @NotNull
    public final Function1<TextFieldValue, Unit> getOnValueChange$foundation_release() {
        return this.onValueChange;
    }

    @Nullable
    public final TextFieldState getState$foundation_release() {
        return this.state;
    }

    @Nullable
    public final TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    @NotNull
    public final TextDragObserver getTouchSelectionObserver$foundation_release() {
        return this.touchSelectionObserver;
    }

    @Nullable
    public final UndoManager getUndoManager() {
        return this.undoManager;
    }

    @NotNull
    public final TextFieldValue getValue$foundation_release() {
        return (TextFieldValue) this.value$delegate.getValue();
    }

    @NotNull
    public final VisualTransformation getVisualTransformation$foundation_release() {
        return this.visualTransformation;
    }

    @NotNull
    public final TextDragObserver handleDragObserver$foundation_release(final boolean z10) {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$handleDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public void mo760onDownk4lQ0M(long j10) {
                Handle handle;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                if (z10) {
                    handle = Handle.SelectionStart;
                } else {
                    handle = Handle.SelectionEnd;
                }
                textFieldSelectionManager.setDraggingHandle(handle);
                TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                textFieldSelectionManager2.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(SelectionHandlesKt.m832getAdjustedCoordinatesk4lQ0M(textFieldSelectionManager2.m893getHandlePositiontuRUvjQ$foundation_release(z10))));
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public void mo761onDragk4lQ0M(long j10) {
                long j11;
                TextLayoutResultProxy layoutResult;
                TextLayoutResult value;
                long j12;
                long j13;
                int originalToTransformed;
                int m3682getOffsetForPositionk4lQ0M;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                j11 = textFieldSelectionManager.dragTotalDistance;
                textFieldSelectionManager.dragTotalDistance = Offset.m1611plusMKHz9U(j11, j10);
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null && (value = layoutResult.getValue()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                    boolean z11 = z10;
                    j12 = textFieldSelectionManager2.dragBeginPosition;
                    j13 = textFieldSelectionManager2.dragTotalDistance;
                    textFieldSelectionManager2.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(Offset.m1611plusMKHz9U(j12, j13)));
                    if (z11) {
                        Offset m891getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m891getCurrentDragPosition_m7T9E();
                        Intrinsics.checkNotNull(m891getCurrentDragPosition_m7T9E);
                        originalToTransformed = value.m3682getOffsetForPositionk4lQ0M(m891getCurrentDragPosition_m7T9E.m1616unboximpl());
                    } else {
                        originalToTransformed = textFieldSelectionManager2.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m3697getStartimpl(textFieldSelectionManager2.getValue$foundation_release().m3874getSelectiond9O1mEE()));
                    }
                    int i10 = originalToTransformed;
                    if (z11) {
                        m3682getOffsetForPositionk4lQ0M = textFieldSelectionManager2.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m3692getEndimpl(textFieldSelectionManager2.getValue$foundation_release().m3874getSelectiond9O1mEE()));
                    } else {
                        Offset m891getCurrentDragPosition_m7T9E2 = textFieldSelectionManager2.m891getCurrentDragPosition_m7T9E();
                        Intrinsics.checkNotNull(m891getCurrentDragPosition_m7T9E2);
                        m3682getOffsetForPositionk4lQ0M = value.m3682getOffsetForPositionk4lQ0M(m891getCurrentDragPosition_m7T9E2.m1616unboximpl());
                    }
                    textFieldSelectionManager2.updateSelection(textFieldSelectionManager2.getValue$foundation_release(), i10, m3682getOffsetForPositionk4lQ0M, z11, SelectionAdjustment.Companion.getCharacter());
                }
                TextFieldState state$foundation_release2 = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release2 != null) {
                    state$foundation_release2.setShowFloatingToolbar(false);
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-k-4lQ0M */
            public void mo762onStartk4lQ0M(long j10) {
                long j11;
                Handle handle;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                textFieldSelectionManager.dragBeginPosition = SelectionHandlesKt.m832getAdjustedCoordinatesk4lQ0M(textFieldSelectionManager.m893getHandlePositiontuRUvjQ$foundation_release(z10));
                TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                j11 = textFieldSelectionManager2.dragBeginPosition;
                textFieldSelectionManager2.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(j11));
                TextFieldSelectionManager.this.dragTotalDistance = Offset.Companion.m1622getZeroF1C5BW0();
                TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                if (z10) {
                    handle = Handle.SelectionStart;
                } else {
                    handle = Handle.SelectionEnd;
                }
                textFieldSelectionManager3.setDraggingHandle(handle);
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null) {
                    state$foundation_release.setShowFloatingToolbar(false);
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                TextToolbarStatus textToolbarStatus = null;
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m888setCurrentDragPosition_kEHs6E(null);
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null) {
                    state$foundation_release.setShowFloatingToolbar(true);
                }
                TextToolbar textToolbar = TextFieldSelectionManager.this.getTextToolbar();
                if (textToolbar != null) {
                    textToolbarStatus = textToolbar.getStatus();
                }
                if (textToolbarStatus == TextToolbarStatus.Hidden) {
                    TextFieldSelectionManager.this.showSelectionToolbar$foundation_release();
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m888setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }
        };
    }

    public final void hideSelectionToolbar$foundation_release() {
        TextToolbarStatus textToolbarStatus;
        TextToolbar textToolbar;
        TextToolbar textToolbar2 = this.textToolbar;
        if (textToolbar2 != null) {
            textToolbarStatus = textToolbar2.getStatus();
        } else {
            textToolbarStatus = null;
        }
        if (textToolbarStatus == TextToolbarStatus.Shown && (textToolbar = this.textToolbar) != null) {
            textToolbar.hide();
        }
    }

    public final boolean isTextChanged$foundation_release() {
        return !Intrinsics.areEqual(this.oldValue.getText(), getValue$foundation_release().getText());
    }

    public final void paste$foundation_release() {
        AnnotatedString text;
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null && (text = clipboardManager.getText()) != null) {
            AnnotatedString plus = TextFieldValueKt.getTextBeforeSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()).plus(text).plus(TextFieldValueKt.getTextAfterSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()));
            int m3695getMinimpl = TextRange.m3695getMinimpl(getValue$foundation_release().m3874getSelectiond9O1mEE()) + text.length();
            this.onValueChange.invoke(m886createTextFieldValueFDrldGo(plus, TextRangeKt.TextRange(m3695getMinimpl, m3695getMinimpl)));
            setHandleState(HandleState.None);
            UndoManager undoManager = this.undoManager;
            if (undoManager != null) {
                undoManager.forceNextSnapshot();
            }
        }
    }

    public final void selectAll$foundation_release() {
        TextFieldValue m886createTextFieldValueFDrldGo = m886createTextFieldValueFDrldGo(getValue$foundation_release().getAnnotatedString(), TextRangeKt.TextRange(0, getValue$foundation_release().getText().length()));
        this.onValueChange.invoke(m886createTextFieldValueFDrldGo);
        this.oldValue = TextFieldValue.m3869copy3r_uNRQ$default(this.oldValue, (AnnotatedString) null, m886createTextFieldValueFDrldGo.m3874getSelectiond9O1mEE(), (TextRange) null, 5, (Object) null);
        TextFieldState textFieldState = this.state;
        if (textFieldState != null) {
            textFieldState.setShowFloatingToolbar(true);
        }
    }

    public final void setClipboardManager$foundation_release(@Nullable ClipboardManager clipboardManager) {
        this.clipboardManager = clipboardManager;
    }

    public final void setEditable(boolean z10) {
        this.editable$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setFocusRequester(@Nullable FocusRequester focusRequester) {
        this.focusRequester = focusRequester;
    }

    public final void setHapticFeedBack(@Nullable HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final void setOffsetMapping$foundation_release(@NotNull OffsetMapping offsetMapping) {
        Intrinsics.checkNotNullParameter(offsetMapping, "<set-?>");
        this.offsetMapping = offsetMapping;
    }

    public final void setOnValueChange$foundation_release(@NotNull Function1<? super TextFieldValue, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onValueChange = function1;
    }

    public final void setState$foundation_release(@Nullable TextFieldState textFieldState) {
        this.state = textFieldState;
    }

    public final void setTextToolbar(@Nullable TextToolbar textToolbar) {
        this.textToolbar = textToolbar;
    }

    public final void setValue$foundation_release(@NotNull TextFieldValue textFieldValue) {
        Intrinsics.checkNotNullParameter(textFieldValue, "<set-?>");
        this.value$delegate.setValue(textFieldValue);
    }

    public final void setVisualTransformation$foundation_release(@NotNull VisualTransformation visualTransformation) {
        Intrinsics.checkNotNullParameter(visualTransformation, "<set-?>");
        this.visualTransformation = visualTransformation;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void showSelectionToolbar$foundation_release() {
        /*
            r9 = this;
            androidx.compose.ui.text.input.VisualTransformation r0 = r9.visualTransformation
            boolean r0 = r0 instanceof androidx.compose.ui.text.input.PasswordVisualTransformation
            androidx.compose.ui.text.input.TextFieldValue r1 = r9.getValue$foundation_release()
            long r1 = r1.m3874getSelectiond9O1mEE()
            boolean r1 = androidx.compose.ui.text.TextRange.m3691getCollapsedimpl(r1)
            r2 = 0
            if (r1 != 0) goto L1c
            if (r0 != 0) goto L1c
            androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$copy$1 r1 = new androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$copy$1
            r1.<init>()
            r5 = r1
            goto L1d
        L1c:
            r5 = r2
        L1d:
            androidx.compose.ui.text.input.TextFieldValue r1 = r9.getValue$foundation_release()
            long r3 = r1.m3874getSelectiond9O1mEE()
            boolean r1 = androidx.compose.ui.text.TextRange.m3691getCollapsedimpl(r3)
            if (r1 != 0) goto L3a
            boolean r1 = r9.getEditable()
            if (r1 == 0) goto L3a
            if (r0 != 0) goto L3a
            androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$cut$1 r0 = new androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$cut$1
            r0.<init>()
            r7 = r0
            goto L3b
        L3a:
            r7 = r2
        L3b:
            boolean r0 = r9.getEditable()
            if (r0 == 0) goto L54
            androidx.compose.ui.platform.ClipboardManager r0 = r9.clipboardManager
            if (r0 == 0) goto L4a
            androidx.compose.ui.text.AnnotatedString r0 = r0.getText()
            goto L4b
        L4a:
            r0 = r2
        L4b:
            if (r0 == 0) goto L54
            androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$paste$1 r0 = new androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$paste$1
            r0.<init>()
            r6 = r0
            goto L55
        L54:
            r6 = r2
        L55:
            androidx.compose.ui.text.input.TextFieldValue r0 = r9.getValue$foundation_release()
            long r0 = r0.m3874getSelectiond9O1mEE()
            int r0 = androidx.compose.ui.text.TextRange.m3693getLengthimpl(r0)
            androidx.compose.ui.text.input.TextFieldValue r1 = r9.getValue$foundation_release()
            java.lang.String r1 = r1.getText()
            int r1 = r1.length()
            if (r0 == r1) goto L74
            androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$selectAll$1 r2 = new androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$selectAll$1
            r2.<init>()
        L74:
            r8 = r2
            androidx.compose.ui.platform.TextToolbar r3 = r9.textToolbar
            if (r3 == 0) goto L80
            androidx.compose.ui.geometry.Rect r4 = r9.getContentRect()
            r3.showMenu(r4, r5, r6, r7, r8)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager.showSelectionToolbar$foundation_release():void");
    }

    public TextFieldSelectionManager(@Nullable UndoManager undoManager) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        this.undoManager = undoManager;
        this.offsetMapping = OffsetMapping.Companion.getIdentity();
        this.onValueChange = new Function1<TextFieldValue, Unit>() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$onValueChange$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TextFieldValue it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextFieldValue textFieldValue) {
                invoke2(textFieldValue);
                return Unit.f60915a;
            }
        };
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null), null, 2, null);
        this.value$delegate = mutableStateOf$default;
        this.visualTransformation = VisualTransformation.Companion.getNone();
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        this.editable$delegate = mutableStateOf$default2;
        Offset.Companion companion = Offset.Companion;
        this.dragBeginPosition = companion.m1622getZeroF1C5BW0();
        this.dragTotalDistance = companion.m1622getZeroF1C5BW0();
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.draggingHandle$delegate = mutableStateOf$default3;
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.currentDragPosition$delegate = mutableStateOf$default4;
        this.oldValue = new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null);
        this.touchSelectionObserver = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public void mo761onDragk4lQ0M(long j10) {
                long j11;
                TextLayoutResultProxy layoutResult;
                long j12;
                long j13;
                Integer num;
                long j14;
                int m796getOffsetForPosition3MmeM6k;
                if (TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0) {
                    return;
                }
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                j11 = textFieldSelectionManager.dragTotalDistance;
                textFieldSelectionManager.dragTotalDistance = Offset.m1611plusMKHz9U(j11, j10);
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                    j12 = textFieldSelectionManager2.dragBeginPosition;
                    j13 = textFieldSelectionManager2.dragTotalDistance;
                    textFieldSelectionManager2.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(Offset.m1611plusMKHz9U(j12, j13)));
                    num = textFieldSelectionManager2.dragBeginOffsetInText;
                    if (num == null) {
                        j14 = textFieldSelectionManager2.dragBeginPosition;
                        m796getOffsetForPosition3MmeM6k = layoutResult.m796getOffsetForPosition3MmeM6k(j14, false);
                    } else {
                        m796getOffsetForPosition3MmeM6k = num.intValue();
                    }
                    int i10 = m796getOffsetForPosition3MmeM6k;
                    Offset m891getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m891getCurrentDragPosition_m7T9E();
                    Intrinsics.checkNotNull(m891getCurrentDragPosition_m7T9E);
                    textFieldSelectionManager2.updateSelection(textFieldSelectionManager2.getValue$foundation_release(), i10, layoutResult.m796getOffsetForPosition3MmeM6k(m891getCurrentDragPosition_m7T9E.m1616unboximpl(), false), false, SelectionAdjustment.Companion.getWord());
                }
                TextFieldState state$foundation_release2 = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release2 != null) {
                    state$foundation_release2.setShowFloatingToolbar(false);
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-k-4lQ0M */
            public void mo762onStartk4lQ0M(long j10) {
                TextFieldState state$foundation_release;
                TextLayoutResultProxy layoutResult;
                TextFieldValue m886createTextFieldValueFDrldGo;
                long j11;
                TextLayoutResultProxy layoutResult2;
                TextLayoutResultProxy layoutResult3;
                if (TextFieldSelectionManager.this.getDraggingHandle() == null) {
                    TextFieldSelectionManager.this.setDraggingHandle(Handle.SelectionEnd);
                    TextFieldSelectionManager.this.hideSelectionToolbar$foundation_release();
                    TextFieldState state$foundation_release2 = TextFieldSelectionManager.this.getState$foundation_release();
                    if ((state$foundation_release2 == null || (layoutResult3 = state$foundation_release2.getLayoutResult()) == null || !layoutResult3.m797isPositionOnTextk4lQ0M(j10)) && (state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release()) != null && (layoutResult = state$foundation_release.getLayoutResult()) != null) {
                        TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                        int transformedToOriginal = textFieldSelectionManager.getOffsetMapping$foundation_release().transformedToOriginal(TextLayoutResultProxy.getLineEnd$default(layoutResult, layoutResult.getLineForVerticalPosition(Offset.m1607getYimpl(j10)), false, 2, null));
                        HapticFeedback hapticFeedBack = textFieldSelectionManager.getHapticFeedBack();
                        if (hapticFeedBack != null) {
                            hapticFeedBack.mo2454performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m2463getTextHandleMove5zf0vsI());
                        }
                        m886createTextFieldValueFDrldGo = textFieldSelectionManager.m886createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation_release().getAnnotatedString(), TextRangeKt.TextRange(transformedToOriginal, transformedToOriginal));
                        textFieldSelectionManager.enterSelectionMode$foundation_release();
                        textFieldSelectionManager.getOnValueChange$foundation_release().invoke(m886createTextFieldValueFDrldGo);
                    } else if (TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0) {
                    } else {
                        TextFieldSelectionManager.this.enterSelectionMode$foundation_release();
                        TextFieldState state$foundation_release3 = TextFieldSelectionManager.this.getState$foundation_release();
                        if (state$foundation_release3 != null && (layoutResult2 = state$foundation_release3.getLayoutResult()) != null) {
                            TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                            int m794getOffsetForPosition3MmeM6k$default = TextLayoutResultProxy.m794getOffsetForPosition3MmeM6k$default(layoutResult2, j10, false, 2, null);
                            textFieldSelectionManager2.updateSelection(textFieldSelectionManager2.getValue$foundation_release(), m794getOffsetForPosition3MmeM6k$default, m794getOffsetForPosition3MmeM6k$default, false, SelectionAdjustment.Companion.getWord());
                            textFieldSelectionManager2.dragBeginOffsetInText = Integer.valueOf(m794getOffsetForPosition3MmeM6k$default);
                        }
                        TextFieldSelectionManager.this.dragBeginPosition = j10;
                        TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                        j11 = textFieldSelectionManager3.dragBeginPosition;
                        textFieldSelectionManager3.m888setCurrentDragPosition_kEHs6E(Offset.m1595boximpl(j11));
                        TextFieldSelectionManager.this.dragTotalDistance = Offset.Companion.m1622getZeroF1C5BW0();
                    }
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                TextToolbarStatus textToolbarStatus;
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m888setCurrentDragPosition_kEHs6E(null);
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null) {
                    state$foundation_release.setShowFloatingToolbar(true);
                }
                TextToolbar textToolbar = TextFieldSelectionManager.this.getTextToolbar();
                if (textToolbar != null) {
                    textToolbarStatus = textToolbar.getStatus();
                } else {
                    textToolbarStatus = null;
                }
                if (textToolbarStatus == TextToolbarStatus.Hidden) {
                    TextFieldSelectionManager.this.showSelectionToolbar$foundation_release();
                }
                TextFieldSelectionManager.this.dragBeginOffsetInText = null;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public void mo760onDownk4lQ0M(long j10) {
            }
        };
        this.mouseSelectionObserver = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1
            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onDrag-3MmeM6k */
            public boolean mo763onDrag3MmeM6k(long j10, @NotNull SelectionAdjustment adjustment) {
                TextFieldState state$foundation_release;
                TextLayoutResultProxy layoutResult;
                Integer num;
                Intrinsics.checkNotNullParameter(adjustment, "adjustment");
                if (TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0 || (state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release()) == null || (layoutResult = state$foundation_release.getLayoutResult()) == null) {
                    return false;
                }
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                int m796getOffsetForPosition3MmeM6k = layoutResult.m796getOffsetForPosition3MmeM6k(j10, false);
                TextFieldValue value$foundation_release = textFieldSelectionManager.getValue$foundation_release();
                num = textFieldSelectionManager.dragBeginOffsetInText;
                Intrinsics.checkNotNull(num);
                textFieldSelectionManager.updateSelection(value$foundation_release, num.intValue(), m796getOffsetForPosition3MmeM6k, false, adjustment);
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onExtend-k-4lQ0M */
            public boolean mo764onExtendk4lQ0M(long j10) {
                TextLayoutResultProxy layoutResult;
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                    textFieldSelectionManager.updateSelection(textFieldSelectionManager.getValue$foundation_release(), textFieldSelectionManager.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m3697getStartimpl(textFieldSelectionManager.getValue$foundation_release().m3874getSelectiond9O1mEE())), TextLayoutResultProxy.m794getOffsetForPosition3MmeM6k$default(layoutResult, j10, false, 2, null), false, SelectionAdjustment.Companion.getNone());
                    return true;
                }
                return false;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onExtendDrag-k-4lQ0M */
            public boolean mo765onExtendDragk4lQ0M(long j10) {
                TextFieldState state$foundation_release;
                TextLayoutResultProxy layoutResult;
                if (TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0 || (state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release()) == null || (layoutResult = state$foundation_release.getLayoutResult()) == null) {
                    return false;
                }
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                textFieldSelectionManager.updateSelection(textFieldSelectionManager.getValue$foundation_release(), textFieldSelectionManager.getOffsetMapping$foundation_release().originalToTransformed(TextRange.m3697getStartimpl(textFieldSelectionManager.getValue$foundation_release().m3874getSelectiond9O1mEE())), layoutResult.m796getOffsetForPosition3MmeM6k(j10, false), false, SelectionAdjustment.Companion.getNone());
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onStart-3MmeM6k */
            public boolean mo766onStart3MmeM6k(long j10, @NotNull SelectionAdjustment adjustment) {
                TextLayoutResultProxy layoutResult;
                long j11;
                Intrinsics.checkNotNullParameter(adjustment, "adjustment");
                FocusRequester focusRequester = TextFieldSelectionManager.this.getFocusRequester();
                if (focusRequester != null) {
                    focusRequester.requestFocus();
                }
                TextFieldSelectionManager.this.dragBeginPosition = j10;
                TextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                    textFieldSelectionManager.dragBeginOffsetInText = Integer.valueOf(TextLayoutResultProxy.m794getOffsetForPosition3MmeM6k$default(layoutResult, j10, false, 2, null));
                    j11 = textFieldSelectionManager.dragBeginPosition;
                    int m794getOffsetForPosition3MmeM6k$default = TextLayoutResultProxy.m794getOffsetForPosition3MmeM6k$default(layoutResult, j11, false, 2, null);
                    textFieldSelectionManager.updateSelection(textFieldSelectionManager.getValue$foundation_release(), m794getOffsetForPosition3MmeM6k$default, m794getOffsetForPosition3MmeM6k$default, false, adjustment);
                    return true;
                }
                return false;
            }
        };
    }

    public /* synthetic */ TextFieldSelectionManager(UndoManager undoManager, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : undoManager);
    }
}
