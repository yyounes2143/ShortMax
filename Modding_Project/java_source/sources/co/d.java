package co;

import cn.b0;
import cn.m0;
import cn.r;
/* compiled from: AviStreamHeaderChunk.java */
/* loaded from: classes8.dex */
final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f3701a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3702b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3703c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3704d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3705e;

    /* renamed from: f  reason: collision with root package name */
    public final int f3706f;

    /* renamed from: g  reason: collision with root package name */
    public final int f3707g;

    private d(int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f3701a = i10;
        this.f3702b = i11;
        this.f3703c = i12;
        this.f3704d = i13;
        this.f3705e = i14;
        this.f3706f = i15;
        this.f3707g = i16;
    }

    public static d c(b0 b0Var) {
        int u10 = b0Var.u();
        b0Var.X(12);
        int u11 = b0Var.u();
        int u12 = b0Var.u();
        int u13 = b0Var.u();
        b0Var.X(4);
        int u14 = b0Var.u();
        int u15 = b0Var.u();
        b0Var.X(4);
        return new d(u10, u11, u12, u13, u14, u15, b0Var.u());
    }

    public long a() {
        return m0.f1(this.f3705e, this.f3703c * 1000000, this.f3704d);
    }

    public int b() {
        int i10 = this.f3701a;
        if (i10 != 1935960438) {
            if (i10 != 1935963489) {
                if (i10 != 1937012852) {
                    r.h("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f3701a));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    @Override // co.a
    public int getType() {
        return 1752331379;
    }
}
