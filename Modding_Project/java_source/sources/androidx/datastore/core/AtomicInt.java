package androidx.datastore.core;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Actual.jvm.kt */
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

    public /* synthetic */ AtomicInt(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
