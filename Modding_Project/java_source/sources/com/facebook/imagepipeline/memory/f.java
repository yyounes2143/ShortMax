package com.facebook.imagepipeline.memory;

import java.util.LinkedList;
import k2.h;
/* compiled from: OOMSoftReferenceBucket.java */
/* loaded from: classes3.dex */
class f<V> extends a<V> {

    /* renamed from: f  reason: collision with root package name */
    private LinkedList<o2.f<V>> f15686f;

    public f(int i10, int i11, int i12) {
        super(i10, i11, i12, false);
        this.f15686f = new LinkedList<>();
    }

    @Override // com.facebook.imagepipeline.memory.a
    void a(V v10) {
        o2.f<V> poll = this.f15686f.poll();
        if (poll == null) {
            poll = new o2.f<>();
        }
        poll.c(v10);
        this.f15678c.add(poll);
    }

    @Override // com.facebook.imagepipeline.memory.a
    public V g() {
        o2.f<V> fVar = (o2.f) this.f15678c.poll();
        h.g(fVar);
        V b10 = fVar.b();
        fVar.a();
        this.f15686f.add(fVar);
        return b10;
    }
}
