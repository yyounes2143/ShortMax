package io.bidmachine.media3.extractor.flv;

import ao.o0;
import cn.b0;
import dn.g;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import io.bidmachine.media3.extractor.flv.TagPayloadReader;
/* compiled from: VideoTagPayloadReader.java */
/* loaded from: classes8.dex */
final class d extends TagPayloadReader {

    /* renamed from: b  reason: collision with root package name */
    private final b0 f57459b;

    /* renamed from: c  reason: collision with root package name */
    private final b0 f57460c;

    /* renamed from: d  reason: collision with root package name */
    private int f57461d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f57462e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f57463f;

    /* renamed from: g  reason: collision with root package name */
    private int f57464g;

    public d(o0 o0Var) {
        super(o0Var);
        this.f57459b = new b0(g.f50462a);
        this.f57460c = new b0(4);
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    protected boolean b(b0 b0Var) throws TagPayloadReader.UnsupportedFormatException {
        int H = b0Var.H();
        int i10 = (H >> 4) & 15;
        int i11 = H & 15;
        if (i11 == 7) {
            this.f57464g = i10;
            if (i10 != 5) {
                return true;
            }
            return false;
        }
        throw new TagPayloadReader.UnsupportedFormatException("Video format not supported: " + i11);
    }

    @Override // io.bidmachine.media3.extractor.flv.TagPayloadReader
    protected boolean c(b0 b0Var, long j10) throws ParserException {
        int i10;
        int H = b0Var.H();
        long r10 = j10 + (b0Var.r() * 1000);
        if (H == 0 && !this.f57462e) {
            b0 b0Var2 = new b0(new byte[b0Var.a()]);
            b0Var.l(b0Var2.e(), 0, b0Var.a());
            ao.d b10 = ao.d.b(b0Var2);
            this.f57461d = b10.f1783b;
            this.f57434a.g(new a.b().U("video/x-flv").u0("video/avc").S(b10.f1793l).B0(b10.f1784c).d0(b10.f1785d).q0(b10.f1792k).g0(b10.f1782a).N());
            this.f57462e = true;
            return false;
        } else if (H != 1 || !this.f57462e) {
            return false;
        } else {
            if (this.f57464g == 1) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            if (!this.f57463f && i10 == 0) {
                return false;
            }
            byte[] e10 = this.f57460c.e();
            e10[0] = 0;
            e10[1] = 0;
            e10[2] = 0;
            int i11 = 4 - this.f57461d;
            int i12 = 0;
            while (b0Var.a() > 0) {
                b0Var.l(this.f57460c.e(), i11, this.f57461d);
                this.f57460c.W(0);
                int L = this.f57460c.L();
                this.f57459b.W(0);
                this.f57434a.a(this.f57459b, 4);
                this.f57434a.a(b0Var, L);
                i12 = i12 + 4 + L;
            }
            this.f57434a.c(r10, i10, i12, 0, null);
            this.f57463f = true;
            return true;
        }
    }
}
