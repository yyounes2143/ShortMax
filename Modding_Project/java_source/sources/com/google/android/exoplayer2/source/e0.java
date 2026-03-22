package com.google.android.exoplayer2.source;

import android.util.SparseArray;
/* compiled from: SpannedData.java */
/* loaded from: classes4.dex */
final class e0<V> {

    /* renamed from: c  reason: collision with root package name */
    private final b7.h<V> f18312c;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<V> f18311b = new SparseArray<>();

    /* renamed from: a  reason: collision with root package name */
    private int f18310a = -1;

    public e0(b7.h<V> hVar) {
        this.f18312c = hVar;
    }

    public void a(int i10, V v10) {
        boolean z10;
        boolean z11 = false;
        if (this.f18310a == -1) {
            if (this.f18311b.size() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            this.f18310a = 0;
        }
        if (this.f18311b.size() > 0) {
            SparseArray<V> sparseArray = this.f18311b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            if (i10 >= keyAt) {
                z11 = true;
            }
            b7.a.a(z11);
            if (keyAt == i10) {
                SparseArray<V> sparseArray2 = this.f18311b;
                this.f18312c.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f18311b.append(i10, v10);
    }

    public void b() {
        for (int i10 = 0; i10 < this.f18311b.size(); i10++) {
            this.f18312c.accept(this.f18311b.valueAt(i10));
        }
        this.f18310a = -1;
        this.f18311b.clear();
    }

    public void c(int i10) {
        int i11;
        for (int size = this.f18311b.size() - 1; size >= 0 && i10 < this.f18311b.keyAt(size); size--) {
            this.f18312c.accept(this.f18311b.valueAt(size));
            this.f18311b.removeAt(size);
        }
        if (this.f18311b.size() > 0) {
            i11 = Math.min(this.f18310a, this.f18311b.size() - 1);
        } else {
            i11 = -1;
        }
        this.f18310a = i11;
    }

    public void d(int i10) {
        int i11 = 0;
        while (i11 < this.f18311b.size() - 1) {
            int i12 = i11 + 1;
            if (i10 >= this.f18311b.keyAt(i12)) {
                this.f18312c.accept(this.f18311b.valueAt(i11));
                this.f18311b.removeAt(i11);
                int i13 = this.f18310a;
                if (i13 > 0) {
                    this.f18310a = i13 - 1;
                }
                i11 = i12;
            } else {
                return;
            }
        }
    }

    public V e(int i10) {
        if (this.f18310a == -1) {
            this.f18310a = 0;
        }
        while (true) {
            int i11 = this.f18310a;
            if (i11 <= 0 || i10 >= this.f18311b.keyAt(i11)) {
                break;
            }
            this.f18310a--;
        }
        while (this.f18310a < this.f18311b.size() - 1 && i10 >= this.f18311b.keyAt(this.f18310a + 1)) {
            this.f18310a++;
        }
        return this.f18311b.valueAt(this.f18310a);
    }

    public V f() {
        SparseArray<V> sparseArray = this.f18311b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean g() {
        if (this.f18311b.size() == 0) {
            return true;
        }
        return false;
    }
}
