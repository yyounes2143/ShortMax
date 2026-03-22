package ot;

import gt.c0;
import kotlin.Metadata;
import mt.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Dispatcher.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b extends e {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final b f64388g = new b();

    private b() {
        super(i.f64400c, i.f64401d, i.f64402e, i.f64398a);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // gt.c0
    @NotNull
    public c0 limitedParallelism(int i10, @Nullable String str) {
        l.a(i10);
        if (i10 >= i.f64400c) {
            return l.b(this, str);
        }
        return super.limitedParallelism(i10, str);
    }

    @Override // gt.c0
    @NotNull
    public String toString() {
        return "Dispatchers.Default";
    }
}
