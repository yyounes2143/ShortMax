package mt;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Concurrent.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    public static final <T> T a(@NotNull AtomicReference<T> atomicReference) {
        return atomicReference.get();
    }

    public static final <T> void b(@NotNull AtomicReference<T> atomicReference, T t10) {
        atomicReference.set(t10);
    }
}
