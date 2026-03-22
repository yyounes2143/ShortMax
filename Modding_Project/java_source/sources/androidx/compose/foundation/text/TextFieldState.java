package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoreTextField.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldState {
    @NotNull
    private final MutableState handleState$delegate;
    @NotNull
    private final MutableState hasFocus$delegate;
    @Nullable
    private TextInputSession inputSession;
    @NotNull
    private final KeyboardActionRunner keyboardActionRunner;
    @Nullable
    private LayoutCoordinates layoutCoordinates;
    @NotNull
    private final MutableState layoutResult$delegate;
    @NotNull
    private final Function1<ImeAction, Unit> onImeActionPerformed;
    @NotNull
    private final Function1<TextFieldValue, Unit> onValueChange;
    @NotNull
    private Function1<? super TextFieldValue, Unit> onValueChangeOriginal;
    @NotNull
    private final EditProcessor processor;
    @NotNull
    private final RecomposeScope recomposeScope;
    @NotNull
    private final Paint selectionPaint;
    @NotNull
    private final MutableState showCursorHandle$delegate;
    private boolean showFloatingToolbar;
    @NotNull
    private final MutableState showSelectionHandleEnd$delegate;
    @NotNull
    private final MutableState showSelectionHandleStart$delegate;
    @NotNull
    private TextDelegate textDelegate;

    public TextFieldState(@NotNull TextDelegate textDelegate, @NotNull RecomposeScope recomposeScope) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        MutableState mutableStateOf$default3;
        MutableState mutableStateOf$default4;
        MutableState mutableStateOf$default5;
        MutableState mutableStateOf$default6;
        Intrinsics.checkNotNullParameter(textDelegate, "textDelegate");
        Intrinsics.checkNotNullParameter(recomposeScope, "recomposeScope");
        this.textDelegate = textDelegate;
        this.recomposeScope = recomposeScope;
        this.processor = new EditProcessor();
        Boolean bool = Boolean.FALSE;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.hasFocus$delegate = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.layoutResult$delegate = mutableStateOf$default2;
        mutableStateOf$default3 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(HandleState.None, null, 2, null);
        this.handleState$delegate = mutableStateOf$default3;
        mutableStateOf$default4 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.showSelectionHandleStart$delegate = mutableStateOf$default4;
        mutableStateOf$default5 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.showSelectionHandleEnd$delegate = mutableStateOf$default5;
        mutableStateOf$default6 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.showCursorHandle$delegate = mutableStateOf$default6;
        this.keyboardActionRunner = new KeyboardActionRunner();
        this.onValueChangeOriginal = new Function1<TextFieldValue, Unit>() { // from class: androidx.compose.foundation.text.TextFieldState$onValueChangeOriginal$1
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
        this.onValueChange = new Function1<TextFieldValue, Unit>() { // from class: androidx.compose.foundation.text.TextFieldState$onValueChange$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TextFieldValue textFieldValue) {
                invoke2(textFieldValue);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull TextFieldValue it) {
                Function1 function1;
                Intrinsics.checkNotNullParameter(it, "it");
                if (!Intrinsics.areEqual(it.getText(), TextFieldState.this.getTextDelegate().getText().getText())) {
                    TextFieldState.this.setHandleState(HandleState.None);
                }
                function1 = TextFieldState.this.onValueChangeOriginal;
                function1.invoke(it);
                TextFieldState.this.getRecomposeScope().invalidate();
            }
        };
        this.onImeActionPerformed = new Function1<ImeAction, Unit>() { // from class: androidx.compose.foundation.text.TextFieldState$onImeActionPerformed$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImeAction imeAction) {
                m791invokeKlQnJC8(imeAction.m3826unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-KlQnJC8  reason: not valid java name */
            public final void m791invokeKlQnJC8(int i10) {
                KeyboardActionRunner keyboardActionRunner;
                keyboardActionRunner = TextFieldState.this.keyboardActionRunner;
                keyboardActionRunner.m725runActionKlQnJC8(i10);
            }
        };
        this.selectionPaint = AndroidPaint_androidKt.Paint();
    }

    @NotNull
    public final HandleState getHandleState() {
        return (HandleState) this.handleState$delegate.getValue();
    }

    public final boolean getHasFocus() {
        return ((Boolean) this.hasFocus$delegate.getValue()).booleanValue();
    }

    @Nullable
    public final TextInputSession getInputSession() {
        return this.inputSession;
    }

    @Nullable
    public final LayoutCoordinates getLayoutCoordinates() {
        return this.layoutCoordinates;
    }

    @Nullable
    public final TextLayoutResultProxy getLayoutResult() {
        return (TextLayoutResultProxy) this.layoutResult$delegate.getValue();
    }

    @NotNull
    public final Function1<ImeAction, Unit> getOnImeActionPerformed() {
        return this.onImeActionPerformed;
    }

    @NotNull
    public final Function1<TextFieldValue, Unit> getOnValueChange() {
        return this.onValueChange;
    }

    @NotNull
    public final EditProcessor getProcessor() {
        return this.processor;
    }

    @NotNull
    public final RecomposeScope getRecomposeScope() {
        return this.recomposeScope;
    }

    @NotNull
    public final Paint getSelectionPaint() {
        return this.selectionPaint;
    }

    public final boolean getShowCursorHandle() {
        return ((Boolean) this.showCursorHandle$delegate.getValue()).booleanValue();
    }

    public final boolean getShowFloatingToolbar() {
        return this.showFloatingToolbar;
    }

    public final boolean getShowSelectionHandleEnd() {
        return ((Boolean) this.showSelectionHandleEnd$delegate.getValue()).booleanValue();
    }

    public final boolean getShowSelectionHandleStart() {
        return ((Boolean) this.showSelectionHandleStart$delegate.getValue()).booleanValue();
    }

    @NotNull
    public final TextDelegate getTextDelegate() {
        return this.textDelegate;
    }

    public final void setHandleState(@NotNull HandleState handleState) {
        Intrinsics.checkNotNullParameter(handleState, "<set-?>");
        this.handleState$delegate.setValue(handleState);
    }

    public final void setHasFocus(boolean z10) {
        this.hasFocus$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setInputSession(@Nullable TextInputSession textInputSession) {
        this.inputSession = textInputSession;
    }

    public final void setLayoutCoordinates(@Nullable LayoutCoordinates layoutCoordinates) {
        this.layoutCoordinates = layoutCoordinates;
    }

    public final void setLayoutResult(@Nullable TextLayoutResultProxy textLayoutResultProxy) {
        this.layoutResult$delegate.setValue(textLayoutResultProxy);
    }

    public final void setShowCursorHandle(boolean z10) {
        this.showCursorHandle$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setShowFloatingToolbar(boolean z10) {
        this.showFloatingToolbar = z10;
    }

    public final void setShowSelectionHandleEnd(boolean z10) {
        this.showSelectionHandleEnd$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setShowSelectionHandleStart(boolean z10) {
        this.showSelectionHandleStart$delegate.setValue(Boolean.valueOf(z10));
    }

    public final void setTextDelegate(@NotNull TextDelegate textDelegate) {
        Intrinsics.checkNotNullParameter(textDelegate, "<set-?>");
        this.textDelegate = textDelegate;
    }

    /* renamed from: update-aKPr-nQ  reason: not valid java name */
    public final void m790updateaKPrnQ(@NotNull AnnotatedString visualText, @NotNull TextStyle textStyle, boolean z10, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull Function1<? super TextFieldValue, Unit> onValueChange, @NotNull KeyboardActions keyboardActions, @NotNull FocusManager focusManager, long j10) {
        Intrinsics.checkNotNullParameter(visualText, "visualText");
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        Intrinsics.checkNotNullParameter(keyboardActions, "keyboardActions");
        Intrinsics.checkNotNullParameter(focusManager, "focusManager");
        this.onValueChangeOriginal = onValueChange;
        this.selectionPaint.mo1726setColor8_81llA(j10);
        KeyboardActionRunner keyboardActionRunner = this.keyboardActionRunner;
        keyboardActionRunner.setKeyboardActions(keyboardActions);
        keyboardActionRunner.setFocusManager(focusManager);
        this.textDelegate = CoreTextKt.m719updateTextDelegatex_uQXYA$default(this.textDelegate, visualText, textStyle, density, fontFamilyResolver, z10, 0, 0, CollectionsKt.n(), 192, null);
    }
}
