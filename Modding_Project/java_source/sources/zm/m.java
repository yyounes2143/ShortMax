package zm;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.util.List;
import java.util.Map;
/* compiled from: FileTypes.java */
/* loaded from: classes8.dex */
public final class m {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(@Nullable String str) {
        char c10;
        if (str == null) {
            return -1;
        }
        String u10 = u.u(str);
        u10.hashCode();
        switch (u10.hashCode()) {
            case -2123537834:
                if (u10.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1662384011:
                if (u10.equals("video/mp2p")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1662384007:
                if (u10.equals("video/mp2t")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1662095187:
                if (u10.equals("video/webm")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1606874997:
                if (u10.equals(MimeTypes.AUDIO_AMR_WB)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1487656890:
                if (u10.equals("image/avif")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -1487464693:
                if (u10.equals("image/heic")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -1487464690:
                if (u10.equals("image/heif")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -1487394660:
                if (u10.equals("image/jpeg")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -1487018032:
                if (u10.equals("image/webp")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case -1248337486:
                if (u10.equals(MimeTypes.APPLICATION_MP4)) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case -1079884372:
                if (u10.equals("video/x-msvideo")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case -1004728940:
                if (u10.equals(MimeTypes.TEXT_VTT)) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case -879272239:
                if (u10.equals("image/bmp")) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case -879258763:
                if (u10.equals("image/png")) {
                    c10 = 14;
                    break;
                }
                c10 = 65535;
                break;
            case -387023398:
                if (u10.equals("audio/x-matroska")) {
                    c10 = 15;
                    break;
                }
                c10 = 65535;
                break;
            case -43467528:
                if (u10.equals(MimeTypes.APPLICATION_WEBM)) {
                    c10 = 16;
                    break;
                }
                c10 = 65535;
                break;
            case 13915911:
                if (u10.equals("video/x-flv")) {
                    c10 = 17;
                    break;
                }
                c10 = 65535;
                break;
            case 187078296:
                if (u10.equals(MimeTypes.AUDIO_AC3)) {
                    c10 = 18;
                    break;
                }
                c10 = 65535;
                break;
            case 187078297:
                if (u10.equals("audio/ac4")) {
                    c10 = 19;
                    break;
                }
                c10 = 65535;
                break;
            case 187078669:
                if (u10.equals("audio/amr")) {
                    c10 = 20;
                    break;
                }
                c10 = 65535;
                break;
            case 187090232:
                if (u10.equals(MimeTypes.AUDIO_MP4)) {
                    c10 = 21;
                    break;
                }
                c10 = 65535;
                break;
            case 187091926:
                if (u10.equals("audio/ogg")) {
                    c10 = 22;
                    break;
                }
                c10 = 65535;
                break;
            case 187099443:
                if (u10.equals("audio/wav")) {
                    c10 = 23;
                    break;
                }
                c10 = 65535;
                break;
            case 1331848029:
                if (u10.equals(MimeTypes.VIDEO_MP4)) {
                    c10 = 24;
                    break;
                }
                c10 = 65535;
                break;
            case 1503095341:
                if (u10.equals(MimeTypes.AUDIO_AMR_NB)) {
                    c10 = 25;
                    break;
                }
                c10 = 65535;
                break;
            case 1504578661:
                if (u10.equals(MimeTypes.AUDIO_E_AC3)) {
                    c10 = 26;
                    break;
                }
                c10 = 65535;
                break;
            case 1504619009:
                if (u10.equals(MimeTypes.AUDIO_FLAC)) {
                    c10 = 27;
                    break;
                }
                c10 = 65535;
                break;
            case 1504824762:
                if (u10.equals("audio/midi")) {
                    c10 = 28;
                    break;
                }
                c10 = 65535;
                break;
            case 1504831518:
                if (u10.equals(MimeTypes.AUDIO_MPEG)) {
                    c10 = 29;
                    break;
                }
                c10 = 65535;
                break;
            case 1505118770:
                if (u10.equals(MimeTypes.AUDIO_WEBM)) {
                    c10 = 30;
                    break;
                }
                c10 = 65535;
                break;
            case 2039520277:
                if (u10.equals("video/x-matroska")) {
                    c10 = 31;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
            case 18:
            case 26:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case 15:
            case 16:
            case 30:
            case 31:
                return 6;
            case 4:
            case 20:
            case 25:
                return 3;
            case 5:
                return 21;
            case 6:
            case 7:
                return 20;
            case '\b':
                return 14;
            case '\t':
                return 18;
            case '\n':
            case 21:
            case 24:
                return 8;
            case 11:
                return 16;
            case '\f':
                return 13;
            case '\r':
                return 19;
            case 14:
                return 17;
            case 17:
                return 5;
            case 19:
                return 1;
            case 22:
                return 9;
            case 23:
                return 12;
            case 27:
                return 4;
            case 28:
                return 15;
            case 29:
                return 7;
            default:
                return -1;
        }
    }

    public static int b(Map<String, List<String>> map) {
        String str;
        List<String> list = map.get(CommonGatewayClient.HEADER_CONTENT_TYPE);
        if (list != null && !list.isEmpty()) {
            str = list.get(0);
        } else {
            str = null;
        }
        return a(str);
    }

    public static int c(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (!lastPathSegment.endsWith(".ac3") && !lastPathSegment.endsWith(".ec3")) {
            if (lastPathSegment.endsWith(".ac4")) {
                return 1;
            }
            if (!lastPathSegment.endsWith(".adts") && !lastPathSegment.endsWith(".aac")) {
                if (lastPathSegment.endsWith(".amr")) {
                    return 3;
                }
                if (lastPathSegment.endsWith(".flac")) {
                    return 4;
                }
                if (lastPathSegment.endsWith(".flv")) {
                    return 5;
                }
                if (!lastPathSegment.endsWith(".mid") && !lastPathSegment.endsWith(".midi") && !lastPathSegment.endsWith(".smf")) {
                    if (!lastPathSegment.startsWith(".mk", lastPathSegment.length() - 4) && !lastPathSegment.endsWith(".webm")) {
                        if (lastPathSegment.endsWith(".mp3")) {
                            return 7;
                        }
                        if (!lastPathSegment.endsWith(".mp4") && !lastPathSegment.startsWith(".m4", lastPathSegment.length() - 4) && !lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) && !lastPathSegment.startsWith(".cmf", lastPathSegment.length() - 5)) {
                            if (!lastPathSegment.startsWith(".og", lastPathSegment.length() - 4) && !lastPathSegment.endsWith(".opus")) {
                                if (!lastPathSegment.endsWith(".ps") && !lastPathSegment.endsWith(".mpeg") && !lastPathSegment.endsWith(".mpg") && !lastPathSegment.endsWith(".m2p")) {
                                    if (!lastPathSegment.endsWith(".ts") && !lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                                        if (!lastPathSegment.endsWith(".wav") && !lastPathSegment.endsWith(".wave")) {
                                            if (!lastPathSegment.endsWith(".vtt") && !lastPathSegment.endsWith(".webvtt")) {
                                                if (!lastPathSegment.endsWith(".jpg") && !lastPathSegment.endsWith(".jpeg")) {
                                                    if (lastPathSegment.endsWith(".avi")) {
                                                        return 16;
                                                    }
                                                    if (lastPathSegment.endsWith(".png")) {
                                                        return 17;
                                                    }
                                                    if (lastPathSegment.endsWith(".webp")) {
                                                        return 18;
                                                    }
                                                    if (!lastPathSegment.endsWith(".bmp") && !lastPathSegment.endsWith(".dib")) {
                                                        if (!lastPathSegment.endsWith(".heic") && !lastPathSegment.endsWith(".heif")) {
                                                            if (!lastPathSegment.endsWith(".avif")) {
                                                                return -1;
                                                            }
                                                            return 21;
                                                        }
                                                        return 20;
                                                    }
                                                    return 19;
                                                }
                                                return 14;
                                            }
                                            return 13;
                                        }
                                        return 12;
                                    }
                                    return 11;
                                }
                                return 10;
                            }
                            return 9;
                        }
                        return 8;
                    }
                    return 6;
                }
                return 15;
            }
            return 2;
        }
        return 0;
    }
}
