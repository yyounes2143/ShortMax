package ip;

import androidx.core.view.InputDeviceCompat;
import ip.l0;
/* compiled from: SectionReader.java */
/* loaded from: classes8.dex */
public final class e0 implements l0 {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f59697a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.b0 f59698b = new cn.b0(32);

    /* renamed from: c  reason: collision with root package name */
    private int f59699c;

    /* renamed from: d  reason: collision with root package name */
    private int f59700d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f59701e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f59702f;

    public e0(d0 d0Var) {
        this.f59697a = d0Var;
    }

    @Override // ip.l0
    public void a(cn.b0 b0Var, int i10) {
        boolean z10;
        int i11;
        boolean z11;
        if ((i10 & 1) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i11 = b0Var.f() + b0Var.H();
        } else {
            i11 = -1;
        }
        if (this.f59702f) {
            if (!z10) {
                return;
            }
            this.f59702f = false;
            b0Var.W(i11);
            this.f59700d = 0;
        }
        while (b0Var.a() > 0) {
            int i12 = this.f59700d;
            if (i12 < 3) {
                if (i12 == 0) {
                    int H = b0Var.H();
                    b0Var.W(b0Var.f() - 1);
                    if (H == 255) {
                        this.f59702f = true;
                        return;
                    }
                }
                int min = Math.min(b0Var.a(), 3 - this.f59700d);
                b0Var.l(this.f59698b.e(), this.f59700d, min);
                int i13 = this.f59700d + min;
                this.f59700d = i13;
                if (i13 == 3) {
                    this.f59698b.W(0);
                    this.f59698b.V(3);
                    this.f59698b.X(1);
                    int H2 = this.f59698b.H();
                    int H3 = this.f59698b.H();
                    if ((H2 & 128) != 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    this.f59701e = z11;
                    this.f59699c = (((H2 & 15) << 8) | H3) + 3;
                    int b10 = this.f59698b.b();
                    int i14 = this.f59699c;
                    if (b10 < i14) {
                        this.f59698b.c(Math.min((int) InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i14, this.f59698b.b() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(b0Var.a(), this.f59699c - this.f59700d);
                b0Var.l(this.f59698b.e(), this.f59700d, min2);
                int i15 = this.f59700d + min2;
                this.f59700d = i15;
                int i16 = this.f59699c;
                if (i15 != i16) {
                    continue;
                } else {
                    if (this.f59701e) {
                        if (cn.m0.x(this.f59698b.e(), 0, this.f59699c, -1) != 0) {
                            this.f59702f = true;
                            return;
                        }
                        this.f59698b.V(this.f59699c - 4);
                    } else {
                        this.f59698b.V(i16);
                    }
                    this.f59698b.W(0);
                    this.f59697a.a(this.f59698b);
                    this.f59700d = 0;
                }
            }
        }
    }

    @Override // ip.l0
    public void b(cn.h0 h0Var, ao.r rVar, l0.d dVar) {
        this.f59697a.b(h0Var, rVar, dVar);
        this.f59702f = true;
    }

    @Override // ip.l0
    public void seek() {
        this.f59702f = true;
    }
}
