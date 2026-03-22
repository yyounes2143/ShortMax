package pu;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import ku.j;
/* compiled from: SubscriptionList.java */
/* loaded from: classes8.dex */
public final class b implements j {

    /* renamed from: a  reason: collision with root package name */
    private List<j> f65009a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f65010b;

    public b() {
    }

    private static void c(Collection<j> collection) {
        if (collection == null) {
            return;
        }
        ArrayList arrayList = null;
        for (j jVar : collection) {
            try {
                jVar.e();
            } catch (Throwable th2) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(th2);
            }
        }
        lu.a.c(arrayList);
    }

    public void a(j jVar) {
        if (jVar.d()) {
            return;
        }
        if (!this.f65010b) {
            synchronized (this) {
                try {
                    if (!this.f65010b) {
                        List list = this.f65009a;
                        if (list == null) {
                            list = new LinkedList();
                            this.f65009a = list;
                        }
                        list.add(jVar);
                        return;
                    }
                } finally {
                }
            }
        }
        jVar.e();
    }

    public void b(j jVar) {
        if (!this.f65010b) {
            synchronized (this) {
                List<j> list = this.f65009a;
                if (!this.f65010b && list != null) {
                    boolean remove = list.remove(jVar);
                    if (remove) {
                        jVar.e();
                    }
                }
            }
        }
    }

    @Override // ku.j
    public boolean d() {
        return this.f65010b;
    }

    @Override // ku.j
    public void e() {
        if (!this.f65010b) {
            synchronized (this) {
                try {
                    if (this.f65010b) {
                        return;
                    }
                    this.f65010b = true;
                    List<j> list = this.f65009a;
                    this.f65009a = null;
                    c(list);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public b(j... jVarArr) {
        this.f65009a = new LinkedList(Arrays.asList(jVarArr));
    }

    public b(j jVar) {
        LinkedList linkedList = new LinkedList();
        this.f65009a = linkedList;
        linkedList.add(jVar);
    }
}
