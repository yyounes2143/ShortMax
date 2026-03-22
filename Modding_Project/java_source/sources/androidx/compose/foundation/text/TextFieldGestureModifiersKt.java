package androidx.compose.foundation.text;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.selection.MouseSelectionObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextFieldGestureModifiers.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextFieldGestureModifiersKt {
    @NotNull
    public static final Modifier longPressDragGestureFilter(@NotNull Modifier modifier, @NotNull TextDragObserver observer, boolean z10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (z10) {
            return SuspendingPointerInputFilterKt.pointerInput(modifier, observer, new TextFieldGestureModifiersKt$longPressDragGestureFilter$1(observer, null));
        }
        return modifier;
    }

    @NotNull
    public static final Modifier mouseDragGestureDetector(@NotNull Modifier modifier, @NotNull MouseSelectionObserver observer, boolean z10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (z10) {
            return SuspendingPointerInputFilterKt.pointerInput(Modifier.Companion, observer, new TextFieldGestureModifiersKt$mouseDragGestureDetector$1(observer, null));
        }
        return modifier;
    }

    @NotNull
    public static final Modifier textFieldFocusModifier(@NotNull Modifier modifier, boolean z10, @NotNull FocusRequester focusRequester, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull Function1<? super FocusState, Unit> onFocusChanged) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusRequester, "focusRequester");
        Intrinsics.checkNotNullParameter(onFocusChanged, "onFocusChanged");
        return FocusableKt.focusable(FocusChangedModifierKt.onFocusChanged(FocusRequesterModifierKt.focusRequester(modifier, focusRequester), onFocusChanged), z10, mutableInteractionSource);
    }
}
