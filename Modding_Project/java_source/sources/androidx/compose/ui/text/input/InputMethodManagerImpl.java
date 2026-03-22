package androidx.compose.ui.text.input;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import android.view.inputmethod.ExtractedText;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InputMethodManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class InputMethodManagerImpl implements InputMethodManager {
    @NotNull
    private final i imm$delegate;

    public InputMethodManagerImpl(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.imm$delegate = c.a(LazyThreadSafetyMode.NONE, new Function0<android.view.inputmethod.InputMethodManager>() { // from class: androidx.compose.ui.text.input.InputMethodManagerImpl$imm$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final android.view.inputmethod.InputMethodManager invoke() {
                Object systemService = context.getSystemService("input_method");
                if (systemService != null) {
                    return (android.view.inputmethod.InputMethodManager) systemService;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
            }
        });
    }

    private final android.view.inputmethod.InputMethodManager getImm() {
        return (android.view.inputmethod.InputMethodManager) this.imm$delegate.getValue();
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void hideSoftInputFromWindow(@Nullable IBinder iBinder) {
        getImm().hideSoftInputFromWindow(iBinder, 0);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void restartInput(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        getImm().restartInput(view);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void showSoftInput(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        getImm().showSoftInput(view, 0);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void updateExtractedText(@NotNull View view, int i10, @NotNull ExtractedText extractedText) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(extractedText, "extractedText");
        getImm().updateExtractedText(view, i10, extractedText);
    }

    @Override // androidx.compose.ui.text.input.InputMethodManager
    public void updateSelection(@NotNull View view, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(view, "view");
        getImm().updateSelection(view, i10, i11, i12, i13);
    }
}
