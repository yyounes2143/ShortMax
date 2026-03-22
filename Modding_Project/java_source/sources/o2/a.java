package o2;

import android.graphics.Bitmap;
import com.facebook.common.references.SharedReference;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* compiled from: CloseableReference.java */
/* loaded from: classes3.dex */
public abstract class a<T> implements Cloneable, Closeable {

    /* renamed from: f  reason: collision with root package name */
    private static int f63077f;

    /* renamed from: a  reason: collision with root package name */
    protected boolean f63080a = false;

    /* renamed from: b  reason: collision with root package name */
    protected final SharedReference<T> f63081b;

    /* renamed from: c  reason: collision with root package name */
    protected final c f63082c;

    /* renamed from: d  reason: collision with root package name */
    protected final Throwable f63083d;

    /* renamed from: e  reason: collision with root package name */
    private static Class<a> f63076e = a.class;

    /* renamed from: g  reason: collision with root package name */
    private static final h<Closeable> f63078g = new C0884a();

    /* renamed from: h  reason: collision with root package name */
    private static final c f63079h = new b();

    /* compiled from: CloseableReference.java */
    /* renamed from: o2.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0884a implements h<Closeable> {
        C0884a() {
        }

        @Override // o2.h
        /* renamed from: a */
        public void release(Closeable closeable) {
            try {
                k2.b.a(closeable, true);
            } catch (IOException unused) {
            }
        }
    }

    /* compiled from: CloseableReference.java */
    /* loaded from: classes3.dex */
    class b implements c {
        b() {
        }

        @Override // o2.a.c
        public boolean a() {
            return false;
        }

        @Override // o2.a.c
        public void b(SharedReference<Object> sharedReference, Throwable th2) {
            String name;
            Object f10 = sharedReference.f();
            Class cls = a.f63076e;
            Integer valueOf = Integer.valueOf(System.identityHashCode(this));
            Integer valueOf2 = Integer.valueOf(System.identityHashCode(sharedReference));
            if (f10 == null) {
                name = null;
            } else {
                name = f10.getClass().getName();
            }
            l2.a.x(cls, "Finalized without closing: %x %x (type = %s)", valueOf, valueOf2, name);
        }
    }

    /* compiled from: CloseableReference.java */
    /* loaded from: classes3.dex */
    public interface c {
        boolean a();

        void b(SharedReference<Object> sharedReference, Throwable th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(SharedReference<T> sharedReference, c cVar, Throwable th2) {
        this.f63081b = (SharedReference) k2.h.g(sharedReference);
        sharedReference.b();
        this.f63082c = cVar;
        this.f63083d = th2;
    }

    public static <T> a<T> F(T t10, h<T> hVar) {
        return P(t10, hVar, f63079h);
    }

    public static <T> a<T> P(T t10, h<T> hVar, c cVar) {
        Throwable th2 = null;
        if (t10 == null) {
            return null;
        }
        if (cVar.a()) {
            th2 = new Throwable();
        }
        return R(t10, hVar, cVar, th2);
    }

    public static <T> a<T> R(T t10, h<T> hVar, c cVar, Throwable th2) {
        if (t10 == null) {
            return null;
        }
        if ((t10 instanceof Bitmap) || (t10 instanceof d)) {
            int i10 = f63077f;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return new e(t10);
                    }
                } else {
                    return new g(t10, hVar, cVar, th2);
                }
            } else {
                return new o2.c(t10, hVar, cVar, th2);
            }
        }
        return new o2.b(t10, hVar, cVar, th2);
    }

    public static <T> List<a<T>> m(Collection<a<T>> collection) {
        if (collection == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (a<T> aVar : collection) {
            arrayList.add(p(aVar));
        }
        return arrayList;
    }

    public static <T> a<T> p(a<T> aVar) {
        if (aVar != null) {
            return aVar.o();
        }
        return null;
    }

    public static void q(Iterable<? extends a<?>> iterable) {
        if (iterable != null) {
            for (a<?> aVar : iterable) {
                r(aVar);
            }
        }
    }

    public static void r(a<?> aVar) {
        if (aVar != null) {
            aVar.close();
        }
    }

    public static boolean v(a<?> aVar) {
        if (aVar != null && aVar.u()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;)Lo2/a<TT;>; */
    public static a w(Closeable closeable) {
        return F(closeable, f63078g);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;Lo2/a$c;)Lo2/a<TT;>; */
    public static a x(Closeable closeable, c cVar) {
        Throwable th2 = null;
        if (closeable == null) {
            return null;
        }
        h<Closeable> hVar = f63078g;
        if (cVar.a()) {
            th2 = new Throwable();
        }
        return R(closeable, hVar, cVar, th2);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            try {
                if (this.f63080a) {
                    return;
                }
                this.f63080a = true;
                this.f63081b.d();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // 
    /* renamed from: l */
    public abstract a<T> clone();

    public synchronized a<T> o() {
        if (u()) {
            return clone();
        }
        return null;
    }

    public synchronized T s() {
        k2.h.i(!this.f63080a);
        return (T) k2.h.g(this.f63081b.f());
    }

    public int t() {
        if (u()) {
            return System.identityHashCode(this.f63081b.f());
        }
        return 0;
    }

    public synchronized boolean u() {
        return !this.f63080a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(T t10, h<T> hVar, c cVar, Throwable th2, boolean z10) {
        this.f63081b = new SharedReference<>(t10, hVar, z10);
        this.f63082c = cVar;
        this.f63083d = th2;
    }
}
