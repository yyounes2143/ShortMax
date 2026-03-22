package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.MapMakerInternalMap;
import h7.g;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* compiled from: MapMaker.java */
/* loaded from: classes5.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    boolean f20280a;

    /* renamed from: b  reason: collision with root package name */
    int f20281b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f20282c = -1;

    /* renamed from: d  reason: collision with root package name */
    MapMakerInternalMap.Strength f20283d;

    /* renamed from: e  reason: collision with root package name */
    MapMakerInternalMap.Strength f20284e;

    /* renamed from: f  reason: collision with root package name */
    Equivalence<Object> f20285f;

    public n a(int i10) {
        boolean z10;
        int i11 = this.f20282c;
        boolean z11 = false;
        if (i11 == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.q(z10, "concurrency level was already set to %s", i11);
        if (i10 > 0) {
            z11 = true;
        }
        h7.k.d(z11);
        this.f20282c = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int i10 = this.f20282c;
        if (i10 == -1) {
            return 4;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        int i10 = this.f20281b;
        if (i10 == -1) {
            return 16;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> d() {
        return (Equivalence) h7.g.a(this.f20285f, e().defaultEquivalence());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapMakerInternalMap.Strength e() {
        return (MapMakerInternalMap.Strength) h7.g.a(this.f20283d, MapMakerInternalMap.Strength.STRONG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapMakerInternalMap.Strength f() {
        return (MapMakerInternalMap.Strength) h7.g.a(this.f20284e, MapMakerInternalMap.Strength.STRONG);
    }

    public n g(int i10) {
        boolean z10;
        int i11 = this.f20281b;
        boolean z11 = false;
        if (i11 == -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.q(z10, "initial capacity was already set to %s", i11);
        if (i10 >= 0) {
            z11 = true;
        }
        h7.k.d(z11);
        this.f20281b = i10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n h(Equivalence<Object> equivalence) {
        boolean z10;
        Equivalence<Object> equivalence2 = this.f20285f;
        if (equivalence2 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.r(z10, "key equivalence was already set to %s", equivalence2);
        this.f20285f = (Equivalence) h7.k.j(equivalence);
        this.f20280a = true;
        return this;
    }

    public <K, V> ConcurrentMap<K, V> i() {
        if (!this.f20280a) {
            return new ConcurrentHashMap(c(), 0.75f, b());
        }
        return MapMakerInternalMap.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n j(MapMakerInternalMap.Strength strength) {
        boolean z10;
        MapMakerInternalMap.Strength strength2 = this.f20283d;
        if (strength2 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.r(z10, "Key strength was already set to %s", strength2);
        this.f20283d = (MapMakerInternalMap.Strength) h7.k.j(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f20280a = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n k(MapMakerInternalMap.Strength strength) {
        boolean z10;
        MapMakerInternalMap.Strength strength2 = this.f20284e;
        if (strength2 == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        h7.k.r(z10, "Value strength was already set to %s", strength2);
        this.f20284e = (MapMakerInternalMap.Strength) h7.k.j(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f20280a = true;
        }
        return this;
    }

    public n l() {
        return j(MapMakerInternalMap.Strength.WEAK);
    }

    public String toString() {
        g.b b10 = h7.g.b(this);
        int i10 = this.f20281b;
        if (i10 != -1) {
            b10.a("initialCapacity", i10);
        }
        int i11 = this.f20282c;
        if (i11 != -1) {
            b10.a("concurrencyLevel", i11);
        }
        MapMakerInternalMap.Strength strength = this.f20283d;
        if (strength != null) {
            b10.b("keyStrength", h7.a.e(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.f20284e;
        if (strength2 != null) {
            b10.b("valueStrength", h7.a.e(strength2.toString()));
        }
        if (this.f20285f != null) {
            b10.h("keyEquivalence");
        }
        return b10.toString();
    }
}
