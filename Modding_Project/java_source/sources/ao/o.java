package ao;

import androidx.annotation.Nullable;
import com.google.android.material.internal.ViewUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import com.tencent.wcdb.FileUtils;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.ParserException;
import io.bidmachine.media3.common.a;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: DtsUtil.java */
/* loaded from: classes8.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f1899a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f1900b = {-1, 8000, 16000, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f1901c = {64, 112, 128, 192, 224, 256, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, FileUtils.S_IRWXU, 512, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, ViewUtils.EDGE_TO_EDGE_FLAGS, 896, 1024, 1152, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f1902d = {8000, 16000, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f1903e = {5, 8, 10, 12};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f1904f = {6, 9, 12, 15};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f1905g = {2, 4, 6, 8};

    /* renamed from: h  reason: collision with root package name */
    private static final int[] f1906h = {9, 11, 13, 16};

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f1907i = {5, 8, 10, 12};

    /* compiled from: DtsUtil.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f1908a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1909b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1910c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1911d;

        /* renamed from: e  reason: collision with root package name */
        public final long f1912e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1913f;

        private b(String str, int i10, int i11, int i12, long j10, int i13) {
            this.f1908a = str;
            this.f1910c = i10;
            this.f1909b = i11;
            this.f1911d = i12;
            this.f1912e = j10;
            this.f1913f = i13;
        }
    }

    private static void a(byte[] bArr, int i10) throws ParserException {
        int i11 = i10 - 2;
        if (((bArr[i10 - 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i11] << 8) & 65535)) == cn.m0.v(bArr, 0, i11, 65535)) {
            return;
        }
        throw ParserException.b("CRC check failed", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int b(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 7
            r4 = 6
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4f
            r2 = -1
            if (r1 == r2) goto L3e
            r2 = 31
            if (r1 == r2) goto L26
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r3]
        L20:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
            goto L5e
        L26:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            r7 = r7[r1]
        L36:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = r5
            goto L5e
        L3e:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            r7 = r7[r1]
            goto L36
        L4f:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r4]
            goto L20
        L5e:
            if (r0 == 0) goto L64
            int r7 = r7 * 16
            int r7 = r7 / 14
        L64:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: ao.o.b(byte[]):int");
    }

    public static int c(int i10) {
        if (i10 != 2147385345 && i10 != -25230976 && i10 != 536864768 && i10 != -14745368) {
            if (i10 != 1683496997 && i10 != 622876772) {
                if (i10 != 1078008818 && i10 != -233094848) {
                    if (i10 != 1908687592 && i10 != -398277519) {
                        return 0;
                    }
                    return 4;
                }
                return 3;
            }
            return 2;
        }
        return 1;
    }

    private static cn.a0 d(byte[] bArr) {
        byte b10 = bArr[0];
        if (b10 != Byte.MAX_VALUE && b10 != 100 && b10 != 64 && b10 != 113) {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            if (e(copyOf)) {
                for (int i10 = 0; i10 < copyOf.length - 1; i10 += 2) {
                    byte b11 = copyOf[i10];
                    int i11 = i10 + 1;
                    copyOf[i10] = copyOf[i11];
                    copyOf[i11] = b11;
                }
            }
            cn.a0 a0Var = new cn.a0(copyOf);
            if (copyOf[0] == 31) {
                cn.a0 a0Var2 = new cn.a0(copyOf);
                while (a0Var2.b() >= 16) {
                    a0Var2.r(2);
                    a0Var.f(a0Var2.h(14), 14);
                }
            }
            a0Var.n(copyOf);
            return a0Var;
        }
        return new cn.a0(bArr);
    }

    private static boolean e(byte[] bArr) {
        byte b10 = bArr[0];
        if (b10 != -2 && b10 != -1 && b10 != 37 && b10 != -14 && b10 != -24) {
            return false;
        }
        return true;
    }

    public static int f(ByteBuffer byteBuffer) {
        int i10;
        byte b10;
        int i11;
        byte b11;
        if (byteBuffer.getInt(0) != -233094848 && byteBuffer.getInt(0) != -398277519) {
            if (byteBuffer.getInt(0) == 622876772) {
                return 4096;
            }
            int position = byteBuffer.position();
            byte b12 = byteBuffer.get(position);
            if (b12 != -2) {
                if (b12 != -1) {
                    if (b12 != 31) {
                        i10 = (byteBuffer.get(position + 4) & 1) << 6;
                        b10 = byteBuffer.get(position + 5);
                    } else {
                        i10 = (byteBuffer.get(position + 5) & 7) << 4;
                        b11 = byteBuffer.get(position + 6);
                    }
                } else {
                    i10 = (byteBuffer.get(position + 4) & 7) << 4;
                    b11 = byteBuffer.get(position + 7);
                }
                i11 = b11 & 60;
                return (((i11 >> 2) | i10) + 1) * 32;
            }
            i10 = (byteBuffer.get(position + 5) & 1) << 6;
            b10 = byteBuffer.get(position + 4);
            i11 = b10 & 252;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        return 1024;
    }

    public static int g(byte[] bArr) {
        int i10;
        byte b10;
        int i11;
        byte b11;
        byte b12 = bArr[0];
        if (b12 != -2) {
            if (b12 != -1) {
                if (b12 != 31) {
                    i10 = (bArr[4] & 1) << 6;
                    b10 = bArr[5];
                } else {
                    i10 = (bArr[5] & 7) << 4;
                    b11 = bArr[6];
                }
            } else {
                i10 = (bArr[4] & 7) << 4;
                b11 = bArr[7];
            }
            i11 = b11 & 60;
            return (((i11 >> 2) | i10) + 1) * 32;
        }
        i10 = (bArr[5] & 1) << 6;
        b10 = bArr[4];
        i11 = b10 & 252;
        return (((i11 >> 2) | i10) + 1) * 32;
    }

    public static io.bidmachine.media3.common.a h(byte[] bArr, @Nullable String str, @Nullable String str2, int i10, String str3, @Nullable DrmInitData drmInitData) {
        int i11;
        int i12;
        cn.a0 d10 = d(bArr);
        d10.r(60);
        int i13 = f1899a[d10.h(6)];
        int i14 = f1900b[d10.h(4)];
        int h10 = d10.h(5);
        int[] iArr = f1901c;
        if (h10 >= iArr.length) {
            i11 = -1;
        } else {
            i11 = (iArr[h10] * 1000) / 2;
        }
        d10.r(10);
        if (d10.h(2) > 0) {
            i12 = 1;
        } else {
            i12 = 0;
        }
        return new a.b().f0(str).U(str3).u0(MimeTypes.AUDIO_DTS).Q(i11).R(i13 + i12).v0(i14).Y(drmInitData).j0(str2).s0(i10).N();
    }

    public static b i(byte[] bArr) throws ParserException {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long j10;
        int i15;
        cn.a0 d10 = d(bArr);
        d10.r(40);
        int h10 = d10.h(2);
        if (!d10.g()) {
            i10 = 16;
            i11 = 8;
        } else {
            i10 = 20;
            i11 = 12;
        }
        d10.r(i11);
        int h11 = d10.h(i10) + 1;
        boolean g10 = d10.g();
        int i16 = 0;
        if (g10) {
            i12 = d10.h(2);
            int h12 = (d10.h(3) + 1) * 512;
            if (d10.g()) {
                d10.r(36);
            }
            int h13 = d10.h(3) + 1;
            int h14 = d10.h(3) + 1;
            if (h13 == 1 && h14 == 1) {
                int i17 = h10 + 1;
                int h15 = d10.h(i17);
                for (int i18 = 0; i18 < i17; i18++) {
                    if (((h15 >> i18) & 1) == 1) {
                        d10.r(8);
                    }
                }
                if (d10.g()) {
                    d10.r(2);
                    int h16 = (d10.h(2) + 1) << 2;
                    int h17 = d10.h(2) + 1;
                    while (i16 < h17) {
                        d10.r(h16);
                        i16++;
                    }
                }
                i16 = h12;
            } else {
                throw ParserException.f("Multiple audio presentations or assets not supported");
            }
        } else {
            i12 = -1;
        }
        d10.r(i10);
        d10.r(12);
        if (g10) {
            if (d10.g()) {
                d10.r(4);
            }
            if (d10.g()) {
                d10.r(24);
            }
            if (d10.g()) {
                d10.s(d10.h(10) + 1);
            }
            d10.r(5);
            int i19 = f1902d[d10.h(4)];
            i14 = d10.h(8) + 1;
            i13 = i19;
        } else {
            i13 = -2147483647;
            i14 = -1;
        }
        if (g10) {
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        i15 = 48000;
                    } else {
                        throw ParserException.b("Unsupported reference clock code in DTS HD header: " + i12, null);
                    }
                } else {
                    i15 = 44100;
                }
            } else {
                i15 = RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM;
            }
            j10 = cn.m0.f1(i16, 1000000L, i15);
        } else {
            j10 = -9223372036854775807L;
        }
        return new b(MimeTypes.AUDIO_DTS_EXPRESS, i14, i13, h11, j10, 0);
    }

    public static int j(byte[] bArr) {
        int i10;
        cn.a0 d10 = d(bArr);
        d10.r(42);
        if (d10.g()) {
            i10 = 12;
        } else {
            i10 = 8;
        }
        return d10.h(i10) + 1;
    }

    public static b k(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
        int i10;
        int i11;
        long j10;
        int i12;
        int i13;
        cn.a0 d10 = d(bArr);
        int i14 = 0;
        if (d10.h(32) == 1078008818) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        int m10 = m(d10, f1903e, true) + 1;
        if (i10 != 0) {
            if (d10.g()) {
                a(bArr, m10);
                int h10 = d10.h(2);
                if (h10 != 0) {
                    if (h10 != 1) {
                        if (h10 == 2) {
                            i12 = MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
                        } else {
                            throw ParserException.b("Unsupported base duration index in DTS UHD header: " + h10, null);
                        }
                    } else {
                        i12 = 480;
                    }
                } else {
                    i12 = 512;
                }
                int h11 = i12 * (d10.h(3) + 1);
                int h12 = d10.h(2);
                if (h12 != 0) {
                    if (h12 != 1) {
                        if (h12 == 2) {
                            i13 = 48000;
                        } else {
                            throw ParserException.b("Unsupported clock rate index in DTS UHD header: " + h12, null);
                        }
                    } else {
                        i13 = 44100;
                    }
                } else {
                    i13 = RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM;
                }
                if (d10.g()) {
                    d10.r(36);
                }
                i11 = (1 << d10.h(2)) * i13;
                j10 = cn.m0.f1(h11, 1000000L, i13);
            } else {
                throw ParserException.f("Only supports full channel mask-based audio presentation");
            }
        } else {
            i11 = -2147483647;
            j10 = -9223372036854775807L;
        }
        int i15 = i11;
        long j11 = j10;
        int i16 = 0;
        for (int i17 = 0; i17 < i10; i17++) {
            i16 += m(d10, f1904f, true);
        }
        if (i10 != 0) {
            atomicInteger.set(m(d10, f1905g, true));
        }
        if (atomicInteger.get() != 0) {
            i14 = m(d10, f1906h, true);
        }
        return new b("audio/vnd.dts.uhd;profile=p2", 2, i15, m10 + i16 + i14, j11, 0);
    }

    public static int l(byte[] bArr) {
        cn.a0 d10 = d(bArr);
        d10.r(32);
        return m(d10, f1907i, true) + 1;
    }

    private static int m(cn.a0 a0Var, int[] iArr, boolean z10) {
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < 3 && a0Var.g(); i12++) {
            i11++;
        }
        if (z10) {
            int i13 = 0;
            while (i10 < i11) {
                i13 += 1 << iArr[i10];
                i10++;
            }
            i10 = i13;
        }
        return i10 + a0Var.h(iArr[i11]);
    }
}
