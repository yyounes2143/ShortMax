package is;

import io.ktor.utils.io.pool.b;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ChunkBuffer.kt */
@ms.c
@Metadata
@SourceDebugExtension({"SMAP\nChunkBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,180:1\n1#2:181\n360#3,4:182\n360#3,4:186\n382#3,4:190\n*S KotlinDebug\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n*L\n89#1:182,4\n99#1:186,4\n116#1:190,4\n*E\n"})
/* loaded from: classes8.dex */
public class a extends hs.a {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final d f60072j = new d(null);

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f60073k;

    /* renamed from: l  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f60074l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final io.ktor.utils.io.pool.b<a> f60075m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final a f60076n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final io.ktor.utils.io.pool.b<a> f60077o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final io.ktor.utils.io.pool.b<a> f60078p;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final io.ktor.utils.io.pool.b<a> f60079h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private a f60080i;
    @NotNull
    private volatile /* synthetic */ Object nextRef;
    @NotNull
    private volatile /* synthetic */ int refCount;

    /* compiled from: ChunkBuffer.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends io.ktor.utils.io.pool.a<a> {
        b() {
        }

        @Override // io.ktor.utils.io.pool.b
        @NotNull
        /* renamed from: d */
        public a p0() {
            return new a(fs.b.f51937a.b(4096), null, this, null);
        }

        @Override // io.ktor.utils.io.pool.a, io.ktor.utils.io.pool.b
        /* renamed from: g */
        public void y(@NotNull a instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            fs.b.f51937a.a(instance.g());
        }
    }

    /* compiled from: ChunkBuffer.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c extends io.ktor.utils.io.pool.a<a> {
        c() {
        }

        @Override // io.ktor.utils.io.pool.b
        @NotNull
        /* renamed from: d */
        public a p0() {
            throw new UnsupportedOperationException("This pool doesn't support borrow");
        }

        @Override // io.ktor.utils.io.pool.a, io.ktor.utils.io.pool.b
        /* renamed from: g */
        public void y(@NotNull a instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
        }
    }

    /* compiled from: ChunkBuffer.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final a a() {
            return a.f60076n;
        }

        @NotNull
        public final io.ktor.utils.io.pool.b<a> b() {
            return a.f60075m;
        }

        @NotNull
        public final io.ktor.utils.io.pool.b<a> c() {
            return hs.c.a();
        }

        private d() {
        }
    }

    static {
        C0830a c0830a = new C0830a();
        f60075m = c0830a;
        f60076n = new a(fs.c.f51938a.a(), null, c0830a, null);
        f60077o = new b();
        f60078p = new c();
        f60073k = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "nextRef");
        f60074l = AtomicIntegerFieldUpdater.newUpdater(a.class, "refCount");
    }

    public /* synthetic */ a(ByteBuffer byteBuffer, a aVar, io.ktor.utils.io.pool.b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteBuffer, aVar, bVar);
    }

    private final void v(a aVar) {
        if (androidx.concurrent.futures.a.a(f60073k, this, null, aVar)) {
            return;
        }
        throw new IllegalStateException("This chunk has already a next chunk.");
    }

    public void A(@NotNull io.ktor.utils.io.pool.b<a> pool) {
        Intrinsics.checkNotNullParameter(pool, "pool");
        if (B()) {
            a aVar = this.f60080i;
            if (aVar != null) {
                D();
                aVar.A(pool);
                return;
            }
            io.ktor.utils.io.pool.b<a> bVar = this.f60079h;
            if (bVar != null) {
                pool = bVar;
            }
            pool.y(this);
        }
    }

    public final boolean B() {
        int i10;
        int i11;
        do {
            i10 = this.refCount;
            if (i10 > 0) {
                i11 = i10 - 1;
            } else {
                throw new IllegalStateException("Unable to release: it is already released.");
            }
        } while (!f60074l.compareAndSet(this, i10, i11));
        if (i11 == 0) {
            return true;
        }
        return false;
    }

    public final void C(@Nullable a aVar) {
        if (aVar == null) {
            w();
        } else {
            v(aVar);
        }
    }

    public final void D() {
        if (f60074l.compareAndSet(this, 0, -1)) {
            w();
            this.f60080i = null;
            return;
        }
        throw new IllegalStateException("Unable to unlink: buffer is in use.");
    }

    public final void E() {
        int i10;
        do {
            i10 = this.refCount;
            if (i10 >= 0) {
                if (i10 > 0) {
                    throw new IllegalStateException("This instance is already in use but somehow appeared in the pool.");
                }
            } else {
                throw new IllegalStateException("This instance is already disposed and couldn't be borrowed.");
            }
        } while (!f60074l.compareAndSet(this, i10, 1));
    }

    @Override // hs.a
    public final void q() {
        if (this.f60080i == null) {
            super.q();
            this.nextRef = null;
            return;
        }
        throw new IllegalArgumentException("Unable to reset buffer with origin");
    }

    @Nullable
    public final a w() {
        return (a) f60073k.getAndSet(this, null);
    }

    @Nullable
    public final a x() {
        return (a) this.nextRef;
    }

    @Nullable
    public final a y() {
        return this.f60080i;
    }

    public final int z() {
        return this.refCount;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private a(ByteBuffer memory, a aVar, io.ktor.utils.io.pool.b<a> bVar) {
        super(memory, null);
        Intrinsics.checkNotNullParameter(memory, "memory");
        this.f60079h = bVar;
        if (aVar != this) {
            this.nextRef = null;
            this.refCount = 1;
            this.f60080i = aVar;
            return;
        }
        throw new IllegalArgumentException("A chunk couldn't be a view of itself.");
    }

    /* compiled from: ChunkBuffer.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nChunkBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer$Companion$EmptyPool$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"})
    /* renamed from: is.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0830a implements io.ktor.utils.io.pool.b<a> {
        C0830a() {
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            b.a.a(this);
        }

        @Override // io.ktor.utils.io.pool.b
        @NotNull
        /* renamed from: d */
        public a p0() {
            return a.f60072j.a();
        }

        @Override // io.ktor.utils.io.pool.b
        /* renamed from: g */
        public void y(@NotNull a instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            if (instance == a.f60072j.a()) {
                return;
            }
            throw new IllegalArgumentException("Only ChunkBuffer.Empty instance could be recycled.");
        }

        @Override // io.ktor.utils.io.pool.b
        public void dispose() {
        }
    }
}
