package androidx.core.text;

import android.text.TextUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: CharSequence.kt */
@Metadata
/* loaded from: classes.dex */
public final class CharSequenceKt {
    public static final boolean isDigitsOnly(@NotNull CharSequence charSequence) {
        return TextUtils.isDigitsOnly(charSequence);
    }

    public static final int trimmedLength(@NotNull CharSequence charSequence) {
        return TextUtils.getTrimmedLength(charSequence);
    }
}
