package io.ktor.utils.io.pool;

import io.ktor.utils.io.pool.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Pool.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class a<T> implements b<T> {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b.a.a(this);
    }

    @Override // io.ktor.utils.io.pool.b
    public void y(@NotNull T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // io.ktor.utils.io.pool.b
    public void dispose() {
    }
}
