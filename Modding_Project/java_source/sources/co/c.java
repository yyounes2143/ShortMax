package co;

import cn.b0;
/* compiled from: AviMainHeaderChunk.java */
/* loaded from: classes8.dex */
final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f3697a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3698b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3699c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3700d;

    private c(int i10, int i11, int i12, int i13) {
        this.f3697a = i10;
        this.f3698b = i11;
        this.f3699c = i12;
        this.f3700d = i13;
    }

    public static c b(b0 b0Var) {
        int u10 = b0Var.u();
        b0Var.X(8);
        int u11 = b0Var.u();
        int u12 = b0Var.u();
        b0Var.X(4);
        int u13 = b0Var.u();
        b0Var.X(12);
        return new c(u10, u11, u12, u13);
    }

    public boolean a() {
        if ((this.f3698b & 16) == 16) {
            return true;
        }
        return false;
    }

    @Override // co.a
    public int getType() {
        return 1751742049;
    }
}
