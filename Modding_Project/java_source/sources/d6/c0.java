package d6;

import androidx.core.view.InputDeviceCompat;
import b7.o0;
import b7.s0;
import d6.i0;
/* compiled from: SectionReader.java */
/* loaded from: classes4.dex */
public final class c0 implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final b0 f49866a;

    /* renamed from: b  reason: collision with root package name */
    private final b7.g0 f49867b = new b7.g0(32);

    /* renamed from: c  reason: collision with root package name */
    private int f49868c;

    /* renamed from: d  reason: collision with root package name */
    private int f49869d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f49870e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f49871f;

    public c0(b0 b0Var) {
        this.f49866a = b0Var;
    }

    @Override // d6.i0
    public void a(o0 o0Var, t5.m mVar, i0.d dVar) {
        this.f49866a.a(o0Var, mVar, dVar);
        this.f49871f = true;
    }

    @Override // d6.i0
    public void b(b7.g0 g0Var, int i10) {
        boolean z10;
        int i11;
        boolean z11;
        if ((i10 & 1) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            i11 = g0Var.e() + g0Var.D();
        } else {
            i11 = -1;
        }
        if (this.f49871f) {
            if (!z10) {
                return;
            }
            this.f49871f = false;
            g0Var.P(i11);
            this.f49869d = 0;
        }
        while (g0Var.a() > 0) {
            int i12 = this.f49869d;
            if (i12 < 3) {
                if (i12 == 0) {
                    int D = g0Var.D();
                    g0Var.P(g0Var.e() - 1);
                    if (D == 255) {
                        this.f49871f = true;
                        return;
                    }
                }
                int min = Math.min(g0Var.a(), 3 - this.f49869d);
                g0Var.j(this.f49867b.d(), this.f49869d, min);
                int i13 = this.f49869d + min;
                this.f49869d = i13;
                if (i13 == 3) {
                    this.f49867b.P(0);
                    this.f49867b.O(3);
                    this.f49867b.Q(1);
                    int D2 = this.f49867b.D();
                    int D3 = this.f49867b.D();
                    if ((D2 & 128) != 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    this.f49870e = z11;
                    this.f49868c = (((D2 & 15) << 8) | D3) + 3;
                    int b10 = this.f49867b.b();
                    int i14 = this.f49868c;
                    if (b10 < i14) {
                        this.f49867b.c(Math.min((int) InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i14, this.f49867b.b() * 2)));
                    }
                }
            } else {
                int min2 = Math.min(g0Var.a(), this.f49868c - this.f49869d);
                g0Var.j(this.f49867b.d(), this.f49869d, min2);
                int i15 = this.f49869d + min2;
                this.f49869d = i15;
                int i16 = this.f49868c;
                if (i15 != i16) {
                    continue;
                } else {
                    if (this.f49870e) {
                        if (s0.r(this.f49867b.d(), 0, this.f49868c, -1) != 0) {
                            this.f49871f = true;
                            return;
                        }
                        this.f49867b.O(this.f49868c - 4);
                    } else {
                        this.f49867b.O(i16);
                    }
                    this.f49867b.P(0);
                    this.f49866a.b(this.f49867b);
                    this.f49869d = 0;
                }
            }
        }
    }

    @Override // d6.i0
    public void seek() {
        this.f49871f = true;
    }
}
