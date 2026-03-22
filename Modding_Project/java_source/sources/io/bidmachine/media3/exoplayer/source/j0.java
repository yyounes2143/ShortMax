package io.bidmachine.media3.exoplayer.source;

import android.util.SparseArray;
/* compiled from: SpannedData.java */
/* loaded from: classes8.dex */
final class j0<V> {

    /* renamed from: c  reason: collision with root package name */
    private final cn.l<V> f56939c;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<V> f56938b = new SparseArray<>();

    /* renamed from: a  reason: collision with root package name */
    private int f56937a = -1;

    public j0(cn.l<V> lVar) {
        this.f56939c = lVar;
    }

    public void a(int i10, V v10) {
        boolean z10;
        boolean z11 = false;
        if (this.f56937a == -1) {
            if (this.f56938b.size() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            this.f56937a = 0;
        }
        if (this.f56938b.size() > 0) {
            SparseArray<V> sparseArray = this.f56938b;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            if (i10 >= keyAt) {
                z11 = true;
            }
            cn.a.a(z11);
            if (keyAt == i10) {
                SparseArray<V> sparseArray2 = this.f56938b;
                this.f56939c.accept(sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.f56938b.append(i10, v10);
    }

    public void b() {
        for (int i10 = 0; i10 < this.f56938b.size(); i10++) {
            this.f56939c.accept(this.f56938b.valueAt(i10));
        }
        this.f56937a = -1;
        this.f56938b.clear();
    }

    public void c(int i10) {
        int i11;
        for (int size = this.f56938b.size() - 1; size >= 0 && i10 < this.f56938b.keyAt(size); size--) {
            this.f56939c.accept(this.f56938b.valueAt(size));
            this.f56938b.removeAt(size);
        }
        if (this.f56938b.size() > 0) {
            i11 = Math.min(this.f56937a, this.f56938b.size() - 1);
        } else {
            i11 = -1;
        }
        this.f56937a = i11;
    }

    public void d(int i10) {
        int i11 = 0;
        while (i11 < this.f56938b.size() - 1) {
            int i12 = i11 + 1;
            if (i10 >= this.f56938b.keyAt(i12)) {
                this.f56939c.accept(this.f56938b.valueAt(i11));
                this.f56938b.removeAt(i11);
                int i13 = this.f56937a;
                if (i13 > 0) {
                    this.f56937a = i13 - 1;
                }
                i11 = i12;
            } else {
                return;
            }
        }
    }

    public V e(int i10) {
        if (this.f56937a == -1) {
            this.f56937a = 0;
        }
        while (true) {
            int i11 = this.f56937a;
            if (i11 <= 0 || i10 >= this.f56938b.keyAt(i11)) {
                break;
            }
            this.f56937a--;
        }
        while (this.f56937a < this.f56938b.size() - 1 && i10 >= this.f56938b.keyAt(this.f56937a + 1)) {
            this.f56937a++;
        }
        return this.f56938b.valueAt(this.f56937a);
    }

    public V f() {
        SparseArray<V> sparseArray = this.f56938b;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public boolean g() {
        if (this.f56938b.size() == 0) {
            return true;
        }
        return false;
    }
}
