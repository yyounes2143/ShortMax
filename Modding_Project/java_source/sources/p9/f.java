package p9;

import java.util.LinkedList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: State.java */
/* loaded from: classes5.dex */
public final class f {

    /* renamed from: e  reason: collision with root package name */
    static final f f64835e = new f(g.f64840b, 0, 0, 0);

    /* renamed from: a  reason: collision with root package name */
    private final int f64836a;

    /* renamed from: b  reason: collision with root package name */
    private final g f64837b;

    /* renamed from: c  reason: collision with root package name */
    private final int f64838c;

    /* renamed from: d  reason: collision with root package name */
    private final int f64839d;

    private f(g gVar, int i10, int i11, int i12) {
        this.f64837b = gVar;
        this.f64836a = i10;
        this.f64838c = i11;
        this.f64839d = i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f a(int i10) {
        int i11;
        g gVar = this.f64837b;
        int i12 = this.f64836a;
        int i13 = this.f64839d;
        if (i12 == 4 || i12 == 2) {
            int i14 = d.f64828c[i12][0];
            int i15 = 65535 & i14;
            int i16 = i14 >> 16;
            gVar = gVar.a(i15, i16);
            i13 += i16;
            i12 = 0;
        }
        int i17 = this.f64838c;
        if (i17 != 0 && i17 != 31) {
            if (i17 == 62) {
                i11 = 9;
            } else {
                i11 = 8;
            }
        } else {
            i11 = 18;
        }
        f fVar = new f(gVar, i12, i17 + 1, i13 + i11);
        if (fVar.f64838c == 2078) {
            return fVar.b(i10 + 1);
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f b(int i10) {
        int i11 = this.f64838c;
        if (i11 == 0) {
            return this;
        }
        return new f(this.f64837b.b(i10 - i11, i11), this.f64836a, 0, this.f64839d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        return this.f64838c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        return this.f64839d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f64836a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(f fVar) {
        int i10;
        int i11 = this.f64839d + (d.f64828c[this.f64836a][fVar.f64836a] >> 16);
        int i12 = fVar.f64838c;
        if (i12 > 0 && ((i10 = this.f64838c) == 0 || i10 > i12)) {
            i11 += 10;
        }
        if (i11 <= fVar.f64839d) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f g(int i10, int i11) {
        int i12;
        int i13 = this.f64839d;
        g gVar = this.f64837b;
        int i14 = this.f64836a;
        if (i10 != i14) {
            int i15 = d.f64828c[i14][i10];
            int i16 = 65535 & i15;
            int i17 = i15 >> 16;
            gVar = gVar.a(i16, i17);
            i13 += i17;
        }
        if (i10 == 2) {
            i12 = 4;
        } else {
            i12 = 5;
        }
        return new f(gVar.a(i11, i12), i10, 0, i13 + i12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f h(int i10, int i11) {
        int i12;
        g gVar = this.f64837b;
        int i13 = this.f64836a;
        if (i13 == 2) {
            i12 = 4;
        } else {
            i12 = 5;
        }
        return new f(gVar.a(d.f64830e[i13][i10], i12).a(i11, 5), this.f64836a, 0, this.f64839d + i12 + 5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q9.a i(byte[] bArr) {
        LinkedList<g> linkedList = new LinkedList();
        for (g gVar = b(bArr.length).f64837b; gVar != null; gVar = gVar.d()) {
            linkedList.addFirst(gVar);
        }
        q9.a aVar = new q9.a();
        for (g gVar2 : linkedList) {
            gVar2.c(aVar, bArr);
        }
        return aVar;
    }

    public String toString() {
        return String.format("%s bits=%d bytes=%d", d.f64827b[this.f64836a], Integer.valueOf(this.f64839d), Integer.valueOf(this.f64838c));
    }
}
