package androidx.compose.ui.autofill;

import androidx.compose.ui.ExperimentalComposeUiApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Autofill.kt */
@ExperimentalComposeUiApi
@Metadata
/* loaded from: classes.dex */
public interface Autofill {
    void cancelAutofillForNode(@NotNull AutofillNode autofillNode);

    void requestAutofillForNode(@NotNull AutofillNode autofillNode);
}
