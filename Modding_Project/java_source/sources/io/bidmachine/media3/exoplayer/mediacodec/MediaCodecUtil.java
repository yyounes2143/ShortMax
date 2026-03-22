package io.bidmachine.media3.exoplayer.mediacodec;

import android.annotation.SuppressLint;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import cn.m0;
import com.adjust.sdk.Constants;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import zm.u;
@SuppressLint({"InlinedApi"})
/* loaded from: classes8.dex */
public final class MediaCodecUtil {
    @GuardedBy("MediaCodecUtil.class")

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<b, List<j>> f56511a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static int f56512b = -1;

    /* loaded from: classes8.dex */
    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th2) {
            super("Failed to query underlying media codecs", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f56513a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f56514b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f56515c;

        public b(String str, boolean z10, boolean z11) {
            this.f56513a = str;
            this.f56514b = z10;
            this.f56515c = z11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            if (TextUtils.equals(this.f56513a, bVar.f56513a) && this.f56514b == bVar.f56514b && this.f56515c == bVar.f56515c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = (this.f56513a.hashCode() + 31) * 31;
            int i11 = 1237;
            if (this.f56514b) {
                i10 = 1231;
            } else {
                i10 = 1237;
            }
            int i12 = (hashCode + i10) * 31;
            if (this.f56515c) {
                i11 = 1231;
            }
            return i12 + i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public interface c {
        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i10);

        boolean secureDecodersExplicit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class d implements c {
        private d() {
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            if ("secure-playback".equals(str) && "video/avc".equals(str2)) {
                return true;
            }
            return false;
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i10) {
            return MediaCodecList.getCodecInfoAt(i10);
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final int f56516a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private MediaCodecInfo[] f56517b;

        public e(boolean z10, boolean z11, boolean z12) {
            int i10;
            if (!z10 && !z11 && !z12) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.f56516a = i10;
        }

        private void c() {
            if (this.f56517b == null) {
                this.f56517b = new MediaCodecList(this.f56516a).getCodecInfos();
            }
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            c();
            return this.f56517b.length;
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i10) {
            c();
            return this.f56517b[i10];
        }

        @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public interface f<T> {
        int a(T t10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int A(j jVar) {
        String str = jVar.f56575a;
        if (!str.startsWith("OMX.google") && !str.startsWith("c2.android")) {
            if (m0.f3614a < 26 && str.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                return -1;
            }
            return 0;
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int B(io.bidmachine.media3.common.a aVar, j jVar) {
        return jVar.n(aVar) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int C(j jVar) {
        int i10;
        if (jVar.f56583i) {
            i10 = 2;
        } else {
            i10 = 0;
        }
        return i10 + (!jVar.f56584j ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int D(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    private static <T> void E(List<T> list, final f<T> fVar) {
        Collections.sort(list, new Comparator() { // from class: io.bidmachine.media3.exoplayer.mediacodec.o
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int D;
                D = MediaCodecUtil.D(MediaCodecUtil.f.this, obj, obj2);
                return D;
            }
        });
    }

    private static void e(String str, List<j> list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (m0.f3614a < 26 && Build.DEVICE.equals("R9") && list.size() == 1 && list.get(0).f56575a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(j.D("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            E(list, new f() { // from class: io.bidmachine.media3.exoplayer.mediacodec.m
                @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.f
                public final int a(Object obj) {
                    int A;
                    A = MediaCodecUtil.A((j) obj);
                    return A;
                }
            });
        }
        if (m0.f3614a < 32 && list.size() > 1 && "OMX.qti.audio.decoder.flac".equals(list.get(0).f56575a)) {
            list.add(list.remove(0));
        }
    }

    @Nullable
    public static String f(io.bidmachine.media3.common.a aVar) {
        Pair<Integer, Integer> i10;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(aVar.f55174o)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if ("video/dolby-vision".equals(aVar.f55174o) && (i10 = i(aVar)) != null) {
            int intValue = ((Integer) i10.first).intValue();
            if (intValue == 16 || intValue == 256) {
                return "video/hevc";
            }
            if (intValue == 512) {
                return "video/avc";
            }
            if (intValue == 1024) {
                return com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
            }
        }
        if ("video/mv-hevc".equals(aVar.f55174o)) {
            return "video/hevc";
        }
        return null;
    }

    public static List<j> g(l lVar, io.bidmachine.media3.common.a aVar, boolean z10, boolean z11) throws DecoderQueryException {
        String f10 = f(aVar);
        if (f10 == null) {
            return ImmutableList.A();
        }
        return lVar.a(f10, z10, z11);
    }

    @Nullable
    private static String h(MediaCodecInfo mediaCodecInfo, String str, String str2) {
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
        } else if (str2.equals("video/mv-hevc")) {
            if ("c2.qti.mvhevc.decoder".equals(str) || "c2.qti.mvhevc.decoder.secure".equals(str)) {
                return "video/x-mvhevc";
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

    @Nullable
    @Deprecated
    public static Pair<Integer, Integer> i(io.bidmachine.media3.common.a aVar) {
        return cn.i.n(aVar);
    }

    @Nullable
    public static j j(String str, boolean z10, boolean z11) throws DecoderQueryException {
        List<j> k10 = k(str, z10, z11);
        if (k10.isEmpty()) {
            return null;
        }
        return k10.get(0);
    }

    public static synchronized List<j> k(String str, boolean z10, boolean z11) throws DecoderQueryException {
        synchronized (MediaCodecUtil.class) {
            try {
                b bVar = new b(str, z10, z11);
                HashMap<b, List<j>> hashMap = f56511a;
                List<j> list = hashMap.get(bVar);
                if (list != null) {
                    return list;
                }
                ArrayList<j> l10 = l(bVar, new e(z10, z11, str.equals("video/mv-hevc")));
                if (z10 && l10.isEmpty() && m0.f3614a <= 23) {
                    l10 = l(bVar, new d());
                    if (!l10.isEmpty()) {
                        cn.r.h("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + l10.get(0).f56575a);
                    }
                }
                e(str, l10);
                ImmutableList u10 = ImmutableList.u(l10);
                hashMap.put(bVar, u10);
                return u10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:28|(4:(2:72|73)|53|(9:56|57|58|59|60|61|62|64|65)|9)|32|33|34|36|9) */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008c, code lost:
        if (r1.f56514b == false) goto L32;
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
    private static java.util.ArrayList<io.bidmachine.media3.exoplayer.mediacodec.j> l(io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.b r24, io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.c r25) throws io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.l(io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$b, io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil$c):java.util.ArrayList");
    }

    public static List<j> m(l lVar, io.bidmachine.media3.common.a aVar, boolean z10, boolean z11) throws DecoderQueryException {
        List<j> a10 = lVar.a(aVar.f55174o, z10, z11);
        return ImmutableList.r().j(a10).j(g(lVar, aVar, z10, z11)).k();
    }

    @CheckResult
    public static List<j> n(List<j> list, final io.bidmachine.media3.common.a aVar) {
        ArrayList arrayList = new ArrayList(list);
        E(arrayList, new f() { // from class: io.bidmachine.media3.exoplayer.mediacodec.n
            @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                int B;
                B = MediaCodecUtil.B(io.bidmachine.media3.common.a.this, (j) obj);
                return B;
            }
        });
        return arrayList;
    }

    @CheckResult
    public static List<j> o(List<j> list) {
        ArrayList arrayList = new ArrayList(list);
        E(arrayList, new f() { // from class: io.bidmachine.media3.exoplayer.mediacodec.p
            @Override // io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                int C;
                C = MediaCodecUtil.C((j) obj);
                return C;
            }
        });
        return ImmutableList.u(arrayList);
    }

    @Nullable
    public static j p() throws DecoderQueryException {
        return j(MimeTypes.AUDIO_RAW, false, false);
    }

    @Nullable
    public static Pair<Integer, Integer> q(io.bidmachine.media3.common.a aVar) {
        String h10 = dn.g.h(aVar.f55177r);
        if (h10 == null) {
            return null;
        }
        return cn.i.q(h10, m0.m1(h10.trim(), "\\."), aVar.C);
    }

    private static boolean r(MediaCodecInfo mediaCodecInfo) {
        if (m0.f3614a >= 29 && s(mediaCodecInfo)) {
            return true;
        }
        return false;
    }

    @RequiresApi(29)
    private static boolean s(MediaCodecInfo mediaCodecInfo) {
        boolean isAlias;
        isAlias = mediaCodecInfo.isAlias();
        return isAlias;
    }

    private static boolean t(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = m0.f3614a;
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && Constants.REFERRER_API_SAMSUNG.equals(Build.MANUFACTURER))) {
            String str3 = Build.DEVICE;
            if (str3.startsWith("zeroflte") || str3.startsWith("zerolte") || str3.startsWith("zenlte") || "SC-05G".equals(str3) || "marinelteatt".equals(str3) || "404SC".equals(str3) || "SC-04G".equals(str3) || "SCV31".equals(str3)) {
                return false;
            }
        }
        if (i10 <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) {
            return false;
        }
        return true;
    }

    private static boolean u(MediaCodecInfo mediaCodecInfo, String str) {
        if (m0.f3614a >= 29) {
            return v(mediaCodecInfo);
        }
        return !w(mediaCodecInfo, str);
    }

    @RequiresApi(29)
    private static boolean v(MediaCodecInfo mediaCodecInfo) {
        boolean isHardwareAccelerated;
        isHardwareAccelerated = mediaCodecInfo.isHardwareAccelerated();
        return isHardwareAccelerated;
    }

    private static boolean w(MediaCodecInfo mediaCodecInfo, String str) {
        if (m0.f3614a >= 29) {
            return x(mediaCodecInfo);
        }
        if (u.o(str)) {
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
    private static boolean x(MediaCodecInfo mediaCodecInfo) {
        boolean isSoftwareOnly;
        isSoftwareOnly = mediaCodecInfo.isSoftwareOnly();
        return isSoftwareOnly;
    }

    private static boolean y(MediaCodecInfo mediaCodecInfo) {
        if (m0.f3614a >= 29) {
            return z(mediaCodecInfo);
        }
        String e10 = h7.a.e(mediaCodecInfo.getName());
        if (!e10.startsWith("omx.google.") && !e10.startsWith("c2.android.") && !e10.startsWith("c2.google.")) {
            return true;
        }
        return false;
    }

    @RequiresApi(29)
    private static boolean z(MediaCodecInfo mediaCodecInfo) {
        boolean isVendor;
        isVendor = mediaCodecInfo.isVendor();
        return isVendor;
    }
}
