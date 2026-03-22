package g6;

import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
/* compiled from: MetadataDecoderFactory.java */
/* loaded from: classes4.dex */
public interface b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f52213a = new a();

    /* compiled from: MetadataDecoderFactory.java */
    /* loaded from: classes4.dex */
    class a implements b {
        a() {
        }

        @Override // g6.b
        public boolean a(v0 v0Var) {
            String str = v0Var.f19157l;
            if (!MimeTypes.APPLICATION_ID3.equals(str) && !MimeTypes.APPLICATION_EMSG.equals(str) && !MimeTypes.APPLICATION_SCTE35.equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str)) {
                return false;
            }
            return true;
        }

        @Override // g6.b
        public g6.a b(v0 v0Var) {
            String str = v0Var.f19157l;
            if (str != null) {
                char c10 = 65535;
                switch (str.hashCode()) {
                    case -1354451219:
                        if (str.equals("application/vnd.dvb.ait")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1348231605:
                        if (str.equals("application/x-icy")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1248341703:
                        if (str.equals(MimeTypes.APPLICATION_ID3)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1154383568:
                        if (str.equals(MimeTypes.APPLICATION_EMSG)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1652648887:
                        if (str.equals(MimeTypes.APPLICATION_SCTE35)) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        return new h6.a();
                    case 1:
                        return new j6.a();
                    case 2:
                        return new k6.b();
                    case 3:
                        return new i6.a();
                    case 4:
                        return new com.google.android.exoplayer2.metadata.scte35.a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(v0 v0Var);

    g6.a b(v0 v0Var);
}
