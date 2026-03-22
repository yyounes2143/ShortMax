package c6;

import b7.g0;
import c6.i;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
import q5.h0;
import t5.e0;
/* compiled from: OpusReader.java */
/* loaded from: classes4.dex */
final class h extends i {

    /* renamed from: o  reason: collision with root package name */
    private static final byte[] f3187o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: p  reason: collision with root package name */
    private static final byte[] f3188p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* renamed from: n  reason: collision with root package name */
    private boolean f3189n;

    private long n(byte[] bArr) {
        int i10;
        int i11;
        byte b10 = bArr[0];
        int i12 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = b10 & 3;
        if (i13 != 0) {
            i10 = 2;
            if (i13 != 1 && i13 != 2) {
                i10 = bArr[1] & 63;
            }
        } else {
            i10 = 1;
        }
        int i14 = i12 >> 3;
        int i15 = i14 & 3;
        if (i14 >= 16) {
            i11 = 2500 << i15;
        } else if (i14 >= 12) {
            i11 = 10000 << (i14 & 1);
        } else if (i15 == 3) {
            i11 = 60000;
        } else {
            i11 = 10000 << i15;
        }
        return i10 * i11;
    }

    private static boolean o(g0 g0Var, byte[] bArr) {
        if (g0Var.a() < bArr.length) {
            return false;
        }
        int e10 = g0Var.e();
        byte[] bArr2 = new byte[bArr.length];
        g0Var.j(bArr2, 0, bArr.length);
        g0Var.P(e10);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean p(g0 g0Var) {
        return o(g0Var, f3187o);
    }

    @Override // c6.i
    protected long f(g0 g0Var) {
        return c(n(g0Var.d()));
    }

    @Override // c6.i
    protected boolean h(g0 g0Var, long j10, i.b bVar) throws ParserException {
        if (o(g0Var, f3187o)) {
            byte[] copyOf = Arrays.copyOf(g0Var.d(), g0Var.f());
            int c10 = h0.c(copyOf);
            List<byte[]> a10 = h0.a(copyOf);
            if (bVar.f3203a != null) {
                return true;
            }
            bVar.f3203a = new v0.b().e0(MimeTypes.AUDIO_OPUS).H(c10).f0(48000).T(a10).E();
            return true;
        }
        byte[] bArr = f3188p;
        if (o(g0Var, bArr)) {
            b7.a.i(bVar.f3203a);
            if (this.f3189n) {
                return true;
            }
            this.f3189n = true;
            g0Var.Q(bArr.length);
            Metadata c11 = e0.c(ImmutableList.v(e0.j(g0Var, false, false).f67141b));
            if (c11 == null) {
                return true;
            }
            bVar.f3203a = bVar.f3203a.b().X(c11.b(bVar.f3203a.f19155j)).E();
            return true;
        }
        b7.a.i(bVar.f3203a);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // c6.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f3189n = false;
        }
    }
}
