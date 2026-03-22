package v5;

import b7.g0;
/* compiled from: AviMainHeaderChunk.java */
/* loaded from: classes4.dex */
final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f68692a;

    /* renamed from: b  reason: collision with root package name */
    public final int f68693b;

    /* renamed from: c  reason: collision with root package name */
    public final int f68694c;

    /* renamed from: d  reason: collision with root package name */
    public final int f68695d;

    private c(int i10, int i11, int i12, int i13) {
        this.f68692a = i10;
        this.f68693b = i11;
        this.f68694c = i12;
        this.f68695d = i13;
    }

    public static c b(g0 g0Var) {
        int q10 = g0Var.q();
        g0Var.Q(8);
        int q11 = g0Var.q();
        int q12 = g0Var.q();
        g0Var.Q(4);
        int q13 = g0Var.q();
        g0Var.Q(12);
        return new c(q10, q11, q12, q13);
    }

    public boolean a() {
        if ((this.f68693b & 16) == 16) {
            return true;
        }
        return false;
    }

    @Override // v5.a
    public int getType() {
        return 1751742049;
    }
}
