package io.bidmachine.media3.exoplayer.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.Objects;
import zm.u;
/* compiled from: MediaCodecInfo.java */
/* loaded from: classes8.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public final String f56575a;

    /* renamed from: b  reason: collision with root package name */
    public final String f56576b;

    /* renamed from: c  reason: collision with root package name */
    public final String f56577c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final MediaCodecInfo.CodecCapabilities f56578d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f56579e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f56580f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f56581g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f56582h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f56583i;

    /* renamed from: j  reason: collision with root package name */
    public final boolean f56584j;

    /* renamed from: k  reason: collision with root package name */
    public final boolean f56585k;

    /* renamed from: l  reason: collision with root package name */
    private final boolean f56586l;

    @VisibleForTesting
    j(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        this.f56575a = (String) cn.a.e(str);
        this.f56576b = str2;
        this.f56577c = str3;
        this.f56578d = codecCapabilities;
        this.f56582h = z10;
        this.f56583i = z11;
        this.f56584j = z12;
        this.f56579e = z13;
        this.f56580f = z14;
        this.f56581g = z15;
        this.f56585k = z16;
        this.f56586l = u.t(str2);
    }

    private static boolean A(String str) {
        if (m0.f3614a <= 22) {
            String str2 = Build.MODEL;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    private static boolean B(String str, int i10) {
        if ("video/hevc".equals(str) && 2 == i10) {
            String str2 = Build.DEVICE;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean C(String str) {
        if ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(Build.DEVICE)) {
            return false;
        }
        return true;
    }

    public static j D(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15;
        boolean z16;
        boolean z17;
        if (!z13 && codecCapabilities != null && h(codecCapabilities) && !A(str)) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (codecCapabilities != null && t(codecCapabilities)) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (!z14 && (codecCapabilities == null || !s(codecCapabilities))) {
            z17 = false;
        } else {
            z17 = true;
        }
        return new j(str, str2, str3, codecCapabilities, z10, z11, z12, z15, z16, z17, m(codecCapabilities));
    }

    private static int a(String str, String str2, int i10) {
        int i11;
        if (i10 <= 1 && ((m0.f3614a < 26 || i10 <= 0) && !MimeTypes.AUDIO_MPEG.equals(str2) && !MimeTypes.AUDIO_AMR_NB.equals(str2) && !MimeTypes.AUDIO_AMR_WB.equals(str2) && !MimeTypes.AUDIO_AAC.equals(str2) && !MimeTypes.AUDIO_VORBIS.equals(str2) && !MimeTypes.AUDIO_OPUS.equals(str2) && !MimeTypes.AUDIO_RAW.equals(str2) && !MimeTypes.AUDIO_FLAC.equals(str2) && !MimeTypes.AUDIO_ALAW.equals(str2) && !MimeTypes.AUDIO_MLAW.equals(str2) && !MimeTypes.AUDIO_MSGSM.equals(str2))) {
            if (MimeTypes.AUDIO_AC3.equals(str2)) {
                i11 = 6;
            } else if (MimeTypes.AUDIO_E_AC3.equals(str2)) {
                i11 = 16;
            } else {
                i11 = 30;
            }
            cn.r.h(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
            return i11;
        }
        return i10;
    }

    private static Point b(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(m0.k(i10, widthAlignment) * widthAlignment, m0.k(i11, heightAlignment) * heightAlignment);
    }

    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        Point b10 = b(videoCapabilities, i10, i11);
        int i12 = b10.x;
        int i13 = b10.y;
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
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean k(io.bidmachine.media3.common.a r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.mediacodec.j.k(io.bidmachine.media3.common.a, boolean):boolean");
    }

    private boolean l(io.bidmachine.media3.common.a aVar) {
        if (Objects.equals(aVar.f55174o, MimeTypes.AUDIO_FLAC) && aVar.G == 22 && m0.f3614a < 34 && this.f56575a.equals("c2.android.flac.decoder")) {
            return false;
        }
        return true;
    }

    private static boolean m(@Nullable MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if (m0.f3614a >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface") && !z()) {
            return true;
        }
        return false;
    }

    private boolean q(io.bidmachine.media3.common.a aVar) {
        if (!this.f56576b.equals(aVar.f55174o) && !this.f56576b.equals(MediaCodecUtil.f(aVar))) {
            return false;
        }
        return true;
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void v(String str) {
        cn.r.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "AssumedSupport [" + str + "] [" + this.f56575a + ", " + this.f56576b + "] [" + m0.f3618e + "]");
    }

    private void w(String str) {
        cn.r.b(com.mbridge.msdk.playercommon.exoplayer2.mediacodec.MediaCodecInfo.TAG, "NoSupport [" + str + "] [" + this.f56575a + ", " + this.f56576b + "] [" + m0.f3618e + "]");
    }

    private static boolean x(String str) {
        return MimeTypes.AUDIO_OPUS.equals(str);
    }

    private static boolean y(String str) {
        if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str)) {
            return true;
        }
        return false;
    }

    private static boolean z() {
        String str = Build.MANUFACTURER;
        if (!str.equals("Xiaomi") && !str.equals("OPPO")) {
            return false;
        }
        return true;
    }

    @Nullable
    public Point c(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f56578d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return b(videoCapabilities, i10, i11);
    }

    public gn.c e(io.bidmachine.media3.common.a aVar, io.bidmachine.media3.common.a aVar2) {
        int i10;
        int i11;
        if (!Objects.equals(aVar.f55174o, aVar2.f55174o)) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        if (this.f56586l) {
            if (aVar.f55184y != aVar2.f55184y) {
                i10 |= 1024;
            }
            if (!this.f56579e && (aVar.f55181v != aVar2.f55181v || aVar.f55182w != aVar2.f55182w)) {
                i10 |= 512;
            }
            if ((!zm.g.h(aVar.C) || !zm.g.h(aVar2.C)) && !Objects.equals(aVar.C, aVar2.C)) {
                i10 |= 2048;
            }
            if (y(this.f56575a) && !aVar.f(aVar2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                String str = this.f56575a;
                if (aVar.f(aVar2)) {
                    i11 = 3;
                } else {
                    i11 = 2;
                }
                return new gn.c(str, aVar, aVar2, i11, 0);
            }
        } else {
            if (aVar.E != aVar2.E) {
                i10 |= 4096;
            }
            if (aVar.F != aVar2.F) {
                i10 |= 8192;
            }
            if (aVar.G != aVar2.G) {
                i10 |= 16384;
            }
            if (i10 == 0 && MimeTypes.AUDIO_AAC.equals(this.f56576b)) {
                Pair<Integer, Integer> i12 = MediaCodecUtil.i(aVar);
                Pair<Integer, Integer> i13 = MediaCodecUtil.i(aVar2);
                if (i12 != null && i13 != null) {
                    int intValue = ((Integer) i12.first).intValue();
                    int intValue2 = ((Integer) i13.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new gn.c(this.f56575a, aVar, aVar2, 3, 0);
                    }
                }
            }
            if (!aVar.f(aVar2)) {
                i10 |= 32;
            }
            if (x(this.f56576b)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new gn.c(this.f56575a, aVar, aVar2, 1, 0);
            }
        }
        return new gn.c(this.f56575a, aVar, aVar2, 0, i10);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f56578d;
        if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
            return new MediaCodecInfo.CodecProfileLevel[0];
        }
        return codecProfileLevelArr;
    }

    public boolean i(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f56578d;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        } else if (a(this.f56575a, this.f56576b, audioCapabilities.getMaxInputChannelCount()) < i10) {
            w("channelCount.support, " + i10);
            return false;
        } else {
            return true;
        }
    }

    public boolean j(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f56578d;
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

    public boolean n(io.bidmachine.media3.common.a aVar) {
        if (!q(aVar) || !k(aVar, false) || !l(aVar)) {
            return false;
        }
        return true;
    }

    public boolean o(io.bidmachine.media3.common.a aVar) throws MediaCodecUtil.DecoderQueryException {
        int i10;
        if (!q(aVar) || !k(aVar, true) || !l(aVar)) {
            return false;
        }
        if (this.f56586l) {
            int i11 = aVar.f55181v;
            if (i11 <= 0 || (i10 = aVar.f55182w) <= 0) {
                return true;
            }
            return u(i11, i10, aVar.f55183x);
        }
        int i12 = aVar.F;
        if (i12 != -1 && !j(i12)) {
            return false;
        }
        int i13 = aVar.E;
        if (i13 != -1 && !i(i13)) {
            return false;
        }
        return true;
    }

    public boolean p() {
        if (m0.f3614a >= 29 && MimeTypes.VIDEO_VP9.equals(this.f56576b)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean r(io.bidmachine.media3.common.a aVar) {
        if (this.f56586l) {
            return this.f56579e;
        }
        Pair<Integer, Integer> i10 = MediaCodecUtil.i(aVar);
        if (i10 != null && ((Integer) i10.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    public String toString() {
        return this.f56575a;
    }

    public boolean u(int i10, int i11, double d10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f56578d;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        }
        if (m0.f3614a >= 29) {
            int c10 = k.c(videoCapabilities, i10, i11, d10);
            if (c10 == 2) {
                return true;
            }
            if (c10 == 1) {
                w("sizeAndRate.cover, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
                return false;
            }
        }
        if (!d(videoCapabilities, i10, i11, d10)) {
            if (i10 < i11 && C(this.f56575a) && d(videoCapabilities, i11, i10, d10)) {
                v("sizeAndRate.rotated, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
            } else {
                w("sizeAndRate.support, " + i10 + TextureRenderKeys.KEY_IS_X + i11 + "@" + d10);
                return false;
            }
        }
        return true;
    }
}
