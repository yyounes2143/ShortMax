package com.explorestack.protobuf;

import com.explorestack.protobuf.AbstractMessage;
import com.explorestack.protobuf.AbstractMessage.Builder;
import com.explorestack.protobuf.MessageOrBuilder;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* compiled from: RepeatedFieldBuilderV3.java */
/* loaded from: classes3.dex */
public class p1<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {

    /* renamed from: a  reason: collision with root package name */
    private AbstractMessage.BuilderParent f14573a;

    /* renamed from: b  reason: collision with root package name */
    private List<MType> f14574b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f14575c;

    /* renamed from: d  reason: collision with root package name */
    private List<t1<MType, BType, IType>> f14576d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f14577e;

    /* renamed from: f  reason: collision with root package name */
    private b<MType, BType, IType> f14578f;

    /* renamed from: g  reason: collision with root package name */
    private a<MType, BType, IType> f14579g;

    /* renamed from: h  reason: collision with root package name */
    private c<MType, BType, IType> f14580h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RepeatedFieldBuilderV3.java */
    /* loaded from: classes3.dex */
    public static class a<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<BType> implements List<BType> {

        /* renamed from: a  reason: collision with root package name */
        p1<MType, BType, IType> f14581a;

        a(p1<MType, BType, IType> p1Var) {
            this.f14581a = p1Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public BType get(int i10) {
            return this.f14581a.k(i10);
        }

        void c() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14581a.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RepeatedFieldBuilderV3.java */
    /* loaded from: classes3.dex */
    public static class b<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<MType> implements List<MType> {

        /* renamed from: a  reason: collision with root package name */
        p1<MType, BType, IType> f14582a;

        b(p1<MType, BType, IType> p1Var) {
            this.f14582a = p1Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public MType get(int i10) {
            return this.f14582a.n(i10);
        }

        void c() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14582a.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RepeatedFieldBuilderV3.java */
    /* loaded from: classes3.dex */
    public static class c<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<IType> implements List<IType> {

        /* renamed from: a  reason: collision with root package name */
        p1<MType, BType, IType> f14583a;

        c(p1<MType, BType, IType> p1Var) {
            this.f14583a = p1Var;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: a */
        public IType get(int i10) {
            return this.f14583a.q(i10);
        }

        void c() {
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f14583a.m();
        }
    }

    public p1(List<MType> list, boolean z10, AbstractMessage.BuilderParent builderParent, boolean z11) {
        this.f14574b = list;
        this.f14575c = z10;
        this.f14573a = builderParent;
        this.f14577e = z11;
    }

    private void i() {
        if (this.f14576d == null) {
            this.f14576d = new ArrayList(this.f14574b.size());
            for (int i10 = 0; i10 < this.f14574b.size(); i10++) {
                this.f14576d.add(null);
            }
        }
    }

    private void j() {
        if (!this.f14575c) {
            this.f14574b = new ArrayList(this.f14574b);
            this.f14575c = true;
        }
    }

    private MType o(int i10, boolean z10) {
        List<t1<MType, BType, IType>> list = this.f14576d;
        if (list == null) {
            return this.f14574b.get(i10);
        }
        t1<MType, BType, IType> t1Var = list.get(i10);
        if (t1Var == null) {
            return this.f14574b.get(i10);
        }
        if (z10) {
            return t1Var.a();
        }
        return t1Var.e();
    }

    private void s() {
        b<MType, BType, IType> bVar = this.f14578f;
        if (bVar != null) {
            bVar.c();
        }
        a<MType, BType, IType> aVar = this.f14579g;
        if (aVar != null) {
            aVar.c();
        }
        c<MType, BType, IType> cVar = this.f14580h;
        if (cVar != null) {
            cVar.c();
        }
    }

    private void u() {
        AbstractMessage.BuilderParent builderParent;
        if (this.f14577e && (builderParent = this.f14573a) != null) {
            builderParent.markDirty();
            this.f14577e = false;
        }
    }

    public p1<MType, BType, IType> a(Iterable<? extends MType> iterable) {
        int i10;
        for (MType mtype : iterable) {
            i0.a(mtype);
        }
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.isEmpty()) {
                return this;
            }
            i10 = collection.size();
        } else {
            i10 = -1;
        }
        j();
        if (i10 >= 0) {
            List<MType> list = this.f14574b;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i10);
            }
        }
        for (MType mtype2 : iterable) {
            e(mtype2);
        }
        u();
        s();
        return this;
    }

    public BType b(int i10, MType mtype) {
        j();
        i();
        t1<MType, BType, IType> t1Var = new t1<>(mtype, this, this.f14577e);
        this.f14574b.add(i10, null);
        this.f14576d.add(i10, t1Var);
        u();
        s();
        return t1Var.d();
    }

    public BType c(MType mtype) {
        j();
        i();
        t1<MType, BType, IType> t1Var = new t1<>(mtype, this, this.f14577e);
        this.f14574b.add(null);
        this.f14576d.add(t1Var);
        u();
        s();
        return t1Var.d();
    }

    public p1<MType, BType, IType> d(int i10, MType mtype) {
        i0.a(mtype);
        j();
        this.f14574b.add(i10, mtype);
        List<t1<MType, BType, IType>> list = this.f14576d;
        if (list != null) {
            list.add(i10, null);
        }
        u();
        s();
        return this;
    }

    public p1<MType, BType, IType> e(MType mtype) {
        i0.a(mtype);
        j();
        this.f14574b.add(mtype);
        List<t1<MType, BType, IType>> list = this.f14576d;
        if (list != null) {
            list.add(null);
        }
        u();
        s();
        return this;
    }

    public List<MType> f() {
        this.f14577e = true;
        boolean z10 = this.f14575c;
        if (!z10 && this.f14576d == null) {
            return this.f14574b;
        }
        if (!z10) {
            for (int i10 = 0; i10 < this.f14574b.size(); i10++) {
                MType mtype = this.f14574b.get(i10);
                t1<MType, BType, IType> t1Var = this.f14576d.get(i10);
                if (t1Var == null || t1Var.a() == mtype) {
                }
            }
            return this.f14574b;
        }
        j();
        for (int i11 = 0; i11 < this.f14574b.size(); i11++) {
            this.f14574b.set(i11, o(i11, true));
        }
        List<MType> unmodifiableList = Collections.unmodifiableList(this.f14574b);
        this.f14574b = unmodifiableList;
        this.f14575c = false;
        return unmodifiableList;
    }

    public void g() {
        this.f14574b = Collections.emptyList();
        this.f14575c = false;
        List<t1<MType, BType, IType>> list = this.f14576d;
        if (list != null) {
            for (t1<MType, BType, IType> t1Var : list) {
                if (t1Var != null) {
                    t1Var.c();
                }
            }
            this.f14576d = null;
        }
        u();
        s();
    }

    public void h() {
        this.f14573a = null;
    }

    public BType k(int i10) {
        i();
        t1<MType, BType, IType> t1Var = this.f14576d.get(i10);
        if (t1Var == null) {
            t1<MType, BType, IType> t1Var2 = new t1<>(this.f14574b.get(i10), this, this.f14577e);
            this.f14576d.set(i10, t1Var2);
            t1Var = t1Var2;
        }
        return t1Var.d();
    }

    public List<BType> l() {
        if (this.f14579g == null) {
            this.f14579g = new a<>(this);
        }
        return this.f14579g;
    }

    public int m() {
        return this.f14574b.size();
    }

    @Override // com.explorestack.protobuf.AbstractMessage.BuilderParent
    public void markDirty() {
        u();
    }

    public MType n(int i10) {
        return o(i10, false);
    }

    public List<MType> p() {
        if (this.f14578f == null) {
            this.f14578f = new b<>(this);
        }
        return this.f14578f;
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.explorestack.protobuf.MessageOrBuilder, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.explorestack.protobuf.MessageOrBuilder, IType extends com.explorestack.protobuf.MessageOrBuilder] */
    public IType q(int i10) {
        List<t1<MType, BType, IType>> list = this.f14576d;
        if (list == null) {
            return this.f14574b.get(i10);
        }
        t1<MType, BType, IType> t1Var = list.get(i10);
        if (t1Var == null) {
            return this.f14574b.get(i10);
        }
        return t1Var.f();
    }

    public List<IType> r() {
        if (this.f14580h == null) {
            this.f14580h = new c<>(this);
        }
        return this.f14580h;
    }

    public boolean t() {
        return this.f14574b.isEmpty();
    }

    public void v(int i10) {
        t1<MType, BType, IType> remove;
        j();
        this.f14574b.remove(i10);
        List<t1<MType, BType, IType>> list = this.f14576d;
        if (list != null && (remove = list.remove(i10)) != null) {
            remove.c();
        }
        u();
        s();
    }

    public p1<MType, BType, IType> w(int i10, MType mtype) {
        t1<MType, BType, IType> t1Var;
        i0.a(mtype);
        j();
        this.f14574b.set(i10, mtype);
        List<t1<MType, BType, IType>> list = this.f14576d;
        if (list != null && (t1Var = list.set(i10, null)) != null) {
            t1Var.c();
        }
        u();
        s();
        return this;
    }
}
