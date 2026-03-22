package androidx.compose.runtime.internal;

import android.util.Log;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Utils.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class Utils_androidKt {
    @NotNull
    private static final String LogTag = "ComposeInternal";

    public static final void logError(@NotNull String str, @NotNull Throwable th2) {
        Log.e(LogTag, str, th2);
    }
}
