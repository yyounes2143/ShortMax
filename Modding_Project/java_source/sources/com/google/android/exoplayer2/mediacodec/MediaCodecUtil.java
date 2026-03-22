package com.google.android.exoplayer2.mediacodec;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b7.s0;
import b7.u;
import com.adjust.sdk.Constants;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.v0;
import com.google.common.collect.ImmutableList;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@SuppressLint({"InlinedApi"})
/* loaded from: classes4.dex */
public final class MediaCodecUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f17906a = Pattern.compile("^\\D?(\\d+)$");
    @GuardedBy("MediaCodecUtil.class")

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<b, List<k>> f17907b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static int f17908c = -1;

    /* loaded from: classes4.dex */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th2) {
            super("Failed to query underlying media codecs", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f17909a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f17910b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f17911c;

        public b(String str, boolean z10, boolean z11) {
            this.f17909a = str;
            this.f17910b = z10;
            this.f17911c = z11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            if (TextUtils.equals(this.f17909a, bVar.f17909a) && this.f17910b == bVar.f17910b && this.f17911c == bVar.f17911c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = (this.f17909a.hashCode() + 31) * 31;
            int i11 = 1237;
            if (this.f17910b) {
                i10 = 1231;
            } else {
                i10 = 1237;
            }
            int i12 = (hashCode + i10) * 31;
            if (this.f17911c) {
                i11 = 1231;
            }
            return i12 + i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public interface c {
        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i10);

        boolean secureDecodersExplicit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class d implements c {
        private d() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            if ("secure-playback".equals(str) && "video/avc".equals(str2)) {
                return true;
            }
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i10) {
            return MediaCodecList.getCodecInfoAt(i10);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes4.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f17912a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f17913b;

        public e(boolean z10, boolean z11) {
            int i10;
            if (!z10 && !z11) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.f17912a = i10;
        }

        private void c() {
            if (this.f17913b == null) {
                this.f17913b = new MediaCodecList(this.f17912a).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            c();
            return this.f17913b.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i10) {
            c();
            return this.f17913b[i10];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public interface f<T> {
        int a(T t10);
    }

    private static boolean A(MediaCodecInfo mediaCodecInfo) {
        if (s0.f2506a >= 29 && B(mediaCodecInfo)) {
            return true;
        }
        return false;
    }

    @RequiresApi(29)
    private static boolean B(MediaCodecInfo mediaCodecInfo) {
        boolean isAlias;
        isAlias = mediaCodecInfo.isAlias();
        return isAlias;
    }

    private static boolean C(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = s0.f2506a;
        if (i10 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i10 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = s0.f2507b;
            if ("a70".equals(str3) || ("Xiaomi".equals(s0.f2508c) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = s0.f2507b;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = s0.f2507b;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && Constants.REFERRER_API_SAMSUNG.equals(s0.f2508c))) {
            String str6 = s0.f2507b;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i10 <= 19 && "OMX.SEC.vp8.dec".equals(str) && Constants.REFERRER_API_SAMSUNG.equals(s0.f2508c)) {
            String str7 = s0.f2507b;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i10 <= 19 && s0.f2507b.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        if (i10 <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) {
            return false;
        }
        return true;
    }

    private static boolean D(MediaCodecInfo mediaCodecInfo, String str) {
        if (s0.f2506a >= 29) {
            return E(mediaCodecInfo);
        }
        return !F(mediaCodecInfo, str);
    }

    @RequiresApi(29)
    private static boolean E(MediaCodecInfo mediaCodecInfo) {
        boolean isHardwareAccelerated;
        isHardwareAccelerated = mediaCodecInfo.isHardwareAccelerated();
        return isHardwareAccelerated;
    }

    private static boolean F(MediaCodecInfo mediaCodecInfo, String str) {
        if (s0.f2506a >= 29) {
            return G(mediaCodecInfo);
        }
        if (u.l(str)) {
            return true;
        }
        String e10 = h7.a.e(mediaCodecInfo.getName());
        if (e10.startsWith("arc.")) {
            return false;
        }
        if (e10.startsWith("omx.google.") || e10.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((e10.startsWith("omx.sec.") && e10.contains(".sw.")) || e10.equals("omx.qcom.video.decoder.hevcswvdec") || e10.startsWith("c2.android.") || e10.startsWith("c2.google.")) {
            return true;
        }
        if (!e10.startsWith("omx.") && !e10.startsWith("c2.")) {
            return true;
        }
        return false;
    }

    @RequiresApi(29)
    private static boolean G(MediaCodecInfo mediaCodecInfo) {
        boolean isSoftwareOnly;
        isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
        return isSoftwareOnly;
    }

    private static boolean H(MediaCodecInfo mediaCodecInfo) {
        if (s0.f2506a >= 29) {
            return I(mediaCodecInfo);
        }
        String e10 = h7.a.e(mediaCodecInfo.getName());
        if (!e10.startsWith("omx.google.") && !e10.startsWith("c2.android.") && !e10.startsWith("c2.google.")) {
            return true;
        }
        return false;
    }

    @RequiresApi(29)
    private static boolean I(MediaCodecInfo mediaCodecInfo) {
        boolean isVendor;
        isVendor = mediaCodecInfo.isVendor();
        return isVendor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int J(k kVar) {
        String str = kVar.f17973a;
        if (!str.startsWith("OMX.google") && !str.startsWith("c2.android")) {
            if (s0.f2506a < 26 && str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                return -1;
            }
            return 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int K(k kVar) {
        return kVar.f17973a.startsWith("OMX.google") ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int L(v0 v0Var, k kVar) {
        try {
            return kVar.m(v0Var) ? 1 : 0;
        } catch (DecoderQueryException unused) {
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    public static int N() throws DecoderQueryException {
        int i10;
        if (f17908c == -1) {
            int i11 = 0;
            k r10 = r("video/avc", false, false);
            if (r10 != null) {
                MediaCodecInfo.CodecProfileLevel[] g10 = r10.g();
                int length = g10.length;
                int i12 = 0;
                while (i11 < length) {
                    i12 = Math.max(h(g10[i11].level), i12);
                    i11++;
                }
                if (s0.f2506a >= 21) {
                    i10 = 345600;
                } else {
                    i10 = AdConfig.DEFAULT_PING_V2_EXPIRY_HIGH;
                }
                i11 = Math.max(i12, i10);
            }
            f17908c = i11;
        }
        return f17908c;
    }

    private static int O(int i10) {
        int i11 = 17;
        if (i10 != 17) {
            i11 = 20;
            if (i10 != 20) {
                i11 = 23;
                if (i10 != 23) {
                    i11 = 29;
                    if (i10 != 29) {
                        i11 = 39;
                        if (i10 != 39) {
                            i11 = 42;
                            if (i10 != 42) {
                                switch (i10) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i11;
    }

    private static <T> void P(List<T> list, final f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: com.google.android.exoplayer2.mediacodec.p
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int M;
                M = MediaCodecUtil.M(MediaCodecUtil.f.this, obj, obj2);
                return M;
            }
        });
    }

    private static int Q(int i10) {
        if (i10 != 10) {
            if (i10 != 11) {
                if (i10 != 20) {
                    if (i10 != 21) {
                        if (i10 != 30) {
                            if (i10 != 31) {
                                if (i10 != 40) {
                                    if (i10 != 41) {
                                        if (i10 != 50) {
                                            if (i10 != 51) {
                                                switch (i10) {
                                                    case 60:
                                                        return 2048;
                                                    case 61:
                                                        return 4096;
                                                    case 62:
                                                        return 8192;
                                                    default:
                                                        return -1;
                                                }
                                            }
                                            return 512;
                                        }
                                        return 256;
                                    }
                                    return 128;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    private static int R(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                return -1;
            }
            return 8;
        }
        return 4;
    }

    private static void e(String str, List<k> list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (s0.f2506a < 26 && s0.f2507b.equals("R9") && list.size() == 1 && list.get(0).f17973a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(k.C("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            P(list, new f() { // from class: com.google.android.exoplayer2.mediacodec.m
                @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
                public final int a(Object obj) {
                    int J;
                    J = MediaCodecUtil.J((k) obj);
                    return J;
                }
            });
        }
        int i10 = s0.f2506a;
        if (i10 < 21 && list.size() > 1) {
            String str2 = list.get(0).f17973a;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                P(list, new f() { // from class: com.google.android.exoplayer2.mediacodec.n
                    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
                    public final int a(Object obj) {
                        int K;
                        K = MediaCodecUtil.K((k) obj);
                        return K;
                    }
                });
            }
        }
        if (i10 < 32 && list.size() > 1 && "OMX.qti.audio.decoder.flac".equals(list.get(0).f17973a)) {
            list.add(list.remove(0));
        }
    }

    private static int f(int i10) {
        switch (i10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int g(int i10) {
        switch (i10) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i10) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i10) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i10) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i10) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i10) {
        if (i10 != 1 && i10 != 2) {
            switch (i10) {
                case 8:
                case 16:
                case 32:
                    return 101376;
                case 64:
                    return 202752;
                case 128:
                case 256:
                    return 414720;
                case 512:
                    return 921600;
                case 1024:
                    return 1310720;
                case 2048:
                case 4096:
                    return 2097152;
                case 8192:
                    return 2228224;
                case 16384:
                    return 5652480;
                case 32768:
                case 65536:
                    return 9437184;
                case 131072:
                case 262144:
                case 524288:
                    return 35651584;
                default:
                    return -1;
            }
        }
        return 25344;
    }

    private static int i(int i10) {
        if (i10 != 66) {
            if (i10 != 77) {
                if (i10 != 88) {
                    if (i10 != 100) {
                        if (i10 != 110) {
                            if (i10 != 122) {
                                if (i10 != 244) {
                                    return -1;
                                }
                                return 64;
                            }
                            return 32;
                        }
                        return 16;
                    }
                    return 8;
                }
                return 4;
            }
            return 2;
        }
        return 1;
    }

    @Nullable
    private static Integer j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals(HiAnalyticsConstant.KeyAndValue.NUMBER_01)) {
                    c10 = 0;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            case '\n':
                return 1024;
            case 11:
                return 2048;
            case '\f':
                return 4096;
            default:
                return null;
        }
    }

    @Nullable
    private static Integer k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 1536:
                if (str.equals("00")) {
                    c10 = 0;
                    break;
                }
                break;
            case 1537:
                if (str.equals(HiAnalyticsConstant.KeyAndValue.NUMBER_01)) {
                    c10 = 1;
                    break;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    c10 = 6;
                    break;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case '\b':
                return 256;
            case '\t':
                return 512;
            default:
                return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> l(String str, String[] strArr) {
        int O;
        if (strArr.length != 3) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if (MimeTypes.AUDIO_AAC.equals(u.f(Integer.parseInt(strArr[1], 16))) && (O = O(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(O), 0);
            }
        } catch (NumberFormatException unused) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    @Nullable
    public static String m(v0 v0Var) {
        Pair<Integer, Integer> q10;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(v0Var.f19157l)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if ("video/dolby-vision".equals(v0Var.f19157l) && (q10 = q(v0Var)) != null) {
            int intValue = ((Integer) q10.first).intValue();
            if (intValue != 16 && intValue != 256) {
                if (intValue == 512) {
                    return "video/avc";
                }
                return null;
            }
            return "video/hevc";
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> n(String str, String[] strArr, @Nullable c7.c cVar) {
        int i10;
        if (strArr.length < 4) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i11 = 1;
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2].substring(0, 2));
            int parseInt3 = Integer.parseInt(strArr[3]);
            if (parseInt != 0) {
                b7.q.i("MediaCodecUtil", "Unknown AV1 profile: " + parseInt);
                return null;
            } else if (parseInt3 != 8 && parseInt3 != 10) {
                b7.q.i("MediaCodecUtil", "Unknown AV1 bit depth: " + parseInt3);
                return null;
            } else {
                if (parseInt3 != 8) {
                    if (cVar != null && (cVar.f3226d != null || (i10 = cVar.f3225c) == 7 || i10 == 6)) {
                        i11 = 4096;
                    } else {
                        i11 = 2;
                    }
                }
                int f10 = f(parseInt2);
                if (f10 == -1) {
                    b7.q.i("MediaCodecUtil", "Unknown AV1 level: " + parseInt2);
                    return null;
                }
                return new Pair<>(Integer.valueOf(i11), Integer.valueOf(f10));
            }
        } catch (NumberFormatException unused) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> o(String str, String[] strArr) {
        int parseInt;
        int i10;
        if (strArr.length < 2) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i10 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                parseInt = Integer.parseInt(strArr[1].substring(4), 16);
            } else if (strArr.length >= 3) {
                int parseInt2 = Integer.parseInt(strArr[1]);
                parseInt = Integer.parseInt(strArr[2]);
                i10 = parseInt2;
            } else {
                b7.q.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
                return null;
            }
            int i11 = i(i10);
            if (i11 == -1) {
                b7.q.i("MediaCodecUtil", "Unknown AVC profile: " + i10);
                return null;
            }
            int g10 = g(parseInt);
            if (g10 == -1) {
                b7.q.i("MediaCodecUtil", "Unknown AVC level: " + parseInt);
                return null;
            }
            return new Pair<>(Integer.valueOf(i11), Integer.valueOf(g10));
        } catch (NumberFormatException unused) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static String p(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        String[] supportedTypes;
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        } else if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        } else {
            if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
                return "audio/x-lg-flac";
            }
            if (str2.equals(MimeTypes.AUDIO_AC3) && "OMX.lge.ac3.decoder".equals(str)) {
                return "audio/lg-ac3";
            }
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0075, code lost:
        if (r3.equals("av01") == false) goto L11;
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> q(com.google.android.exoplayer2.v0 r6) {
        /*
            r0 = 0
            java.lang.String r1 = r6.f19154i
            r2 = 0
            if (r1 != 0) goto L7
            return r2
        L7:
            java.lang.String r3 = "\\."
            java.lang.String[] r1 = r1.split(r3)
            java.lang.String r3 = "video/dolby-vision"
            java.lang.String r4 = r6.f19157l
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L1e
            java.lang.String r6 = r6.f19154i
            android.util.Pair r6 = w(r6, r1)
            return r6
        L1e:
            r3 = r1[r0]
            r3.hashCode()
            r4 = -1
            int r5 = r3.hashCode()
            switch(r5) {
                case 3004662: goto L6f;
                case 3006243: goto L64;
                case 3006244: goto L59;
                case 3199032: goto L4e;
                case 3214780: goto L43;
                case 3356560: goto L38;
                case 3624515: goto L2d;
                default: goto L2b;
            }
        L2b:
            r0 = r4
            goto L78
        L2d:
            java.lang.String r0 = "vp09"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L36
            goto L2b
        L36:
            r0 = 6
            goto L78
        L38:
            java.lang.String r0 = "mp4a"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L41
            goto L2b
        L41:
            r0 = 5
            goto L78
        L43:
            java.lang.String r0 = "hvc1"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L4c
            goto L2b
        L4c:
            r0 = 4
            goto L78
        L4e:
            java.lang.String r0 = "hev1"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L57
            goto L2b
        L57:
            r0 = 3
            goto L78
        L59:
            java.lang.String r0 = "avc2"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L62
            goto L2b
        L62:
            r0 = 2
            goto L78
        L64:
            java.lang.String r0 = "avc1"
            boolean r0 = r3.equals(r0)
            if (r0 != 0) goto L6d
            goto L2b
        L6d:
            r0 = 1
            goto L78
        L6f:
            java.lang.String r5 = "av01"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L78
            goto L2b
        L78:
            switch(r0) {
                case 0: goto L98;
                case 1: goto L91;
                case 2: goto L91;
                case 3: goto L8a;
                case 4: goto L8a;
                case 5: goto L83;
                case 6: goto L7c;
                default: goto L7b;
            }
        L7b:
            return r2
        L7c:
            java.lang.String r6 = r6.f19154i
            android.util.Pair r6 = y(r6, r1)
            return r6
        L83:
            java.lang.String r6 = r6.f19154i
            android.util.Pair r6 = l(r6, r1)
            return r6
        L8a:
            java.lang.String r6 = r6.f19154i
            android.util.Pair r6 = x(r6, r1)
            return r6
        L91:
            java.lang.String r6 = r6.f19154i
            android.util.Pair r6 = o(r6, r1)
            return r6
        L98:
            java.lang.String r0 = r6.f19154i
            c7.c r6 = r6.f19169x
            android.util.Pair r6 = n(r0, r1, r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.q(com.google.android.exoplayer2.v0):android.util.Pair");
    }

    @Nullable
    public static k r(String str, boolean z10, boolean z11) throws DecoderQueryException {
        List<k> s10 = s(str, z10, z11);
        if (s10.isEmpty()) {
            return null;
        }
        return s10.get(0);
    }

    public static synchronized List<k> s(String str, boolean z10, boolean z11) throws DecoderQueryException {
        c dVar;
        synchronized (MediaCodecUtil.class) {
            try {
                b bVar = new b(str, z10, z11);
                HashMap<b, List<k>> hashMap = f17907b;
                List<k> list = hashMap.get(bVar);
                if (list != null) {
                    return list;
                }
                int i10 = s0.f2506a;
                if (i10 >= 21) {
                    dVar = new e(z10, z11);
                } else {
                    dVar = new d();
                }
                ArrayList<k> t10 = t(bVar, dVar);
                if (z10 && t10.isEmpty() && 21 <= i10 && i10 <= 23) {
                    t10 = t(bVar, new d());
                    if (!t10.isEmpty()) {
                        b7.q.i("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + t10.get(0).f17973a);
                    }
                }
                e(str, t10);
                ImmutableList u10 = ImmutableList.u(t10);
                hashMap.put(bVar, u10);
                return u10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:28|(4:(2:72|73)|53|(9:56|57|58|59|60|61|62|64|65)|9)|32|33|34|36|9) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008c, code lost:
        if (r1.f17910b == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b1, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0105 A[Catch: Exception -> 0x012e, TRY_ENTER, TryCatch #1 {Exception -> 0x012e, blocks: (B:3:0x0008, B:5:0x001b, B:61:0x0124, B:8:0x002d, B:11:0x0038, B:55:0x00fd, B:58:0x0105, B:60:0x010b, B:64:0x0130, B:65:0x0153), top: B:71:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0130 A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.k> t(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b r24, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c r25) throws com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.t(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$b, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$c):java.util.ArrayList");
    }

    @CheckResult
    public static List<k> u(List<k> list, final v0 v0Var) {
        ArrayList arrayList = new ArrayList(list);
        P(arrayList, new f() { // from class: com.google.android.exoplayer2.mediacodec.o
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                int L;
                L = MediaCodecUtil.L(v0.this, (k) obj);
                return L;
            }
        });
        return arrayList;
    }

    @Nullable
    public static k v() throws DecoderQueryException {
        return r(MimeTypes.AUDIO_RAW, false, false);
    }

    @Nullable
    private static Pair<Integer, Integer> w(String str, String[] strArr) {
        if (strArr.length < 3) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = f17906a.matcher(strArr[1]);
        if (!matcher.matches()) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        Integer k10 = k(group);
        if (k10 == null) {
            b7.q.i("MediaCodecUtil", "Unknown Dolby Vision profile string: " + group);
            return null;
        }
        String str2 = strArr[2];
        Integer j10 = j(str2);
        if (j10 == null) {
            b7.q.i("MediaCodecUtil", "Unknown Dolby Vision level string: " + str2);
            return null;
        }
        return new Pair<>(k10, j10);
    }

    @Nullable
    private static Pair<Integer, Integer> x(String str, String[] strArr) {
        if (strArr.length < 4) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i10 = 1;
        Matcher matcher = f17906a.matcher(strArr[1]);
        if (!matcher.matches()) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String group = matcher.group(1);
        if (!"1".equals(group)) {
            if ("2".equals(group)) {
                i10 = 2;
            } else {
                b7.q.i("MediaCodecUtil", "Unknown HEVC profile string: " + group);
                return null;
            }
        }
        String str2 = strArr[3];
        Integer z10 = z(str2);
        if (z10 == null) {
            b7.q.i("MediaCodecUtil", "Unknown HEVC level string: " + str2);
            return null;
        }
        return new Pair<>(Integer.valueOf(i10), z10);
    }

    @Nullable
    private static Pair<Integer, Integer> y(String str, String[] strArr) {
        if (strArr.length < 3) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int parseInt = Integer.parseInt(strArr[1]);
            int parseInt2 = Integer.parseInt(strArr[2]);
            int R = R(parseInt);
            if (R == -1) {
                b7.q.i("MediaCodecUtil", "Unknown VP9 profile: " + parseInt);
                return null;
            }
            int Q = Q(parseInt2);
            if (Q == -1) {
                b7.q.i("MediaCodecUtil", "Unknown VP9 level: " + parseInt2);
                return null;
            }
            return new Pair<>(Integer.valueOf(R), Integer.valueOf(Q));
        } catch (NumberFormatException unused) {
            b7.q.i("MediaCodecUtil", "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Integer z(@Nullable String str) {
        if (str == null) {
            return null;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    c10 = 0;
                    break;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    c10 = 1;
                    break;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    c10 = 2;
                    break;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    c10 = 3;
                    break;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    c10 = 4;
                    break;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    c10 = 5;
                    break;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    c10 = 6;
                    break;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    c10 = 7;
                    break;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    c10 = 11;
                    break;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    c10 = 14;
                    break;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    c10 = 15;
                    break;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    c10 = 16;
                    break;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    c10 = 17;
                    break;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    c10 = 19;
                    break;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    c10 = 20;
                    break;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    c10 = 21;
                    break;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    c10 = 22;
                    break;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    c10 = 23;
                    break;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    c10 = 24;
                    break;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    c10 = 25;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case '\b':
                return 64;
            case '\t':
                return 256;
            case '\n':
                return 2048;
            case 11:
                return 8192;
            case '\f':
                return 32768;
            case '\r':
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }
}
