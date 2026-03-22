package wo;

import ao.h0;
import ao.r0;
import cn.b0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.util.Arrays;
import java.util.List;
import wo.i;
import zm.t;
/* compiled from: OpusReader.java */
/* loaded from: classes8.dex */
final class h extends i {

    /* renamed from: o  reason: collision with root package name */
    private static final byte[] f70073o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: p  reason: collision with root package name */
    private static final byte[] f70074p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: n  reason: collision with root package name */
    private boolean f70075n;

    private static boolean n(b0 b0Var, byte[] bArr) {
        if (b0Var.a() < bArr.length) {
            return false;
        }
        int f10 = b0Var.f();
        byte[] bArr2 = new byte[bArr.length];
        b0Var.l(bArr2, 0, bArr.length);
        b0Var.W(f10);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean o(b0 b0Var) {
        return n(b0Var, f70073o);
    }

    @Override // wo.i
    protected long f(b0 b0Var) {
        return c(h0.e(b0Var.e()));
    }

    @Override // wo.i
    protected boolean i(b0 b0Var, long j10, i.b bVar) throws ParserException {
        if (n(b0Var, f70073o)) {
            byte[] copyOf = Arrays.copyOf(b0Var.e(), b0Var.g());
            int c10 = h0.c(copyOf);
            List<byte[]> a10 = h0.a(copyOf);
            if (bVar.f70089a != null) {
                return true;
            }
            bVar.f70089a = new a.b().U("audio/ogg").u0(MimeTypes.AUDIO_OPUS).R(c10).v0(48000).g0(a10).N();
            return true;
        }
        byte[] bArr = f70074p;
        if (n(b0Var, bArr)) {
            cn.a.i(bVar.f70089a);
            if (this.f70075n) {
                return true;
            }
            this.f70075n = true;
            b0Var.X(bArr.length);
            t d10 = r0.d(ImmutableList.v(r0.k(b0Var, false, false).f1930b));
            if (d10 == null) {
                return true;
            }
            bVar.f70089a = bVar.f70089a.b().n0(d10.b(bVar.f70089a.f55171l)).N();
            return true;
        }
        cn.a.i(bVar.f70089a);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wo.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f70075n = false;
        }
    }
}
