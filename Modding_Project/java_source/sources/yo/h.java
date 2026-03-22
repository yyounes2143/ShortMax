package yo;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;
import yo.r;
/* compiled from: DefaultSubtitleParserFactory.java */
/* loaded from: classes8.dex */
public final class h implements r.a {
    @Override // yo.r.a
    public boolean a(io.bidmachine.media3.common.a aVar) {
        String str = aVar.f55174o;
        if (!Objects.equals(str, MimeTypes.TEXT_SSA) && !Objects.equals(str, MimeTypes.TEXT_VTT) && !Objects.equals(str, MimeTypes.APPLICATION_MP4VTT) && !Objects.equals(str, MimeTypes.APPLICATION_SUBRIP) && !Objects.equals(str, MimeTypes.APPLICATION_TX3G) && !Objects.equals(str, MimeTypes.APPLICATION_PGS) && !Objects.equals(str, MimeTypes.APPLICATION_VOBSUB) && !Objects.equals(str, MimeTypes.APPLICATION_DVBSUBS) && !Objects.equals(str, MimeTypes.APPLICATION_TTML)) {
            return false;
        }
        return true;
    }

    @Override // yo.r.a
    public int b(io.bidmachine.media3.common.a aVar) {
        String str = aVar.f55174o;
        if (str != null) {
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1351681404:
                    if (str.equals(MimeTypes.APPLICATION_DVBSUBS)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1248334819:
                    if (str.equals(MimeTypes.APPLICATION_PGS)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1026075066:
                    if (str.equals(MimeTypes.APPLICATION_MP4VTT)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1004728940:
                    if (str.equals(MimeTypes.TEXT_VTT)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 691401887:
                    if (str.equals(MimeTypes.APPLICATION_TX3G)) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 822864842:
                    if (str.equals(MimeTypes.TEXT_SSA)) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 1157994102:
                    if (str.equals(MimeTypes.APPLICATION_VOBSUB)) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 1668750253:
                    if (str.equals(MimeTypes.APPLICATION_SUBRIP)) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 1693976202:
                    if (str.equals(MimeTypes.APPLICATION_TTML)) {
                        c10 = '\b';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                case 1:
                case 2:
                    return 2;
                case 3:
                    return 1;
                case 4:
                    return 2;
                case 5:
                    return 1;
                case 6:
                    return 2;
                case 7:
                case '\b':
                    return 1;
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: " + str);
    }

    @Override // yo.r.a
    public r c(io.bidmachine.media3.common.a aVar) {
        String str = aVar.f55174o;
        if (str != null) {
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1351681404:
                    if (str.equals(MimeTypes.APPLICATION_DVBSUBS)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1248334819:
                    if (str.equals(MimeTypes.APPLICATION_PGS)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1026075066:
                    if (str.equals(MimeTypes.APPLICATION_MP4VTT)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1004728940:
                    if (str.equals(MimeTypes.TEXT_VTT)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 691401887:
                    if (str.equals(MimeTypes.APPLICATION_TX3G)) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 822864842:
                    if (str.equals(MimeTypes.TEXT_SSA)) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 1157994102:
                    if (str.equals(MimeTypes.APPLICATION_VOBSUB)) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 1668750253:
                    if (str.equals(MimeTypes.APPLICATION_SUBRIP)) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 1693976202:
                    if (str.equals(MimeTypes.APPLICATION_TTML)) {
                        c10 = '\b';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return new ap.a(aVar.f55177r);
                case 1:
                    return new bp.a();
                case 2:
                    return new hp.a();
                case 3:
                    return new hp.g();
                case 4:
                    return new fp.a(aVar.f55177r);
                case 5:
                    return new cp.b(aVar.f55177r);
                case 6:
                    return new gp.a(aVar.f55177r);
                case 7:
                    return new dp.a();
                case '\b':
                    return new ep.d();
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: " + str);
    }
}
