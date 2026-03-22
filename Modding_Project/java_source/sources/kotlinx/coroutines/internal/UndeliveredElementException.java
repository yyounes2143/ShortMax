package kotlinx.coroutines.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: OnUndeliveredElement.kt */
@Metadata
/* loaded from: classes8.dex */
public final class UndeliveredElementException extends RuntimeException {
    public UndeliveredElementException(@NotNull String str, @NotNull Throwable th2) {
        super(str, th2);
    }
}
