package com.google.common.collect;

import java.util.Comparator;
/* compiled from: ComparisonChain.java */
/* loaded from: classes5.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    private static final g f20276a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final g f20277b = new b(-1);

    /* renamed from: c  reason: collision with root package name */
    private static final g f20278c = new b(1);

    /* compiled from: ComparisonChain.java */
    /* loaded from: classes5.dex */
    class a extends g {
        a() {
            super(null);
        }

        @Override // com.google.common.collect.g
        public g d(int i10, int i11) {
            return k(Integer.compare(i10, i11));
        }

        @Override // com.google.common.collect.g
        public g e(long j10, long j11) {
            return k(Long.compare(j10, j11));
        }

        @Override // com.google.common.collect.g
        public <T> g f(T t10, T t11, Comparator<T> comparator) {
            return k(comparator.compare(t10, t11));
        }

        @Override // com.google.common.collect.g
        public g g(boolean z10, boolean z11) {
            return k(Boolean.compare(z10, z11));
        }

        @Override // com.google.common.collect.g
        public g h(boolean z10, boolean z11) {
            return k(Boolean.compare(z11, z10));
        }

        @Override // com.google.common.collect.g
        public int i() {
            return 0;
        }

        g k(int i10) {
            if (i10 < 0) {
                return g.f20277b;
            }
            return i10 > 0 ? g.f20278c : g.f20276a;
        }
    }

    /* synthetic */ g(a aVar) {
        this();
    }

    public static g j() {
        return f20276a;
    }

    public abstract g d(int i10, int i11);

    public abstract g e(long j10, long j11);

    public abstract <T> g f(T t10, T t11, Comparator<T> comparator);

    public abstract g g(boolean z10, boolean z11);

    public abstract g h(boolean z10, boolean z11);

    public abstract int i();

    private g() {
    }

    /* compiled from: ComparisonChain.java */
    /* loaded from: classes5.dex */
    private static final class b extends g {

        /* renamed from: d  reason: collision with root package name */
        final int f20279d;

        b(int i10) {
            super(null);
            this.f20279d = i10;
        }

        @Override // com.google.common.collect.g
        public int i() {
            return this.f20279d;
        }

        @Override // com.google.common.collect.g
        public g d(int i10, int i11) {
            return this;
        }

        @Override // com.google.common.collect.g
        public g e(long j10, long j11) {
            return this;
        }

        @Override // com.google.common.collect.g
        public g g(boolean z10, boolean z11) {
            return this;
        }

        @Override // com.google.common.collect.g
        public g h(boolean z10, boolean z11) {
            return this;
        }

        @Override // com.google.common.collect.g
        public <T> g f(T t10, T t11, Comparator<T> comparator) {
            return this;
        }
    }
}
