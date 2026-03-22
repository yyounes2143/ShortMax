package qn;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import po.h;
/* compiled from: MetadataDecoderFactory.java */
/* loaded from: classes8.dex */
public interface a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f65376a = new C0908a();

    /* compiled from: MetadataDecoderFactory.java */
    /* renamed from: qn.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    class C0908a implements a {
        C0908a() {
        }

        @Override // qn.a
        public boolean a(io.bidmachine.media3.common.a aVar) {
            String str = aVar.f55174o;
            if (!MimeTypes.APPLICATION_ID3.equals(str) && !MimeTypes.APPLICATION_EMSG.equals(str) && !MimeTypes.APPLICATION_SCTE35.equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str)) {
                return false;
            }
            return true;
        }

        @Override // qn.a
        public ko.a b(io.bidmachine.media3.common.a aVar) {
            String str = aVar.f55174o;
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
                        return new lo.b();
                    case 1:
                        return new oo.a();
                    case 2:
                        return new h();
                    case 3:
                        return new mo.b();
                    case 4:
                        return new ro.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(io.bidmachine.media3.common.a aVar);

    ko.a b(io.bidmachine.media3.common.a aVar);
}
