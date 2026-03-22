package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import b7.s0;
import b7.u;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.v0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import java.util.List;
/* compiled from: MediaCodecInfo.java */
/* loaded from: classes4.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final String f17973a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17974b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17975c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f17976d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f17977e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f17978f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f17979g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f17980h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f17981i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f17982j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f17983k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecInfo.java */
    @RequiresApi(29)
    /* loaded from: classes4.dex */
    public static final class a {
        @DoNotInline
        public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
            List supportedPerformancePoints;
            boolean covers;
            supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
                return 0;
            }
            f6.d.a();
            MediaCodecInfo.VideoCapabilities.PerformancePoint a10 = f6.c.a(i10, i11, (int) d10);
            for (int i12 = 0; i12 < supportedPerformancePoints.size(); i12++) {
                covers = f6.f.a(supportedPerformancePoints.get(i12)).covers(a10);
                if (covers) {
                    return 2;
                }
            }
            return 1;
        }
    }

    @VisibleForTesting
    k(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f17973a = (String) b7.a.e(str);
        this.f17974b = str2;
        this.f17975c = str3;
        this.f17976d = codecCapabilities;
        this.f17980h = z10;
        this.f17981i = z11;
        this.f17982j = z12;
        this.f17977e = z13;
        this.f17978f = z14;
        this.f17979g = z15;
        this.f17983k = u.o(str2);
    }

    private static boolean A(String str, int i10) {
        if ("video/hevc".equals(str) && 2 == i10) {
            String str2 = s0.f2507b;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static final boolean B(String str) {
        if ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(s0.f2507b)) {
            return false;
        }
        return true;
    }

    public static k C(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15;
        boolean z16;
        boolean z17;
        if (!z13 && codecCapabilities != null && h(codecCapabilities) && !z(str)) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (codecCapabilities != null && s(codecCapabilities)) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (!z14 && (codecCapabilities == null || !q(codecCapabilities))) {
            z17 = false;
        } else {
            z17 = true;
        }
        return new k(str, str2, str3, codecCapabilities, z10, z11, z12, z15, z16, z17);
    }

    private static int a(String str, String str2, int i10) {
        int i11;
        if (i10 <= 1 && ((s0.f2506a < 26 || i10 <= 0) && !MimeTypes.AUDIO_MPEG.equals(str2) && !MimeTypes.AUDIO_AMR_NB.equals(str2) && !MimeTypes.AUDIO_AMR_WB.equals(str2) && !MimeTypes.AUDIO_AAC.equals(str2) && !MimeTypes.AUDIO_VORBIS.equals(str2) && !MimeTypes.AUDIO_OPUS.equals(str2) && !MimeTypes.AUDIO_RAW.equals(str2) && !MimeTypes.AUDIO_FLAC.equals(str2) && !MimeTypes.AUDIO_ALAW.equals(str2) && !MimeTypes.AUDIO_MLAW.equals(str2) && !MimeTypes.AUDIO_MSGSM.equals(str2))) {
            if (MimeTypes.AUDIO_AC3.equals(str2)) {
                i11 = 6;
            } else if (MimeTypes.AUDIO_E_AC3.equals(str2)) {
                i11 = 16;
            } else {
                i11 = 30;
            }
            b7.q.i(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
            return i11;
        }
        return i10;
    }

    @RequiresApi(21)
    private static Point c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(s0.l(i10, widthAlignment) * widthAlignment, s0.l(i11, heightAlignment) * heightAlignment);
    }

    @RequiresApi(21)
    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point c10 = c(videoCapabilities, i10, i11);
        int i12 = c10.x;
        int i13 = c10.y;
        if (d10 != -1.0d && d10 >= 1.0d) {
            return videoCapabilities.areSizeAndRateSupported(i12, i13, Math.floor(d10));
        }
        return videoCapabilities.isSizeSupported(i12, i13);
    }

    private static MediaCodecInfo.CodecProfileLevel[] f(@Nullable MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int i10;
        int i11;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
            i10 = videoCapabilities.getBitrateRange().getUpper().intValue();
        } else {
            i10 = 0;
        }
        if (i10 >= 180000000) {
            i11 = 1024;
        } else if (i10 >= 120000000) {
            i11 = 512;
        } else if (i10 >= 60000000) {
            i11 = 256;
        } else if (i10 >= 30000000) {
            i11 = 128;
        } else if (i10 >= 18000000) {
            i11 = 64;
        } else if (i10 >= 12000000) {
            i11 = 32;
        } else if (i10 >= 7200000) {
            i11 = 16;
        } else if (i10 >= 3600000) {
            i11 = 8;
        } else if (i10 >= 1800000) {
            i11 = 4;
        } else if (i10 >= 800000) {
            i11 = 2;
        } else {
            i11 = 1;
        }
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i11;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    private static boolean h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (s0.f2506a >= 19 && i(codecCapabilities)) {
            return true;
        }
        return false;
    }

    @RequiresApi(19)
    private static boolean i(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private boolean l(v0 v0Var) {
        Pair<Integer, Integer> q10;
        if (v0Var.f19154i == null || (q10 = MediaCodecUtil.q(v0Var)) == null) {
            return true;
        }
        int intValue = ((Integer) q10.first).intValue();
        int intValue2 = ((Integer) q10.second).intValue();
        if ("video/dolby-vision".equals(v0Var.f19157l)) {
            if ("video/avc".equals(this.f17974b)) {
                intValue = 8;
            } else {
                intValue = "video/hevc".equals(this.f17974b) ? 2 : 2;
            }
            intValue2 = 0;
        }
        if (!this.f17983k && intValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] g10 = g();
        if (s0.f2506a <= 23 && MimeTypes.VIDEO_VP9.equals(this.f17974b) && g10.length == 0) {
            g10 = f(this.f17976d);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g10) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2 && !A(this.f17974b, intValue)) {
                return true;
            }
        }
        w("codec.profileLevel, " + v0Var.f19154i + ", " + this.f17975c);
        return false;
    }

    private boolean o(v0 v0Var) {
        if (!this.f17974b.equals(v0Var.f19157l) && !this.f17974b.equals(MediaCodecUtil.m(v0Var))) {
            return false;
        }
        return true;
    }

    private static boolean q(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (s0.f2506a >= 21 && r(codecCapabilities)) {
            return true;
        }
        return false;
    }

    @RequiresApi(21)
    private static boolean r(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (s0.f2506a >= 21 && t(codecCapabilities)) {
            return true;
        }
        return false;
    }

    @RequiresApi(21)
    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void v(String str) {
        b7.q.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.f17973a + ", " + this.f17974b + "] [" + s0.f2510e + "]");
    }

    private void w(String str) {
        b7.q.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.f17973a + ", " + this.f17974b + "] [" + s0.f2510e + "]");
    }

    private static boolean x(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static boolean y(String str) {
        if (s0.f2509d.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str)) {
            return true;
        }
        return false;
    }

    private static boolean z(String str) {
        if (s0.f2506a <= 22) {
            String str2 = s0.f2509d;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    @RequiresApi(21)
    public Point b(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f17976d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return c(videoCapabilities, i10, i11);
    }

    public r5.g e(v0 v0Var, v0 v0Var2) {
        int i10;
        int i11;
        if (!s0.c(v0Var.f19157l, v0Var2.f19157l)) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        if (this.f17983k) {
            if (v0Var.f19165t != v0Var2.f19165t) {
                i10 |= 1024;
            }
            if (!this.f17977e && (v0Var.f19162q != v0Var2.f19162q || v0Var.f19163r != v0Var2.f19163r)) {
                i10 |= 512;
            }
            if (!s0.c(v0Var.f19169x, v0Var2.f19169x)) {
                i10 |= 2048;
            }
            if (y(this.f17973a) && !v0Var.g(v0Var2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                String str = this.f17973a;
                if (v0Var.g(v0Var2)) {
                    i11 = 3;
                } else {
                    i11 = 2;
                }
                return new r5.g(str, v0Var, v0Var2, i11, 0);
            }
        } else {
            if (v0Var.f19170y != v0Var2.f19170y) {
                i10 |= 4096;
            }
            if (v0Var.f19171z != v0Var2.f19171z) {
                i10 |= 8192;
            }
            if (v0Var.A != v0Var2.A) {
                i10 |= 16384;
            }
            if (i10 == 0 && MimeTypes.AUDIO_AAC.equals(this.f17974b)) {
                Pair<Integer, Integer> q10 = MediaCodecUtil.q(v0Var);
                Pair<Integer, Integer> q11 = MediaCodecUtil.q(v0Var2);
                if (q10 != null && q11 != null) {
                    int intValue = ((Integer) q10.first).intValue();
                    int intValue2 = ((Integer) q11.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new r5.g(this.f17973a, v0Var, v0Var2, 3, 0);
                    }
                }
            }
            if (!v0Var.g(v0Var2)) {
                i10 |= 32;
            }
            if (x(this.f17974b)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new r5.g(this.f17973a, v0Var, v0Var2, 1, 0);
            }
        }
        return new r5.g(this.f17973a, v0Var, v0Var2, 0, i10);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f17976d;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return codecProfileLevelArr;
    }

    @RequiresApi(21)
    public boolean j(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f17976d;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        } else if (a(this.f17973a, this.f17974b, audioCapabilities.getMaxInputChannelCount()) < i10) {
            w("channelCount.support, " + i10);
            return false;
        } else {
            return true;
        }
    }

    @RequiresApi(21)
    public boolean k(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f17976d;
        if (codecCapabilities == null) {
            w("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("sampleRate.aCaps");
            return false;
        } else if (!audioCapabilities.isSampleRateSupported(i10)) {
            w("sampleRate.support, " + i10);
            return false;
        } else {
            return true;
        }
    }

    public boolean m(v0 v0Var) throws MediaCodecUtil.DecoderQueryException {
        int i10;
        boolean z10 = false;
        if (!o(v0Var) || !l(v0Var)) {
            return false;
        }
        if (this.f17983k) {
            int i11 = v0Var.f19162q;
            if (i11 <= 0 || (i10 = v0Var.f19163r) <= 0) {
                return true;
            }
            if (s0.f2506a >= 21) {
                return u(i11, i10, v0Var.f19164s);
            }
            if (i11 * i10 <= MediaCodecUtil.N()) {
                z10 = true;
            }
            if (!z10) {
                w("legacyFrameSize, " + v0Var.f19162q + TextureRenderKeys.KEY_IS_X + v0Var.f19163r);
            }
            return z10;
        }
        if (s0.f2506a >= 21) {
            int i12 = v0Var.f19171z;
            if (i12 != -1 && !k(i12)) {
                return false;
            }
            int i13 = v0Var.f19170y;
            if (i13 != -1 && !j(i13)) {
                return false;
            }
        }
        return true;
    }

    public boolean n() {
        if (s0.f2506a >= 29 && MimeTypes.VIDEO_VP9.equals(this.f17974b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean p(v0 v0Var) {
        if (this.f17983k) {
            return this.f17977e;
        }
        Pair<Integer, Integer> q10 = MediaCodecUtil.q(v0Var);
        if (q10 != null && ((Integer) q10.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.f17973a;
    }

    @RequiresApi(21)
    public boolean u(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f17976d;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        }
        if (s0.f2506a >= 29) {
            int a10 = a.a(videoCapabilities, i10, i11, d10);
            if (a10 == 2) {
                return true;
            }
            if (a10 == 1) {
                w("sizeAndRate.cover, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
                return false;
            }
        }
        if (!d(videoCapabilities, i10, i11, d10)) {
            if (i10 < i11 && B(this.f17973a) && d(videoCapabilities, i11, i10, d10)) {
                v("sizeAndRate.rotated, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
            } else {
                w("sizeAndRate.support, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
                return false;
            }
        }
        return true;
    }
}
