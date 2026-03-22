package ru;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import ku.j;
/* compiled from: CompositeSubscription.java */
/* loaded from: classes8.dex */
public final class a implements j {

    /* renamed from: a  reason: collision with root package name */
    private Set<j> f66155a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f66156b;

    private static void a(Collection<j> collection) {
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

    @Override // ku.j
    public boolean d() {
        return this.f66156b;
    }

    @Override // ku.j
    public void e() {
        if (!this.f66156b) {
            synchronized (this) {
                try {
                    if (this.f66156b) {
                        return;
                    }
                    this.f66156b = true;
                    Set<j> set = this.f66155a;
                    this.f66155a = null;
                    a(set);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
