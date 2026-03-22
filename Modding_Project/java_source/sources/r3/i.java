package r3;

import com.facebook.common.memory.PooledByteBuffer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BufferedDiskCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBufferedDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedDiskCache.kt\ncom/facebook/imagepipeline/cache/BufferedDiskCache\n+ 2 FrescoSystrace.kt\ncom/facebook/imagepipeline/systrace/FrescoSystrace\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n40#2,2:393\n44#2,5:396\n40#2,9:401\n1#3:395\n*S KotlinDebug\n*F\n+ 1 BufferedDiskCache.kt\ncom/facebook/imagepipeline/cache/BufferedDiskCache\n*L\n115#1:393,2\n115#1:396,5\n234#1:401,9\n*E\n"})
/* loaded from: classes3.dex */
public final class i {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f65508h = new a(null);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final Class<?> f65509i = i.class;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g2.e f65510a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n2.g f65511b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final n2.j f65512c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Executor f65513d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Executor f65514e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final s f65515f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final b0 f65516g;

    /* compiled from: BufferedDiskCache.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public i(@NotNull g2.e fileCache, @NotNull n2.g pooledByteBufferFactory, @NotNull n2.j pooledByteStreams, @NotNull Executor readExecutor, @NotNull Executor writeExecutor, @NotNull s imageCacheStatsTracker) {
        Intrinsics.checkNotNullParameter(fileCache, "fileCache");
        Intrinsics.checkNotNullParameter(pooledByteBufferFactory, "pooledByteBufferFactory");
        Intrinsics.checkNotNullParameter(pooledByteStreams, "pooledByteStreams");
        Intrinsics.checkNotNullParameter(readExecutor, "readExecutor");
        Intrinsics.checkNotNullParameter(writeExecutor, "writeExecutor");
        Intrinsics.checkNotNullParameter(imageCacheStatsTracker, "imageCacheStatsTracker");
        this.f65510a = fileCache;
        this.f65511b = pooledByteBufferFactory;
        this.f65512c = pooledByteStreams;
        this.f65513d = readExecutor;
        this.f65514e = writeExecutor;
        this.f65515f = imageCacheStatsTracker;
        b0 c10 = b0.c();
        Intrinsics.checkNotNullExpressionValue(c10, "getInstance(...)");
        this.f65516g = c10;
    }

    private final boolean f(f2.a aVar) {
        y3.k b10 = this.f65516g.b(aVar);
        if (b10 != null) {
            b10.close();
            l2.a.p(f65509i, "Found image for %s in staging area", aVar.getUriString());
            this.f65515f.l(aVar);
            return true;
        }
        l2.a.p(f65509i, "Did not find image for %s in staging area", aVar.getUriString());
        this.f65515f.b(aVar);
        try {
            return this.f65510a.f(aVar);
        } catch (Exception unused) {
            return false;
        }
    }

    private final w.e<y3.k> i(f2.a aVar, y3.k kVar) {
        l2.a.p(f65509i, "Found image for %s in staging area", aVar.getUriString());
        this.f65515f.l(aVar);
        w.e<y3.k> h10 = w.e.h(kVar);
        Intrinsics.checkNotNullExpressionValue(h10, "forResult(...)");
        return h10;
    }

    private final w.e<y3.k> k(final f2.a aVar, final AtomicBoolean atomicBoolean) {
        try {
            final Object d10 = z3.a.d("BufferedDiskCache_getAsync");
            return w.e.b(new Callable() { // from class: r3.e
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    y3.k l10;
                    l10 = i.l(d10, atomicBoolean, this, aVar);
                    return l10;
                }
            }, this.f65513d);
        } catch (Exception e10) {
            l2.a.y(f65509i, e10, "Failed to schedule disk-cache read for %s", aVar.getUriString());
            return w.e.g(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final y3.k l(Object obj, AtomicBoolean isCancelled, i this$0, f2.a key) {
        Intrinsics.checkNotNullParameter(isCancelled, "$isCancelled");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(key, "$key");
        Object e10 = z3.a.e(obj, null);
        try {
            if (!isCancelled.get()) {
                y3.k b10 = this$0.f65516g.b(key);
                if (b10 != null) {
                    l2.a.p(f65509i, "Found image for %s in staging area", key.getUriString());
                    this$0.f65515f.l(key);
                } else {
                    l2.a.p(f65509i, "Did not find image for %s in staging area", key.getUriString());
                    this$0.f65515f.b(key);
                    try {
                        PooledByteBuffer o10 = this$0.o(key);
                        if (o10 == null) {
                            return null;
                        }
                        o2.a w10 = o2.a.w(o10);
                        Intrinsics.checkNotNullExpressionValue(w10, "of(...)");
                        try {
                            b10 = new y3.k(w10);
                        } finally {
                            o2.a.r(w10);
                        }
                    } catch (Exception unused) {
                        return null;
                    }
                }
                if (!Thread.interrupted()) {
                    return b10;
                }
                l2.a.o(f65509i, "Host thread was interrupted, decreasing reference count");
                b10.close();
                throw new InterruptedException();
            }
            throw new CancellationException();
        } catch (Throwable th2) {
            try {
                z3.a.c(obj, th2);
                throw th2;
            } finally {
                z3.a.f(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(Object obj, i this$0, f2.a key, y3.k kVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(key, "$key");
        Object e10 = z3.a.e(obj, null);
        try {
            this$0.r(key, kVar);
        } finally {
        }
    }

    private final PooledByteBuffer o(f2.a aVar) throws IOException {
        try {
            Class<?> cls = f65509i;
            l2.a.p(cls, "Disk cache read for %s", aVar.getUriString());
            com.facebook.binaryresource.a c10 = this.f65510a.c(aVar);
            if (c10 == null) {
                l2.a.p(cls, "Disk cache miss for %s", aVar.getUriString());
                this.f65515f.k(aVar);
                return null;
            }
            l2.a.p(cls, "Found entry in disk cache for %s", aVar.getUriString());
            this.f65515f.i(aVar);
            InputStream a10 = c10.a();
            PooledByteBuffer e10 = this.f65511b.e(a10, (int) c10.size());
            a10.close();
            l2.a.p(cls, "Successful read from disk cache for %s", aVar.getUriString());
            return e10;
        } catch (IOException e11) {
            l2.a.y(f65509i, e11, "Exception reading from cache for %s", aVar.getUriString());
            this.f65515f.e(aVar);
            throw e11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void q(Object obj, i this$0, f2.a key) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(key, "$key");
        Object e10 = z3.a.e(obj, null);
        try {
            this$0.f65516g.f(key);
            this$0.f65510a.d(key);
            return null;
        } finally {
        }
    }

    private final void r(f2.a aVar, final y3.k kVar) {
        Class<?> cls = f65509i;
        l2.a.p(cls, "About to write to disk-cache for key %s", aVar.getUriString());
        try {
            this.f65510a.b(aVar, new f2.f() { // from class: r3.h
                @Override // f2.f
                public final void a(OutputStream outputStream) {
                    i.s(y3.k.this, this, outputStream);
                }
            });
            this.f65515f.c(aVar);
            l2.a.p(cls, "Successful disk-cache write for key %s", aVar.getUriString());
        } catch (IOException e10) {
            l2.a.y(f65509i, e10, "Failed to write to disk-cache for key %s", aVar.getUriString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(y3.k kVar, i this$0, OutputStream os2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(os2, "os");
        Intrinsics.checkNotNull(kVar);
        InputStream r10 = kVar.r();
        if (r10 != null) {
            this$0.f65512c.a(r10, os2);
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void e(@NotNull f2.a key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f65510a.e(key);
    }

    public final boolean g(@NotNull f2.a key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (!this.f65516g.a(key) && !this.f65510a.a(key)) {
            return false;
        }
        return true;
    }

    public final boolean h(@NotNull f2.a key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (g(key)) {
            return true;
        }
        return f(key);
    }

    @NotNull
    public final w.e<y3.k> j(@NotNull f2.a key, @NotNull AtomicBoolean isCancelled) {
        w.e<y3.k> k10;
        w.e<y3.k> i10;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(isCancelled, "isCancelled");
        if (!f4.b.d()) {
            y3.k b10 = this.f65516g.b(key);
            if (b10 == null || (i10 = i(key, b10)) == null) {
                return k(key, isCancelled);
            }
            return i10;
        }
        f4.b.a("BufferedDiskCache#get");
        try {
            y3.k b11 = this.f65516g.b(key);
            if (b11 != null) {
                k10 = i(key, b11);
                if (k10 == null) {
                }
                f4.b.b();
                return k10;
            }
            k10 = k(key, isCancelled);
            f4.b.b();
            return k10;
        } catch (Throwable th2) {
            f4.b.b();
            throw th2;
        }
    }

    public final void m(@NotNull final f2.a key, @NotNull y3.k encodedImage) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(encodedImage, "encodedImage");
        if (!f4.b.d()) {
            if (y3.k.T(encodedImage)) {
                this.f65516g.e(key, encodedImage);
                final y3.k g10 = y3.k.g(encodedImage);
                try {
                    final Object d10 = z3.a.d("BufferedDiskCache_putAsync");
                    this.f65514e.execute(new Runnable() { // from class: r3.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            i.n(d10, this, key, g10);
                        }
                    });
                    return;
                } catch (Exception e10) {
                    l2.a.y(f65509i, e10, "Failed to schedule disk-cache write for %s", key.getUriString());
                    this.f65516g.g(key, encodedImage);
                    y3.k.i(g10);
                    return;
                }
            }
            throw new IllegalStateException("Check failed.");
        }
        f4.b.a("BufferedDiskCache#put");
        try {
            if (y3.k.T(encodedImage)) {
                this.f65516g.e(key, encodedImage);
                final y3.k g11 = y3.k.g(encodedImage);
                try {
                    final Object d11 = z3.a.d("BufferedDiskCache_putAsync");
                    this.f65514e.execute(new Runnable() { // from class: r3.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            i.n(d11, this, key, g11);
                        }
                    });
                } catch (Exception e11) {
                    l2.a.y(f65509i, e11, "Failed to schedule disk-cache write for %s", key.getUriString());
                    this.f65516g.g(key, encodedImage);
                    y3.k.i(g11);
                }
                Unit unit = Unit.f60915a;
                return;
            }
            throw new IllegalStateException("Check failed.");
        } finally {
            f4.b.b();
        }
    }

    @NotNull
    public final w.e<Void> p(@NotNull final f2.a key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.f65516g.f(key);
        try {
            final Object d10 = z3.a.d("BufferedDiskCache_remove");
            return w.e.b(new Callable() { // from class: r3.g
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Void q10;
                    q10 = i.q(d10, this, key);
                    return q10;
                }
            }, this.f65514e);
        } catch (Exception e10) {
            l2.a.y(f65509i, e10, "Failed to schedule disk-cache remove for %s", key.getUriString());
            return w.e.g(e10);
        }
    }
}
