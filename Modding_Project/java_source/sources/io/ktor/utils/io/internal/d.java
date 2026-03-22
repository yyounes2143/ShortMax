package io.ktor.utils.io.internal;

import io.ktor.utils.io.internal.f;
import io.ktor.utils.io.pool.DefaultPool;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ObjectPool.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final int f59548a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f59549b;

    /* renamed from: c  reason: collision with root package name */
    private static final int f59550c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final io.ktor.utils.io.pool.b<ByteBuffer> f59551d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final io.ktor.utils.io.pool.b<f.c> f59552e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final io.ktor.utils.io.pool.b<f.c> f59553f;

    /* compiled from: ObjectPool.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends io.ktor.utils.io.pool.a<f.c> {
        a() {
        }

        @Override // io.ktor.utils.io.pool.b
        @NotNull
        /* renamed from: d */
        public f.c p0() {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(d.a());
            Intrinsics.checkNotNullExpressionValue(allocateDirect, "allocateDirect(BUFFER_SIZE)");
            return new f.c(allocateDirect, 0, 2, null);
        }
    }

    /* compiled from: ObjectPool.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends DefaultPool<f.c> {
        b(int i10) {
            super(i10);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.ktor.utils.io.pool.DefaultPool
        /* renamed from: r */
        public void d(@NotNull f.c instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            d.d().y(instance.f59556a);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.ktor.utils.io.pool.DefaultPool
        @NotNull
        /* renamed from: s */
        public f.c l() {
            return new f.c(d.d().p0(), 0, 2, null);
        }
    }

    static {
        int a10 = i.a("BufferSize", 4096);
        f59548a = a10;
        int a11 = i.a("BufferPoolSize", 2048);
        f59549b = a11;
        int a12 = i.a("BufferObjectPoolSize", 1024);
        f59550c = a12;
        f59551d = new js.d(a11, a10);
        f59552e = new b(a12);
        f59553f = new a();
    }

    public static final int a() {
        return f59548a;
    }

    @NotNull
    public static final io.ktor.utils.io.pool.b<f.c> b() {
        return f59553f;
    }

    @NotNull
    public static final io.ktor.utils.io.pool.b<f.c> c() {
        return f59552e;
    }

    @NotNull
    public static final io.ktor.utils.io.pool.b<ByteBuffer> d() {
        return f59551d;
    }
}
