package vo;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.List;
import java.util.Objects;
/* compiled from: MimeTypeResolver.java */
/* loaded from: classes8.dex */
final class k {
    public static String a(io.bidmachine.media3.common.a aVar) {
        String str = aVar.f55174o;
        if (zm.u.t(str)) {
            return MimeTypes.VIDEO_MP4;
        }
        if (zm.u.o(str)) {
            return MimeTypes.AUDIO_MP4;
        }
        if (zm.u.q(str)) {
            if (Objects.equals(str, "image/heic")) {
                return "image/heif";
            }
            if (Objects.equals(str, "image/avif")) {
                return "image/avif";
            }
            return MimeTypes.APPLICATION_MP4;
        }
        return MimeTypes.APPLICATION_MP4;
    }

    public static String b(List<w> list) {
        boolean z10 = false;
        String str = null;
        for (w wVar : list) {
            String str2 = wVar.f69358a.f69329g.f55174o;
            if (zm.u.t(str2)) {
                return MimeTypes.VIDEO_MP4;
            }
            if (zm.u.o(str2)) {
                z10 = true;
            } else if (zm.u.q(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        if (z10) {
            return MimeTypes.AUDIO_MP4;
        }
        if (str != null) {
            return str;
        }
        return MimeTypes.APPLICATION_MP4;
    }
}
