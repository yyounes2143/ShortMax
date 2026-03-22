package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzay {
    public static final /* synthetic */ int zza = 0;
    private static final ArrayList zzb = new ArrayList();
    private static final Pattern zzc = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int zza(String str, @Nullable String str2) {
        char c10;
        zzax zzc2;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1365340241:
                if (str.equals(MimeTypes.AUDIO_DTS_EXPRESS)) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -1095064472:
                if (str.equals(MimeTypes.AUDIO_DTS)) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -53558318:
                if (str.equals(MimeTypes.AUDIO_AAC)) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case 187078296:
                if (str.equals(MimeTypes.AUDIO_AC3)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 1504578661:
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1504831518:
                if (str.equals(MimeTypes.AUDIO_MPEG)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 1504891608:
                if (str.equals(MimeTypes.AUDIO_OPUS)) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 1505942594:
                if (str.equals(MimeTypes.AUDIO_DTS_HD)) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 1556697186:
                if (str.equals(MimeTypes.AUDIO_TRUEHD)) {
                    c10 = '\n';
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
                return 9;
            case 1:
                if (str2 == null || (zzc2 = zzc(str2)) == null) {
                    return 0;
                }
                return zzc2.zza();
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 18;
            case 5:
                return 17;
            case 6:
                return 7;
            case 7:
            case '\b':
                return 8;
            case '\t':
                return 30;
            case '\n':
                return 14;
            case 11:
                return 20;
            default:
                return 0;
        }
    }

    public static int zzb(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (zzh(str)) {
            return 1;
        }
        if (!zzj(str)) {
            if (!MimeTypes.BASE_TYPE_TEXT.equals(zzk(str)) && !"application/x-media3-cues".equals(str) && !MimeTypes.APPLICATION_CEA608.equals(str) && !MimeTypes.APPLICATION_CEA708.equals(str) && !MimeTypes.APPLICATION_MP4CEA608.equals(str) && !MimeTypes.APPLICATION_SUBRIP.equals(str) && !MimeTypes.APPLICATION_TTML.equals(str) && !MimeTypes.APPLICATION_TX3G.equals(str) && !MimeTypes.APPLICATION_MP4VTT.equals(str) && !MimeTypes.APPLICATION_RAWCC.equals(str) && !MimeTypes.APPLICATION_VOBSUB.equals(str) && !MimeTypes.APPLICATION_PGS.equals(str) && !MimeTypes.APPLICATION_DVBSUBS.equals(str)) {
                if (zzi(str)) {
                    return 4;
                }
                if (!MimeTypes.APPLICATION_ID3.equals(str) && !MimeTypes.APPLICATION_EMSG.equals(str) && !MimeTypes.APPLICATION_SCTE35.equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str)) {
                    if (!MimeTypes.APPLICATION_CAMERA_MOTION.equals(str)) {
                        ArrayList arrayList = zzb;
                        int size = arrayList.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            String str2 = ((zzaw) arrayList.get(i10)).zza;
                            if (str.equals(null)) {
                                return 0;
                            }
                        }
                        return -1;
                    }
                    return 6;
                }
                return 5;
            }
            return 3;
        }
        return 2;
    }

    @Nullable
    @VisibleForTesting
    static zzax zzc(String str) {
        int i10;
        Matcher matcher = zzc.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            try {
                int parseInt = Integer.parseInt(group, 16);
                if (group2 != null) {
                    i10 = Integer.parseInt(group2);
                } else {
                    i10 = 0;
                }
                return new zzax(parseInt, i10);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    @Nullable
    public static String zzd(int i10) {
        if (i10 != 32) {
            if (i10 != 33) {
                if (i10 != 35) {
                    if (i10 != 64) {
                        if (i10 != 163) {
                            if (i10 != 177) {
                                if (i10 != 221) {
                                    if (i10 != 165) {
                                        if (i10 != 166) {
                                            switch (i10) {
                                                case 96:
                                                case 97:
                                                case 98:
                                                case 99:
                                                case 100:
                                                case 101:
                                                    return MimeTypes.VIDEO_MPEG2;
                                                case 102:
                                                case 103:
                                                case 104:
                                                    return MimeTypes.AUDIO_AAC;
                                                case 105:
                                                case 107:
                                                    return MimeTypes.AUDIO_MPEG;
                                                case 106:
                                                    return MimeTypes.VIDEO_MPEG;
                                                case 108:
                                                    return "image/jpeg";
                                                default:
                                                    switch (i10) {
                                                        case 169:
                                                        case 172:
                                                            return MimeTypes.AUDIO_DTS;
                                                        case 170:
                                                        case 171:
                                                            return MimeTypes.AUDIO_DTS_HD;
                                                        case 173:
                                                            return MimeTypes.AUDIO_OPUS;
                                                        case 174:
                                                            return "audio/ac4";
                                                        default:
                                                            return null;
                                                    }
                                            }
                                        }
                                        return MimeTypes.AUDIO_E_AC3;
                                    }
                                    return MimeTypes.AUDIO_AC3;
                                }
                                return MimeTypes.AUDIO_VORBIS;
                            }
                            return MimeTypes.VIDEO_VP9;
                        }
                        return MimeTypes.VIDEO_VC1;
                    }
                    return MimeTypes.AUDIO_AAC;
                }
                return "video/hevc";
            }
            return "video/avc";
        }
        return MimeTypes.VIDEO_MP4V;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static String zze(String str) {
        char c10;
        if (str == null) {
            return null;
        }
        String zza2 = zzfuv.zza(str);
        switch (zza2.hashCode()) {
            case -1833600100:
                if (zza2.equals("video/x-mvhevc")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1007807498:
                if (zza2.equals("audio/x-flac")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -979095690:
                if (zza2.equals("application/x-mpegurl")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -586683234:
                if (zza2.equals("audio/x-wav")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -432836268:
                if (zza2.equals("audio/mpeg-l1")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -432836267:
                if (zza2.equals("audio/mpeg-l2")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 187090231:
                if (zza2.equals("audio/mp3")) {
                    c10 = 2;
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
                return "video/mv-hevc";
            case 1:
                return MimeTypes.AUDIO_FLAC;
            case 2:
                return MimeTypes.AUDIO_MPEG;
            case 3:
                return "audio/wav";
            case 4:
                return MimeTypes.APPLICATION_M3U8;
            case 5:
                return MimeTypes.AUDIO_MPEG_L1;
            case 6:
                return MimeTypes.AUDIO_MPEG_L2;
            default:
                return zza2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static boolean zzf(@Nullable String str, @Nullable String str2) {
        char c10;
        zzax zzc2;
        int zza2;
        if (str == null) {
            return false;
        }
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case -432837260:
                if (str.equals(MimeTypes.AUDIO_MPEG_L1)) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -432837259:
                if (str.equals(MimeTypes.AUDIO_MPEG_L2)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -53558318:
                if (str.equals(MimeTypes.AUDIO_AAC)) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 187078296:
                if (str.equals(MimeTypes.AUDIO_AC3)) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 187094639:
                if (str.equals(MimeTypes.AUDIO_RAW)) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1504578661:
                if (str.equals(MimeTypes.AUDIO_E_AC3)) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 1504619009:
                if (str.equals(MimeTypes.AUDIO_FLAC)) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 1504831518:
                if (str.equals(MimeTypes.AUDIO_MPEG)) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 1903231877:
                if (str.equals(MimeTypes.AUDIO_ALAW)) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 1903589369:
                if (str.equals(MimeTypes.AUDIO_MLAW)) {
                    c10 = 5;
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
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
                return true;
            case '\n':
                if (str2 == null || (zzc2 = zzc(str2)) == null || (zza2 = zzc2.zza()) == 0 || zza2 == 16) {
                    return false;
                }
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0200 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zzg(@androidx.annotation.Nullable java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzay.zzg(java.lang.String, java.lang.String):boolean");
    }

    public static boolean zzh(@Nullable String str) {
        return "audio".equals(zzk(str));
    }

    public static boolean zzi(@Nullable String str) {
        if (!"image".equals(zzk(str)) && !"application/x-image-uri".equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean zzj(@Nullable String str) {
        return "video".equals(zzk(str));
    }

    @Nullable
    private static String zzk(@Nullable String str) {
        int indexOf;
        if (str != null && (indexOf = str.indexOf(47)) != -1) {
            return str.substring(0, indexOf);
        }
        return null;
    }
}
