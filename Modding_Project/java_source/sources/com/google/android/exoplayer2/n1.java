package com.google.android.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
/* compiled from: PlaylistTimeline.java */
/* loaded from: classes4.dex */
final class n1 extends a {

    /* renamed from: f  reason: collision with root package name */
    private final int f18126f;

    /* renamed from: g  reason: collision with root package name */
    private final int f18127g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f18128h;

    /* renamed from: i  reason: collision with root package name */
    private final int[] f18129i;

    /* renamed from: j  reason: collision with root package name */
    private final u1[] f18130j;

    /* renamed from: k  reason: collision with root package name */
    private final Object[] f18131k;

    /* renamed from: l  reason: collision with root package name */
    private final HashMap<Object, Integer> f18132l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n1(Collection<? extends e1> collection, n6.r rVar) {
        super(false, rVar);
        int i10 = 0;
        int size = collection.size();
        this.f18128h = new int[size];
        this.f18129i = new int[size];
        this.f18130j = new u1[size];
        this.f18131k = new Object[size];
        this.f18132l = new HashMap<>();
        int i11 = 0;
        int i12 = 0;
        for (e1 e1Var : collection) {
            this.f18130j[i12] = e1Var.a();
            this.f18129i[i12] = i10;
            this.f18128h[i12] = i11;
            i10 += this.f18130j[i12].t();
            i11 += this.f18130j[i12].m();
            this.f18131k[i12] = e1Var.getUid();
            this.f18132l.put(this.f18131k[i12], Integer.valueOf(i12));
            i12++;
        }
        this.f18126f = i10;
        this.f18127g = i11;
    }

    @Override // com.google.android.exoplayer2.a
    protected int A(int i10) {
        return b7.s0.h(this.f18129i, i10 + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.a
    protected Object D(int i10) {
        return this.f18131k[i10];
    }

    @Override // com.google.android.exoplayer2.a
    protected int F(int i10) {
        return this.f18128h[i10];
    }

    @Override // com.google.android.exoplayer2.a
    protected int G(int i10) {
        return this.f18129i[i10];
    }

    @Override // com.google.android.exoplayer2.a
    protected u1 J(int i10) {
        return this.f18130j[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<u1> K() {
        return Arrays.asList(this.f18130j);
    }

    @Override // com.google.android.exoplayer2.u1
    public int m() {
        return this.f18127g;
    }

    @Override // com.google.android.exoplayer2.u1
    public int t() {
        return this.f18126f;
    }

    @Override // com.google.android.exoplayer2.a
    protected int y(Object obj) {
        Integer num = this.f18132l.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.a
    protected int z(int i10) {
        return b7.s0.h(this.f18128h, i10 + 1, false, false);
    }
}
