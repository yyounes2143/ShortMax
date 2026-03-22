package n3;

import androidx.annotation.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k2.f;
import r3.m;
import y3.e;
/* compiled from: AnimatedFrameCache.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final f2.a f62751a;

    /* renamed from: b  reason: collision with root package name */
    private final m<f2.a, e> f62752b;

    /* renamed from: d  reason: collision with root package name */
    private final LinkedHashSet<f2.a> f62754d = new LinkedHashSet<>();

    /* renamed from: c  reason: collision with root package name */
    private final m.b<f2.a> f62753c = new a();

    /* compiled from: AnimatedFrameCache.java */
    /* loaded from: classes3.dex */
    class a implements m.b<f2.a> {
        a() {
        }

        @Override // r3.m.b
        /* renamed from: b */
        public void a(f2.a aVar, boolean z10) {
            c.this.f(aVar, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedFrameCache.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class b implements f2.a {

        /* renamed from: a  reason: collision with root package name */
        private final f2.a f62756a;

        /* renamed from: b  reason: collision with root package name */
        private final int f62757b;

        public b(f2.a aVar, int i10) {
            this.f62756a = aVar;
            this.f62757b = i10;
        }

        @Override // f2.a
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f62757b == bVar.f62757b && this.f62756a.equals(bVar.f62756a)) {
                return true;
            }
            return false;
        }

        @Override // f2.a
        public String getUriString() {
            return null;
        }

        @Override // f2.a
        public int hashCode() {
            return (this.f62756a.hashCode() * 1013) + this.f62757b;
        }

        @Override // f2.a
        public boolean isResourceIdForDebugging() {
            return false;
        }

        public String toString() {
            return f.b(this).c("imageCacheKey", this.f62756a).a("frameIndex", this.f62757b).toString();
        }
    }

    public c(f2.a aVar, m<f2.a, e> mVar) {
        this.f62751a = aVar;
        this.f62752b = mVar;
    }

    private b e(int i10) {
        return new b(this.f62751a, i10);
    }

    private synchronized f2.a g() {
        f2.a aVar;
        Iterator<f2.a> it = this.f62754d.iterator();
        if (it.hasNext()) {
            aVar = it.next();
            it.remove();
        } else {
            aVar = null;
        }
        return aVar;
    }

    public o2.a<e> a(int i10, o2.a<e> aVar) {
        return this.f62752b.e(e(i10), aVar, this.f62753c);
    }

    public boolean b(int i10) {
        return this.f62752b.contains(e(i10));
    }

    public o2.a<e> c(int i10) {
        return this.f62752b.get(e(i10));
    }

    public o2.a<e> d() {
        o2.a<e> c10;
        do {
            f2.a g10 = g();
            if (g10 == null) {
                return null;
            }
            c10 = this.f62752b.c(g10);
        } while (c10 == null);
        return c10;
    }

    public synchronized void f(f2.a aVar, boolean z10) {
        try {
            if (z10) {
                this.f62754d.add(aVar);
            } else {
                this.f62754d.remove(aVar);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
