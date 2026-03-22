package io.ktor.utils.io.pool;

import io.ktor.utils.io.pool.b;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import js.c;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultPool.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDefaultPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultPool.kt\nio/ktor/utils/io/pool/DefaultPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Atomic.kt\nio/ktor/utils/io/utils/AtomicKt\n*L\n1#1,114:1\n1#2:115\n7#3:116\n*S KotlinDebug\n*F\n+ 1 DefaultPool.kt\nio/ktor/utils/io/pool/DefaultPool\n*L\n111#1:116\n*E\n"})
/* loaded from: classes8.dex */
public abstract class DefaultPool<T> implements b<T> {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f59637f = new a(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final AtomicLongFieldUpdater<DefaultPool<?>> f59638g;

    /* renamed from: a  reason: collision with root package name */
    private final int f59639a;

    /* renamed from: b  reason: collision with root package name */
    private final int f59640b;

    /* renamed from: c  reason: collision with root package name */
    private final int f59641c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReferenceArray<T> f59642d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final int[] f59643e;
    private volatile long top;

    /* compiled from: DefaultPool.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    static {
        AtomicLongFieldUpdater<DefaultPool<?>> newUpdater = AtomicLongFieldUpdater.newUpdater(DefaultPool.class, new MutablePropertyReference1Impl() { // from class: io.ktor.utils.io.pool.DefaultPool$Companion$Top$1
            @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KProperty1
            @Nullable
            public Object get(@Nullable Object obj) {
                long j10;
                j10 = ((DefaultPool) obj).top;
                return Long.valueOf(j10);
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference1Impl, kotlin.reflect.KMutableProperty1
            public void set(@Nullable Object obj, @Nullable Object obj2) {
                ((DefaultPool) obj).top = ((Number) obj2).longValue();
            }
        }.getName());
        Intrinsics.checkNotNullExpressionValue(newUpdater, "newUpdater(Owner::class.java, p.name)");
        f59638g = newUpdater;
    }

    public DefaultPool(int i10) {
        this.f59639a = i10;
        if (i10 > 0) {
            if (i10 <= 536870911) {
                int highestOneBit = Integer.highestOneBit((i10 * 4) - 1) * 2;
                this.f59640b = highestOneBit;
                this.f59641c = Integer.numberOfLeadingZeros(highestOneBit) + 1;
                this.f59642d = new AtomicReferenceArray<>(highestOneBit + 1);
                this.f59643e = new int[highestOneBit + 1];
                return;
            }
            throw new IllegalArgumentException(("capacity should be less or equal to 536870911 but it is " + i10).toString());
        }
        throw new IllegalArgumentException(("capacity should be positive but it is " + i10).toString());
    }

    private final int k() {
        long j10;
        long j11;
        int i10;
        do {
            j10 = this.top;
            if (j10 == 0) {
                return 0;
            }
            j11 = ((j10 >> 32) & 4294967295L) + 1;
            i10 = (int) (4294967295L & j10);
            if (i10 == 0) {
                return 0;
            }
        } while (!f59638g.compareAndSet(this, j10, (j11 << 32) | this.f59643e[i10]));
        return i10;
    }

    private final void m(int i10) {
        long j10;
        if (i10 > 0) {
            do {
                j10 = this.top;
                this.f59643e[i10] = (int) (4294967295L & j10);
            } while (!f59638g.compareAndSet(this, j10, ((((j10 >> 32) & 4294967295L) + 1) << 32) | i10));
            return;
        }
        throw new IllegalArgumentException("index should be positive");
    }

    private final T o() {
        int k10 = k();
        if (k10 == 0) {
            return null;
        }
        return this.f59642d.getAndSet(k10, null);
    }

    private final boolean p(T t10) {
        int identityHashCode = ((System.identityHashCode(t10) * (-1640531527)) >>> this.f59641c) + 1;
        for (int i10 = 0; i10 < 8; i10++) {
            if (c.a(this.f59642d, identityHashCode, null, t10)) {
                m(identityHashCode);
                return true;
            }
            identityHashCode--;
            if (identityHashCode == 0) {
                identityHashCode = this.f59640b;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public T c(@NotNull T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        return instance;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        b.a.a(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(@NotNull T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // io.ktor.utils.io.pool.b
    public final void dispose() {
        while (true) {
            T o10 = o();
            if (o10 == null) {
                return;
            }
            d(o10);
        }
    }

    @NotNull
    protected abstract T l();

    @Override // io.ktor.utils.io.pool.b
    @NotNull
    public final T p0() {
        T c10;
        T o10 = o();
        if (o10 == null || (c10 = c(o10)) == null) {
            return l();
        }
        return c10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q(@NotNull T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // io.ktor.utils.io.pool.b
    public final void y(@NotNull T instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        q(instance);
        if (!p(instance)) {
            d(instance);
        }
    }
}
