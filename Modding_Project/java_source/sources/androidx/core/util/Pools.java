package androidx.core.util;

import androidx.annotation.IntRange;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Pools.kt */
@Metadata
/* loaded from: classes.dex */
public final class Pools {

    /* compiled from: Pools.kt */
    @Metadata
    /* loaded from: classes.dex */
    public interface Pool<T> {
        @Nullable
        T acquire();

        boolean release(@NotNull T t10);
    }

    /* compiled from: Pools.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pools.kt\nandroidx/core/util/Pools$SimplePool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"})
    /* loaded from: classes.dex */
    public static class SimplePool<T> implements Pool<T> {
        @NotNull
        private final Object[] pool;
        private int poolSize;

        public SimplePool(@IntRange(from = 1) int i10) {
            if (i10 > 0) {
                this.pool = new Object[i10];
                return;
            }
            throw new IllegalArgumentException("The max pool size must be > 0");
        }

        private final boolean isInPool(T t10) {
            int i10 = this.poolSize;
            for (int i11 = 0; i11 < i10; i11++) {
                if (this.pool[i11] == t10) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.core.util.Pools.Pool
        @Nullable
        public T acquire() {
            int i10 = this.poolSize;
            if (i10 <= 0) {
                return null;
            }
            int i11 = i10 - 1;
            T t10 = (T) this.pool[i11];
            Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
            this.pool[i11] = null;
            this.poolSize--;
            return t10;
        }

        @Override // androidx.core.util.Pools.Pool
        public boolean release(@NotNull T instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            if (!isInPool(instance)) {
                int i10 = this.poolSize;
                Object[] objArr = this.pool;
                if (i10 < objArr.length) {
                    objArr[i10] = instance;
                    this.poolSize = i10 + 1;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("Already in the pool!");
        }
    }

    /* compiled from: Pools.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pools.kt\nandroidx/core/util/Pools$SynchronizedPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"})
    /* loaded from: classes.dex */
    public static class SynchronizedPool<T> extends SimplePool<T> {
        @NotNull
        private final Object lock;

        public SynchronizedPool(int i10) {
            super(i10);
            this.lock = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        @Nullable
        public T acquire() {
            T t10;
            synchronized (this.lock) {
                t10 = (T) super.acquire();
            }
            return t10;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(@NotNull T instance) {
            boolean release;
            Intrinsics.checkNotNullParameter(instance, "instance");
            synchronized (this.lock) {
                release = super.release(instance);
            }
            return release;
        }
    }

    private Pools() {
    }
}
