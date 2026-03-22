package v5;

import androidx.annotation.Nullable;
import b7.g0;
import b7.q;
import b7.s0;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
/* compiled from: StreamFormatChunk.java */
/* loaded from: classes4.dex */
final class g implements a {

    /* renamed from: a  reason: collision with root package name */
    public final v0 f68716a;

    public g(v0 v0Var) {
        this.f68716a = v0Var;
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
    private static a c(g0 g0Var) {
        g0Var.Q(4);
        int q10 = g0Var.q();
        int q11 = g0Var.q();
        g0Var.Q(4);
        int q12 = g0Var.q();
        String a10 = a(q12);
        if (a10 == null) {
            q.i("StreamFormatChunk", "Ignoring track with unsupported compression " + q12);
            return null;
        }
        v0.b bVar = new v0.b();
        bVar.j0(q10).Q(q11).e0(a10);
        return new g(bVar.E());
    }

    @Nullable
    public static a d(int i10, g0 g0Var) {
        if (i10 == 2) {
            return c(g0Var);
        }
        if (i10 == 1) {
            return e(g0Var);
        }
        q.i("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + s0.g0(i10));
        return null;
    }

    @Nullable
    private static a e(g0 g0Var) {
        int v10 = g0Var.v();
        String b10 = b(v10);
        if (b10 == null) {
            q.i("StreamFormatChunk", "Ignoring track with unsupported format tag " + v10);
            return null;
        }
        int v11 = g0Var.v();
        int q10 = g0Var.q();
        g0Var.Q(6);
        int W = s0.W(g0Var.J());
        int v12 = g0Var.v();
        byte[] bArr = new byte[v12];
        g0Var.j(bArr, 0, v12);
        v0.b bVar = new v0.b();
        bVar.e0(b10).H(v11).f0(q10);
        if (MimeTypes.AUDIO_RAW.equals(b10) && W != 0) {
            bVar.Y(W);
        }
        if (MimeTypes.AUDIO_AAC.equals(b10) && v12 > 0) {
            bVar.T(ImmutableList.B(bArr));
        }
        return new g(bVar.E());
    }

    @Override // v5.a
    public int getType() {
        return 1718776947;
    }
}
