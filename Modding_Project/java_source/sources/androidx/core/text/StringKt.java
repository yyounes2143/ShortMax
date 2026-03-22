package androidx.core.text;

import android.text.TextUtils;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: String.kt */
@Metadata
/* loaded from: classes.dex */
public final class StringKt {
    @NotNull
    public static final String htmlEncode(@NotNull String str) {
        return TextUtils.htmlEncode(str);
    }
}
