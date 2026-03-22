package androidx.compose.foundation.text;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.text.input.ImeAction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: KeyboardActionRunner.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyboardActionRunner implements KeyboardActionScope {
    public FocusManager focusManager;
    public KeyboardActions keyboardActions;

    @Override // androidx.compose.foundation.text.KeyboardActionScope
    /* renamed from: defaultKeyboardAction-KlQnJC8  reason: not valid java name */
    public void mo724defaultKeyboardActionKlQnJC8(int i10) {
        boolean m3823equalsimpl0;
        boolean m3823equalsimpl02;
        boolean m3823equalsimpl03;
        ImeAction.Companion companion = ImeAction.Companion;
        if (ImeAction.m3823equalsimpl0(i10, companion.m3830getNexteUduSuo())) {
            getFocusManager().mo1556moveFocus3ESFkO8(FocusDirection.Companion.m1551getNextdhqQ8s());
        } else if (ImeAction.m3823equalsimpl0(i10, companion.m3832getPreviouseUduSuo())) {
            getFocusManager().mo1556moveFocus3ESFkO8(FocusDirection.Companion.m1553getPreviousdhqQ8s());
        } else {
            boolean z10 = true;
            if (ImeAction.m3823equalsimpl0(i10, companion.m3828getDoneeUduSuo())) {
                m3823equalsimpl0 = true;
            } else {
                m3823equalsimpl0 = ImeAction.m3823equalsimpl0(i10, companion.m3829getGoeUduSuo());
            }
            if (m3823equalsimpl0) {
                m3823equalsimpl02 = true;
            } else {
                m3823equalsimpl02 = ImeAction.m3823equalsimpl0(i10, companion.m3833getSearcheUduSuo());
            }
            if (m3823equalsimpl02) {
                m3823equalsimpl03 = true;
            } else {
                m3823equalsimpl03 = ImeAction.m3823equalsimpl0(i10, companion.m3834getSendeUduSuo());
            }
            if (!m3823equalsimpl03) {
                z10 = ImeAction.m3823equalsimpl0(i10, companion.m3827getDefaulteUduSuo());
            }
            if (!z10) {
                ImeAction.m3823equalsimpl0(i10, companion.m3831getNoneeUduSuo());
            }
        }
    }

    @NotNull
    public final FocusManager getFocusManager() {
        FocusManager focusManager = this.focusManager;
        if (focusManager != null) {
            return focusManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("focusManager");
        return null;
    }

    @NotNull
    public final KeyboardActions getKeyboardActions() {
        KeyboardActions keyboardActions = this.keyboardActions;
        if (keyboardActions != null) {
            return keyboardActions;
        }
        Intrinsics.throwUninitializedPropertyAccessException("keyboardActions");
        return null;
    }

    /* renamed from: runAction-KlQnJC8  reason: not valid java name */
    public final void m725runActionKlQnJC8(int i10) {
        boolean m3823equalsimpl0;
        Function1<KeyboardActionScope, Unit> function1;
        ImeAction.Companion companion = ImeAction.Companion;
        Unit unit = null;
        if (ImeAction.m3823equalsimpl0(i10, companion.m3828getDoneeUduSuo())) {
            function1 = getKeyboardActions().getOnDone();
        } else if (ImeAction.m3823equalsimpl0(i10, companion.m3829getGoeUduSuo())) {
            function1 = getKeyboardActions().getOnGo();
        } else if (ImeAction.m3823equalsimpl0(i10, companion.m3830getNexteUduSuo())) {
            function1 = getKeyboardActions().getOnNext();
        } else if (ImeAction.m3823equalsimpl0(i10, companion.m3832getPreviouseUduSuo())) {
            function1 = getKeyboardActions().getOnPrevious();
        } else if (ImeAction.m3823equalsimpl0(i10, companion.m3833getSearcheUduSuo())) {
            function1 = getKeyboardActions().getOnSearch();
        } else if (ImeAction.m3823equalsimpl0(i10, companion.m3834getSendeUduSuo())) {
            function1 = getKeyboardActions().getOnSend();
        } else {
            if (ImeAction.m3823equalsimpl0(i10, companion.m3827getDefaulteUduSuo())) {
                m3823equalsimpl0 = true;
            } else {
                m3823equalsimpl0 = ImeAction.m3823equalsimpl0(i10, companion.m3831getNoneeUduSuo());
            }
            if (m3823equalsimpl0) {
                function1 = null;
            } else {
                throw new IllegalStateException("invalid ImeAction");
            }
        }
        if (function1 != null) {
            function1.invoke(this);
            unit = Unit.f60915a;
        }
        if (unit == null) {
            mo724defaultKeyboardActionKlQnJC8(i10);
        }
    }

    public final void setFocusManager(@NotNull FocusManager focusManager) {
        Intrinsics.checkNotNullParameter(focusManager, "<set-?>");
        this.focusManager = focusManager;
    }

    public final void setKeyboardActions(@NotNull KeyboardActions keyboardActions) {
        Intrinsics.checkNotNullParameter(keyboardActions, "<set-?>");
        this.keyboardActions = keyboardActions;
    }
}
