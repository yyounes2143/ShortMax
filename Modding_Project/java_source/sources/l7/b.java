package l7;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.firebase.abt.AbtException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import n7.a;
/* compiled from: FirebaseABTesting.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final w8.b<n7.a> f62098a;

    /* renamed from: b  reason: collision with root package name */
    private final String f62099b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Integer f62100c = null;

    public b(Context context, w8.b<n7.a> bVar, String str) {
        this.f62098a = bVar;
        this.f62099b = str;
    }

    private void a(a.c cVar) {
        this.f62098a.get().g(cVar);
    }

    private void b(List<a> list) {
        ArrayDeque arrayDeque = new ArrayDeque(f());
        int i10 = i();
        for (a aVar : list) {
            while (arrayDeque.size() >= i10) {
                k(((a.c) arrayDeque.pollFirst()).f62844b);
            }
            a.c f10 = aVar.f(this.f62099b);
            a(f10);
            arrayDeque.offer(f10);
        }
    }

    private static List<a> c(List<Map<String, String>> list) throws AbtException {
        ArrayList arrayList = new ArrayList();
        for (Map<String, String> map : list) {
            arrayList.add(a.b(map));
        }
        return arrayList;
    }

    private boolean d(List<a> list, a aVar) {
        String c10 = aVar.c();
        String e10 = aVar.e();
        for (a aVar2 : list) {
            if (aVar2.c().equals(c10) && aVar2.e().equals(e10)) {
                return true;
            }
        }
        return false;
    }

    @WorkerThread
    private List<a.c> f() {
        return this.f62098a.get().d(this.f62099b, "");
    }

    private ArrayList<a> g(List<a> list, List<a> list2) {
        ArrayList<a> arrayList = new ArrayList<>();
        for (a aVar : list) {
            if (!d(list2, aVar)) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private ArrayList<a.c> h(List<a> list, List<a> list2) {
        ArrayList<a.c> arrayList = new ArrayList<>();
        for (a aVar : list) {
            if (!d(list2, aVar)) {
                arrayList.add(aVar.f(this.f62099b));
            }
        }
        return arrayList;
    }

    @WorkerThread
    private int i() {
        if (this.f62100c == null) {
            this.f62100c = Integer.valueOf(this.f62098a.get().c(this.f62099b));
        }
        return this.f62100c.intValue();
    }

    private void k(String str) {
        this.f62098a.get().clearConditionalUserProperty(str, null, null);
    }

    private void l(Collection<a.c> collection) {
        for (a.c cVar : collection) {
            k(cVar.f62844b);
        }
    }

    private void n(List<a> list) throws AbtException {
        if (list.isEmpty()) {
            j();
            return;
        }
        List<a> e10 = e();
        l(h(e10, list));
        b(g(list, e10));
    }

    private void o() throws AbtException {
        if (this.f62098a.get() != null) {
            return;
        }
        throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
    }

    @WorkerThread
    public List<a> e() throws AbtException {
        o();
        List<a.c> f10 = f();
        ArrayList arrayList = new ArrayList();
        for (a.c cVar : f10) {
            arrayList.add(a.a(cVar));
        }
        return arrayList;
    }

    @WorkerThread
    public void j() throws AbtException {
        o();
        l(f());
    }

    @WorkerThread
    public void m(List<Map<String, String>> list) throws AbtException {
        o();
        if (list != null) {
            n(c(list));
            return;
        }
        throw new IllegalArgumentException("The replacementExperiments list is null.");
    }
}
