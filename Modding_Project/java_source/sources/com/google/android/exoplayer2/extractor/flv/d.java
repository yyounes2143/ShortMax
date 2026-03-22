package com.google.android.exoplayer2.extractor.flv;

import b7.g0;
import b7.v;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.flv.TagPayloadReader;
import com.google.android.exoplayer2.v0;
import t5.b0;
/* compiled from: VideoTagPayloadReader.java */
/* loaded from: classes4.dex */
final class d extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    private final g0 f17630b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f17631c;

    /* renamed from: d  reason: collision with root package name */
    private int f17632d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f17633e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f17634f;

    /* renamed from: g  reason: collision with root package name */
    private int f17635g;

    public d(b0 b0Var) {
        super(b0Var);
        this.f17630b = new g0(v.f2528a);
        this.f17631c = new g0(4);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean b(g0 g0Var) throws TagPayloadReader.UnsupportedFormatException {
        int D = g0Var.D();
        int i10 = (D >> 4) & 15;
        int i11 = D & 15;
        if (i11 == 7) {
            this.f17635g = i10;
            if (i10 != 5) {
                return true;
            }
            return false;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i11);
    }

    @Override // com.google.android.exoplayer2.extractor.flv.TagPayloadReader
    protected boolean c(g0 g0Var, long j10) throws ParserException {
        int i10;
        int D = g0Var.D();
        long o10 = j10 + (g0Var.o() * 1000);
        if (D == 0 && !this.f17633e) {
            g0 g0Var2 = new g0(new byte[g0Var.a()]);
            g0Var.j(g0Var2.d(), 0, g0Var.a());
            c7.a b10 = c7.a.b(g0Var2);
            this.f17632d = b10.f3216b;
            this.f17605a.b(new v0.b().e0("video/avc").I(b10.f3220f).j0(b10.f3217c).Q(b10.f3218d).a0(b10.f3219e).T(b10.f3215a).E());
            this.f17633e = true;
            return false;
        } else if (D != 1 || !this.f17633e) {
            return false;
        } else {
            if (this.f17635g == 1) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            if (!this.f17634f && i10 == 0) {
                return false;
            }
            byte[] d10 = this.f17631c.d();
            d10[0] = 0;
            d10[1] = 0;
            d10[2] = 0;
            int i11 = 4 - this.f17632d;
            int i12 = 0;
            while (g0Var.a() > 0) {
                g0Var.j(this.f17631c.d(), i11, this.f17632d);
                this.f17631c.P(0);
                int H = this.f17631c.H();
                this.f17630b.P(0);
                this.f17605a.a(this.f17630b, 4);
                this.f17605a.a(g0Var, H);
                i12 = i12 + 4 + H;
            }
            this.f17605a.e(o10, i10, i12, 0, null);
            this.f17634f = true;
            return true;
        }
    }
}
