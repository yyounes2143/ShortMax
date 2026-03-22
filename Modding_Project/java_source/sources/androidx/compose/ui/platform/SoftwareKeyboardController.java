package androidx.compose.ui.platform;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
/* compiled from: SoftwareKeyboardController.kt */
@Stable
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public interface SoftwareKeyboardController {
    void hide();

    @ms.c
    default void hideSoftwareKeyboard() {
        hide();
    }

    void show();

    @ms.c
    default void showSoftwareKeyboard() {
        show();
    }
}
