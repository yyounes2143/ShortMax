package yd;

import android.text.TextWatcher;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextWatchAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public class h implements TextWatcher {
    @Override // android.text.TextWatcher
    public void beforeTextChanged(@NotNull CharSequence s10, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(s10, "s");
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(@NotNull CharSequence s10, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(s10, "s");
    }
}
