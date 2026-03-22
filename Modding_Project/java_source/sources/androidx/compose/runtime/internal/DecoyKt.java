package androidx.compose.runtime.internal;

import androidx.compose.runtime.ComposeCompilerApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Decoy.kt */
@Metadata
/* loaded from: classes.dex */
public final class DecoyKt {
    @ComposeCompilerApi
    @NotNull
    public static final Void illegalDecoyCallException(@NotNull String str) {
        throw new IllegalStateException("Function " + str + " should have been replaced by compiler.");
    }
}
