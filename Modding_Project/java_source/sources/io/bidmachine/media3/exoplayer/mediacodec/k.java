package io.bidmachine.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import androidx.annotation.RequiresApi;
import cn.m0;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MediaCodecPerformancePointCoverageProvider.java */
/* loaded from: classes8.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f56587a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaCodecPerformancePointCoverageProvider.java */
    @RequiresApi(29)
    /* loaded from: classes8.dex */
    public static final class a {
        public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
            List supportedPerformancePoints;
            supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
                return 0;
            }
            f6.d.a();
            int c10 = c(supportedPerformancePoints, f6.c.a(i10, i11, (int) d10));
            if (c10 == 1 && k.f56587a == null) {
                Boolean unused = k.f56587a = Boolean.valueOf(d());
                if (k.f56587a.booleanValue()) {
                    return 0;
                }
            }
            return c10;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
            r2 = r4.get(r1).f56578d.getVideoCapabilities().getSupportedPerformancePoints();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static int b(boolean r4) {
            /*
                r0 = 0
                io.bidmachine.media3.common.a$b r1 = new io.bidmachine.media3.common.a$b     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                r1.<init>()     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                java.lang.String r2 = "video/avc"
                io.bidmachine.media3.common.a$b r1 = r1.u0(r2)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                io.bidmachine.media3.common.a r1 = r1.N()     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                java.lang.String r2 = r1.f55174o     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                if (r2 == 0) goto L66
                io.bidmachine.media3.exoplayer.mediacodec.l r2 = io.bidmachine.media3.exoplayer.mediacodec.l.f56588a     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                java.util.List r4 = io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.m(r2, r1, r4, r0)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                r1 = r0
            L1b:
                int r2 = r4.size()     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                if (r1 >= r2) goto L66
                java.lang.Object r2 = r4.get(r1)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                io.bidmachine.media3.exoplayer.mediacodec.j r2 = (io.bidmachine.media3.exoplayer.mediacodec.j) r2     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                android.media.MediaCodecInfo$CodecCapabilities r2 = r2.f56578d     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                if (r2 == 0) goto L63
                java.lang.Object r2 = r4.get(r1)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                io.bidmachine.media3.exoplayer.mediacodec.j r2 = (io.bidmachine.media3.exoplayer.mediacodec.j) r2     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                android.media.MediaCodecInfo$CodecCapabilities r2 = r2.f56578d     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                android.media.MediaCodecInfo$VideoCapabilities r2 = r2.getVideoCapabilities()     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                if (r2 == 0) goto L63
                java.lang.Object r2 = r4.get(r1)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                io.bidmachine.media3.exoplayer.mediacodec.j r2 = (io.bidmachine.media3.exoplayer.mediacodec.j) r2     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                android.media.MediaCodecInfo$CodecCapabilities r2 = r2.f56578d     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                android.media.MediaCodecInfo$VideoCapabilities r2 = r2.getVideoCapabilities()     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                java.util.List r2 = f6.e.a(r2)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                if (r2 == 0) goto L63
                boolean r3 = r2.isEmpty()     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                if (r3 != 0) goto L63
                f6.d.a()     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                r4 = 720(0x2d0, float:1.009E-42)
                r1 = 60
                r3 = 1280(0x500, float:1.794E-42)
                android.media.MediaCodecInfo$VideoCapabilities$PerformancePoint r4 = f6.c.a(r3, r4, r1)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                int r4 = c(r2, r4)     // Catch: io.bidmachine.media3.exoplayer.mediacodec.MediaCodecUtil.DecoderQueryException -> L66
                return r4
            L63:
                int r1 = r1 + 1
                goto L1b
            L66:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.mediacodec.k.a.b(boolean):int");
        }

        private static int c(List<MediaCodecInfo.VideoCapabilities.PerformancePoint> list, MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint) {
            boolean covers;
            for (int i10 = 0; i10 < list.size(); i10++) {
                covers = f6.f.a(list.get(i10)).covers(performancePoint);
                if (covers) {
                    return 2;
                }
            }
            return 1;
        }

        private static boolean d() {
            if (m0.f3614a >= 35) {
                return false;
            }
            int b10 = b(false);
            int b11 = b(true);
            if (b10 == 0) {
                return true;
            }
            if (b11 == 0) {
                if (b10 == 2) {
                    return false;
                }
                return true;
            } else if (b10 == 2 && b11 == 2) {
                return false;
            } else {
                return true;
            }
        }
    }

    public static int c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        if (m0.f3614a >= 29) {
            Boolean bool = f56587a;
            if (bool == null || !bool.booleanValue()) {
                return a.a(videoCapabilities, i10, i11, d10);
            }
            return 0;
        }
        return 0;
    }
}
