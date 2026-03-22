package androidx.compose.ui.platform;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.text.input.TextInputService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LocalSoftwareKeyboardController.kt */
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
final class DelegatingSoftwareKeyboardController implements SoftwareKeyboardController {
    @NotNull
    private final TextInputService textInputService;

    public DelegatingSoftwareKeyboardController(@NotNull TextInputService textInputService) {
        Intrinsics.checkNotNullParameter(textInputService, "textInputService");
        this.textInputService = textInputService;
    }

    @NotNull
    public final TextInputService getTextInputService() {
        return this.textInputService;
    }

    @Override // androidx.compose.ui.platform.SoftwareKeyboardController
    public void hide() {
        this.textInputService.hideSoftwareKeyboard();
    }

    @Override // androidx.compose.ui.platform.SoftwareKeyboardController
    public void show() {
        this.textInputService.showSoftwareKeyboard();
    }
}
