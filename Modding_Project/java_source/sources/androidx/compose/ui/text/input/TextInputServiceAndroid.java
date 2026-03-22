package androidx.compose.ui.text.input;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import jt.d;
import jt.g;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextInputServiceAndroid.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextInputServiceAndroid implements PlatformTextInputService {
    @NotNull
    private final i baseInputConnection$delegate;
    private boolean editorHasFocus;
    @Nullable
    private Rect focusedRect;
    @Nullable

    /* renamed from: ic  reason: collision with root package name */
    private RecordingInputConnection f1289ic;
    @NotNull
    private ImeOptions imeOptions;
    @NotNull
    private final InputMethodManager inputMethodManager;
    @NotNull
    private Function1<? super List<? extends EditCommand>, Unit> onEditCommand;
    @NotNull
    private Function1<? super ImeAction, Unit> onImeActionPerformed;
    @NotNull
    private TextFieldValue state;
    @NotNull
    private final d<TextInputCommand> textInputCommandChannel;
    @NotNull
    private final View view;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextInputServiceAndroid.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public enum TextInputCommand {
        StartInput,
        StopInput,
        ShowKeyboard,
        HideKeyboard
    }

    /* compiled from: TextInputServiceAndroid.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TextInputCommand.values().length];
            iArr[TextInputCommand.StartInput.ordinal()] = 1;
            iArr[TextInputCommand.StopInput.ordinal()] = 2;
            iArr[TextInputCommand.ShowKeyboard.ordinal()] = 3;
            iArr[TextInputCommand.HideKeyboard.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public TextInputServiceAndroid(@NotNull View view, @NotNull InputMethodManager inputMethodManager) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(inputMethodManager, "inputMethodManager");
        this.view = view;
        this.inputMethodManager = inputMethodManager;
        this.onEditCommand = new Function1<List<? extends EditCommand>, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$onEditCommand$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<? extends EditCommand> it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditCommand> list) {
                invoke2(list);
                return Unit.f60915a;
            }
        };
        this.onImeActionPerformed = new Function1<ImeAction, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$onImeActionPerformed$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImeAction imeAction) {
                m3875invokeKlQnJC8(imeAction.m3826unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-KlQnJC8  reason: not valid java name */
            public final void m3875invokeKlQnJC8(int i10) {
            }
        };
        this.state = new TextFieldValue("", TextRange.Companion.m3702getZerod9O1mEE(), (TextRange) null, 4, (DefaultConstructorMarker) null);
        this.imeOptions = ImeOptions.Companion.getDefault();
        this.baseInputConnection$delegate = c.a(LazyThreadSafetyMode.NONE, new Function0<BaseInputConnection>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$baseInputConnection$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final BaseInputConnection invoke() {
                return new BaseInputConnection(TextInputServiceAndroid.this.getView(), false);
            }
        });
        this.textInputCommandChannel = g.b(Integer.MAX_VALUE, null, null, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseInputConnection getBaseInputConnection() {
        return (BaseInputConnection) this.baseInputConnection$delegate.getValue();
    }

    private final void restartInputImmediately() {
        this.inputMethodManager.restartInput(this.view);
    }

    private final void setKeyboardVisibleImmediately(boolean z10) {
        if (z10) {
            this.inputMethodManager.showSoftInput(this.view);
        } else {
            this.inputMethodManager.hideSoftInputFromWindow(this.view.getWindowToken());
        }
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Boolean] */
    private static final void textInputCommandEventLoop$applyToState(TextInputCommand textInputCommand, Ref.ObjectRef<Boolean> objectRef, Ref.ObjectRef<Boolean> objectRef2) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[textInputCommand.ordinal()];
        boolean z10 = true;
        if (i10 != 1) {
            if (i10 != 2) {
                if ((i10 == 3 || i10 == 4) && !Intrinsics.areEqual(objectRef.element, Boolean.FALSE)) {
                    if (textInputCommand != TextInputCommand.ShowKeyboard) {
                        z10 = false;
                    }
                    objectRef2.element = Boolean.valueOf(z10);
                    return;
                }
                return;
            }
            ?? r32 = Boolean.FALSE;
            objectRef.element = r32;
            objectRef2.element = r32;
            return;
        }
        ?? r33 = Boolean.TRUE;
        objectRef.element = r33;
        objectRef2.element = r33;
    }

    @Nullable
    public final InputConnection createInputConnection(@NotNull EditorInfo outAttrs) {
        Intrinsics.checkNotNullParameter(outAttrs, "outAttrs");
        if (!this.editorHasFocus) {
            return null;
        }
        TextInputServiceAndroid_androidKt.update(outAttrs, this.imeOptions, this.state);
        RecordingInputConnection recordingInputConnection = new RecordingInputConnection(this.state, new InputEventCallback2() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$createInputConnection$1
            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void onEditCommands(@NotNull List<? extends EditCommand> editCommands) {
                Function1 function1;
                Intrinsics.checkNotNullParameter(editCommands, "editCommands");
                function1 = TextInputServiceAndroid.this.onEditCommand;
                function1.invoke(editCommands);
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            /* renamed from: onImeAction-KlQnJC8 */
            public void mo3841onImeActionKlQnJC8(int i10) {
                Function1 function1;
                function1 = TextInputServiceAndroid.this.onImeActionPerformed;
                function1.invoke(ImeAction.m3820boximpl(i10));
            }

            @Override // androidx.compose.ui.text.input.InputEventCallback2
            public void onKeyEvent(@NotNull KeyEvent event) {
                BaseInputConnection baseInputConnection;
                Intrinsics.checkNotNullParameter(event, "event");
                baseInputConnection = TextInputServiceAndroid.this.getBaseInputConnection();
                baseInputConnection.sendKeyEvent(event);
            }
        }, this.imeOptions.getAutoCorrect());
        this.f1289ic = recordingInputConnection;
        return recordingInputConnection;
    }

    @NotNull
    public final TextFieldValue getState$ui_release() {
        return this.state;
    }

    @NotNull
    public final View getView() {
        return this.view;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void hideSoftwareKeyboard() {
        this.textInputCommandChannel.h(TextInputCommand.HideKeyboard);
    }

    public final boolean isEditorFocused() {
        return this.editorHasFocus;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    @ms.c
    public void notifyFocusedRect(@NotNull androidx.compose.ui.geometry.Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Rect rect2 = new Rect(bt.a.c(rect.getLeft()), bt.a.c(rect.getTop()), bt.a.c(rect.getRight()), bt.a.c(rect.getBottom()));
        this.focusedRect = rect2;
        if (this.f1289ic == null) {
            this.view.requestRectangleOnScreen(new Rect(rect2));
        }
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void showSoftwareKeyboard() {
        this.textInputCommandChannel.h(TextInputCommand.ShowKeyboard);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void startInput(@NotNull TextFieldValue value, @NotNull ImeOptions imeOptions, @NotNull Function1<? super List<? extends EditCommand>, Unit> onEditCommand, @NotNull Function1<? super ImeAction, Unit> onImeActionPerformed) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(imeOptions, "imeOptions");
        Intrinsics.checkNotNullParameter(onEditCommand, "onEditCommand");
        Intrinsics.checkNotNullParameter(onImeActionPerformed, "onImeActionPerformed");
        this.editorHasFocus = true;
        this.state = value;
        this.imeOptions = imeOptions;
        this.onEditCommand = onEditCommand;
        this.onImeActionPerformed = onImeActionPerformed;
        this.textInputCommandChannel.h(TextInputCommand.StartInput);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void stopInput() {
        this.editorHasFocus = false;
        this.onEditCommand = new Function1<List<? extends EditCommand>, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$stopInput$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<? extends EditCommand> it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditCommand> list) {
                invoke2(list);
                return Unit.f60915a;
            }
        };
        this.onImeActionPerformed = new Function1<ImeAction, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$stopInput$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImeAction imeAction) {
                m3876invokeKlQnJC8(imeAction.m3826unboximpl());
                return Unit.f60915a;
            }

            /* renamed from: invoke-KlQnJC8  reason: not valid java name */
            public final void m3876invokeKlQnJC8(int i10) {
            }
        };
        this.focusedRect = null;
        this.textInputCommandChannel.h(TextInputCommand.StopInput);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004e -> B:18:0x0051). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object textInputCommandEventLoop(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1 r0 = (androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1 r0 = new androidx.compose.ui.text.input.TextInputServiceAndroid$textInputCommandEventLoop$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r2 = r0.L$1
            jt.f r2 = (jt.f) r2
            java.lang.Object r4 = r0.L$0
            androidx.compose.ui.text.input.TextInputServiceAndroid r4 = (androidx.compose.ui.text.input.TextInputServiceAndroid) r4
            kotlin.f.b(r9)
            goto L51
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L39:
            kotlin.f.b(r9)
            jt.d<androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand> r9 = r8.textInputCommandChannel
            jt.f r9 = r9.iterator()
            r4 = r8
            r2 = r9
        L44:
            r0.L$0 = r4
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r9 = r2.a(r0)
            if (r9 != r1) goto L51
            return r1
        L51:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lbd
            java.lang.Object r9 = r2.next()
            androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand r9 = (androidx.compose.ui.text.input.TextInputServiceAndroid.TextInputCommand) r9
            android.view.View r5 = r4.view
            boolean r5 = r5.isFocused()
            if (r5 != 0) goto L74
        L67:
            jt.d<androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand> r9 = r4.textInputCommandChannel
            java.lang.Object r9 = r9.l()
            boolean r9 = kotlinx.coroutines.channels.a.i(r9)
            if (r9 != 0) goto L67
            goto L44
        L74:
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
        L7e:
            if (r9 == 0) goto L90
            textInputCommandEventLoop$applyToState(r9, r5, r6)
            jt.d<androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand> r9 = r4.textInputCommandChannel
            java.lang.Object r9 = r9.l()
            java.lang.Object r9 = kotlinx.coroutines.channels.a.f(r9)
            androidx.compose.ui.text.input.TextInputServiceAndroid$TextInputCommand r9 = (androidx.compose.ui.text.input.TextInputServiceAndroid.TextInputCommand) r9
            goto L7e
        L90:
            T r9 = r5.element
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.a.a(r3)
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r7)
            if (r9 == 0) goto L9f
            r4.restartInputImmediately()
        L9f:
            T r9 = r6.element
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            if (r9 == 0) goto Lac
            boolean r9 = r9.booleanValue()
            r4.setKeyboardVisibleImmediately(r9)
        Lac:
            T r9 = r5.element
            r5 = 0
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r5)
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r5)
            if (r9 == 0) goto L44
            r4.restartInputImmediately()
            goto L44
        Lbd:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.TextInputServiceAndroid.textInputCommandEventLoop(rs.c):java.lang.Object");
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void updateState(@Nullable TextFieldValue textFieldValue, @NotNull TextFieldValue newValue) {
        boolean z10;
        int i10;
        int i11;
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        if (TextRange.m3690equalsimpl0(this.state.m3874getSelectiond9O1mEE(), newValue.m3874getSelectiond9O1mEE()) && Intrinsics.areEqual(this.state.m3873getCompositionMzsxiRA(), newValue.m3873getCompositionMzsxiRA())) {
            z10 = false;
        } else {
            z10 = true;
        }
        this.state = newValue;
        RecordingInputConnection recordingInputConnection = this.f1289ic;
        if (recordingInputConnection != null) {
            recordingInputConnection.setMTextFieldValue$ui_release(newValue);
        }
        if (Intrinsics.areEqual(textFieldValue, newValue)) {
            if (z10) {
                InputMethodManager inputMethodManager = this.inputMethodManager;
                View view = this.view;
                int m3695getMinimpl = TextRange.m3695getMinimpl(newValue.m3874getSelectiond9O1mEE());
                int m3694getMaximpl = TextRange.m3694getMaximpl(newValue.m3874getSelectiond9O1mEE());
                TextRange m3873getCompositionMzsxiRA = this.state.m3873getCompositionMzsxiRA();
                if (m3873getCompositionMzsxiRA != null) {
                    i10 = TextRange.m3695getMinimpl(m3873getCompositionMzsxiRA.m3701unboximpl());
                } else {
                    i10 = -1;
                }
                TextRange m3873getCompositionMzsxiRA2 = this.state.m3873getCompositionMzsxiRA();
                if (m3873getCompositionMzsxiRA2 != null) {
                    i11 = TextRange.m3694getMaximpl(m3873getCompositionMzsxiRA2.m3701unboximpl());
                } else {
                    i11 = -1;
                }
                inputMethodManager.updateSelection(view, m3695getMinimpl, m3694getMaximpl, i10, i11);
            }
        } else if (textFieldValue != null && (!Intrinsics.areEqual(textFieldValue.getText(), newValue.getText()) || (TextRange.m3690equalsimpl0(textFieldValue.m3874getSelectiond9O1mEE(), newValue.m3874getSelectiond9O1mEE()) && !Intrinsics.areEqual(textFieldValue.m3873getCompositionMzsxiRA(), newValue.m3873getCompositionMzsxiRA())))) {
            restartInputImmediately();
        } else {
            RecordingInputConnection recordingInputConnection2 = this.f1289ic;
            if (recordingInputConnection2 != null) {
                recordingInputConnection2.updateInputState(this.state, this.inputMethodManager, this.view);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputServiceAndroid(@org.jetbrains.annotations.NotNull android.view.View r4) {
        /*
            r3 = this;
            java.lang.String r0 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.compose.ui.text.input.InputMethodManagerImpl r0 = new androidx.compose.ui.text.input.InputMethodManagerImpl
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "view.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r0.<init>(r1)
            r3.<init>(r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.TextInputServiceAndroid.<init>(android.view.View):void");
    }
}
