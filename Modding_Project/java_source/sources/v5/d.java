package v5;

import b7.g0;
import b7.q;
import b7.s0;
/* compiled from: AviStreamHeaderChunk.java */
/* loaded from: classes4.dex */
final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f68696a;

    /* renamed from: b  reason: collision with root package name */
    public final int f68697b;

    /* renamed from: c  reason: collision with root package name */
    public final int f68698c;

    /* renamed from: d  reason: collision with root package name */
    public final int f68699d;

    /* renamed from: e  reason: collision with root package name */
    public final int f68700e;

    /* renamed from: f  reason: collision with root package name */
    public final int f68701f;

    private d(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f68696a = i10;
        this.f68697b = i11;
        this.f68698c = i12;
        this.f68699d = i13;
        this.f68700e = i14;
        this.f68701f = i15;
    }

    public static d c(g0 g0Var) {
        int q10 = g0Var.q();
        g0Var.Q(12);
        int q11 = g0Var.q();
        int q12 = g0Var.q();
        int q13 = g0Var.q();
        g0Var.Q(4);
        int q14 = g0Var.q();
        int q15 = g0Var.q();
        g0Var.Q(8);
        return new d(q10, q11, q12, q13, q14, q15);
    }

    public long a() {
        return s0.F0(this.f68700e, this.f68698c * 1000000, this.f68699d);
    }

    public int b() {
        int i10 = this.f68696a;
        if (i10 != 1935960438) {
            if (i10 != 1935963489) {
                if (i10 != 1937012852) {
                    q.i("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f68696a));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    @Override // v5.a
    public int getType() {
        return 1752331379;
    }
}
