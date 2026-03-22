package androidx.datastore.core.okio;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Atomic.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class AtomicInt {
    @NotNull
    private final AtomicInteger delegate;

    public AtomicInt(int i10) {
        this.delegate = new AtomicInteger(i10);
    }

    public final int decrementAndGet() {
        return this.delegate.decrementAndGet();
    }

    public final int get() {
        return this.delegate.get();
    }

    public final int getAndIncrement() {
        return this.delegate.getAndIncrement();
    }

    public final int incrementAndGet() {
        return this.delegate.incrementAndGet();
    }
}
