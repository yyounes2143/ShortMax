package androidx.compose.ui.text.input;

import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextInputService.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextInputSession {
    @NotNull
    private final PlatformTextInputService platformTextInputService;
    @NotNull
    private final TextInputService textInputService;

    public TextInputSession(@NotNull TextInputService textInputService, @NotNull PlatformTextInputService platformTextInputService) {
        Intrinsics.checkNotNullParameter(textInputService, "textInputService");
        Intrinsics.checkNotNullParameter(platformTextInputService, "platformTextInputService");
        this.textInputService = textInputService;
        this.platformTextInputService = platformTextInputService;
    }

    private final boolean ensureOpenSession(Function0<Unit> function0) {
        boolean isOpen = isOpen();
        if (isOpen) {
            function0.invoke();
        }
        return isOpen;
    }

    public final void dispose() {
        this.textInputService.stopInput(this);
    }

    public final boolean hideSoftwareKeyboard() {
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.hideSoftwareKeyboard();
        }
        return isOpen;
    }

    public final boolean isOpen() {
        return Intrinsics.areEqual(this.textInputService.getCurrentInputSession$ui_text_release(), this);
    }

    @c
    public final boolean notifyFocusedRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.notifyFocusedRect(rect);
        }
        return isOpen;
    }

    public final boolean showSoftwareKeyboard() {
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.showSoftwareKeyboard();
        }
        return isOpen;
    }

    public final boolean updateState(@Nullable TextFieldValue textFieldValue, @NotNull TextFieldValue newValue) {
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        boolean isOpen = isOpen();
        if (isOpen) {
            this.platformTextInputService.updateState(textFieldValue, newValue);
        }
        return isOpen;
    }
}
