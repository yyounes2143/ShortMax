package co;

import androidx.annotation.Nullable;
import cn.b0;
import cn.m0;
import cn.r;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.a;
/* compiled from: StreamFormatChunk.java */
/* loaded from: classes8.dex */
final class g implements a {

    /* renamed from: a  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f3724a;

    public g(io.bidmachine.media3.common.a aVar) {
        this.f3724a = aVar;
    }

    @Nullable
    private static String a(int i10) {
        switch (i10) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return MimeTypes.VIDEO_MP4V;
            case 826496577:
            case 828601953:
            case 875967048:
                return "video/avc";
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }

    @Nullable
    private static String b(int i10) {
        if (i10 != 1) {
            if (i10 != 85) {
                if (i10 != 255) {
                    if (i10 != 8192) {
                        if (i10 != 8193) {
                            return null;
                        }
                        return MimeTypes.AUDIO_DTS;
                    }
                    return MimeTypes.AUDIO_AC3;
                }
                return MimeTypes.AUDIO_AAC;
            }
            return MimeTypes.AUDIO_MPEG;
        }
        return MimeTypes.AUDIO_RAW;
    }

    @Nullable
    private static a c(b0 b0Var) {
        b0Var.X(4);
        int u10 = b0Var.u();
        int u11 = b0Var.u();
        b0Var.X(4);
        int u12 = b0Var.u();
        String a10 = a(u12);
        if (a10 == null) {
            r.h("StreamFormatChunk", "Ignoring track with unsupported compression " + u12);
            return null;
        }
        a.b bVar = new a.b();
        bVar.B0(u10).d0(u11).u0(a10);
        return new g(bVar.N());
    }

    @Nullable
    public static a d(int i10, b0 b0Var) {
        if (i10 == 2) {
            return c(b0Var);
        }
        if (i10 == 1) {
            return e(b0Var);
        }
        r.h("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + m0.t0(i10));
        return null;
    }

    @Nullable
    private static a e(b0 b0Var) {
        int i10;
        int z10 = b0Var.z();
        String b10 = b(z10);
        if (b10 == null) {
            r.h("StreamFormatChunk", "Ignoring track with unsupported format tag " + z10);
            return null;
        }
        int z11 = b0Var.z();
        int u10 = b0Var.u();
        b0Var.X(6);
        int i02 = m0.i0(b0Var.z());
        if (b0Var.a() > 0) {
            i10 = b0Var.z();
        } else {
            i10 = 0;
        }
        a.b bVar = new a.b();
        bVar.u0(b10).R(z11).v0(u10);
        if (b10.equals(MimeTypes.AUDIO_RAW) && i02 != 0) {
            bVar.o0(i02);
        }
        if (b10.equals(MimeTypes.AUDIO_AAC) && i10 > 0) {
            byte[] bArr = new byte[i10];
            b0Var.l(bArr, 0, i10);
            bVar.g0(ImmutableList.B(bArr));
        }
        return new g(bVar.N());
    }

    @Override // co.a
    public int getType() {
        return 1718776947;
    }
}
