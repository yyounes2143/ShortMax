package b4;

import android.util.SparseArray;
import androidx.annotation.VisibleForTesting;
import java.util.LinkedList;
/* compiled from: BucketMap.java */
/* loaded from: classes3.dex */
public class k<T> {

    /* renamed from: a  reason: collision with root package name */
    protected final SparseArray<a<T>> f2232a = new SparseArray<>();
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    a<T> f2233b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    a<T> f2234c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BucketMap.java */
    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static class a<I> {

        /* renamed from: a  reason: collision with root package name */
        a<I> f2235a;

        /* renamed from: b  reason: collision with root package name */
        int f2236b;

        /* renamed from: c  reason: collision with root package name */
        LinkedList<I> f2237c;

        /* renamed from: d  reason: collision with root package name */
        a<I> f2238d;

        public String toString() {
            return "LinkedEntry(key: " + this.f2236b + ")";
        }

        private a(a<I> aVar, int i10, LinkedList<I> linkedList, a<I> aVar2) {
            this.f2235a = aVar;
            this.f2236b = i10;
            this.f2237c = linkedList;
            this.f2238d = aVar2;
        }
    }

    private void b(a<T> aVar) {
        if (aVar != null && aVar.f2237c.isEmpty()) {
            d(aVar);
            this.f2232a.remove(aVar.f2236b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(a<T> aVar) {
        if (this.f2233b == aVar) {
            return;
        }
        d(aVar);
        a aVar2 = (a<T>) this.f2233b;
        if (aVar2 == null) {
            this.f2233b = aVar;
            this.f2234c = aVar;
            return;
        }
        aVar.f2238d = aVar2;
        aVar2.f2235a = aVar;
        this.f2233b = aVar;
    }

    private synchronized void d(a<T> aVar) {
        try {
            a aVar2 = (a<T>) aVar.f2235a;
            a aVar3 = (a<T>) aVar.f2238d;
            if (aVar2 != null) {
                aVar2.f2238d = aVar3;
            }
            if (aVar3 != null) {
                aVar3.f2235a = aVar2;
            }
            aVar.f2235a = null;
            aVar.f2238d = null;
            if (aVar == this.f2233b) {
                this.f2233b = aVar3;
            }
            if (aVar == this.f2234c) {
                this.f2234c = aVar2;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized T a(int i10) {
        a<T> aVar = this.f2232a.get(i10);
        if (aVar == null) {
            return null;
        }
        T pollFirst = aVar.f2237c.pollFirst();
        c(aVar);
        return pollFirst;
    }

    public synchronized void e(int i10, T t10) {
        try {
            a<T> aVar = this.f2232a.get(i10);
            if (aVar == null) {
                aVar = new a<>(null, i10, new LinkedList(), null);
                this.f2232a.put(i10, aVar);
            }
            aVar.f2237c.addLast(t10);
            c(aVar);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized T f() {
        a<T> aVar = this.f2234c;
        if (aVar == null) {
            return null;
        }
        T pollLast = aVar.f2237c.pollLast();
        b(aVar);
        return pollLast;
    }
}
