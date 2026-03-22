package androidx.compose.ui.platform;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidComposeView.android.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes.dex */
final class AndroidComposeViewVerificationHelperMethodsO {
    @NotNull
    public static final AndroidComposeViewVerificationHelperMethodsO INSTANCE = new AndroidComposeViewVerificationHelperMethodsO();

    private AndroidComposeViewVerificationHelperMethodsO() {
    }

    @DoNotInline
    @RequiresApi(26)
    public final void focusable(@NotNull View view, int i10, boolean z10) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setFocusable(i10);
        view.setDefaultFocusHighlightEnabled(z10);
    }
}
