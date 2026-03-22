package ao;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import com.tencent.wcdb.FileUtils;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.a;
import java.nio.ByteBuffer;
/* compiled from: Ac3Util.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f1739a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f1740b = {48000, 44100, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f1741c = {24000, 22050, 16000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f1742d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f1743e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, FileUtils.S_IRWXU, 512, 576, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f1744f = {69, 87, 104, 121, 139, 174, 208, 243, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, 348, 417, TTVideoEngineInterface.PLAYER_OPTION_SET_NETSPEED_LEVEL, 557, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_LIVE_PACKET_READ_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_RTM_SIGNAL_OFFER_CREATED_TIME, 975, 1114, MediaPlayer.MEDIA_PLAYER_OPTION_CACHE_OPEN_END_TIME, 1393};

    /* compiled from: Ac3Util.java */
    /* renamed from: ao.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0069b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final String f1745a;

        /* renamed from: b  reason: collision with root package name */
        public final int f1746b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1747c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1748d;

        /* renamed from: e  reason: collision with root package name */
        public final int f1749e;

        /* renamed from: f  reason: collision with root package name */
        public final int f1750f;

        /* renamed from: g  reason: collision with root package name */
        public final int f1751g;

        private C0069b(@Nullable String str, int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f1745a = str;
            this.f1746b = i10;
            this.f1748d = i11;
            this.f1747c = i12;
            this.f1749e = i13;
            this.f1750f = i14;
            this.f1751g = i15;
        }
    }

    private static int a(int i10, int i11, int i12) {
        return (i10 * i11) / (i12 * 32);
    }

    public static int b(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i10 = position; i10 <= limit; i10++) {
            if ((cn.m0.P(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                return i10 - position;
            }
        }
        return -1;
    }

    private static int c(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 >= 0) {
            int[] iArr = f1740b;
            if (i10 < iArr.length && i11 >= 0) {
                int[] iArr2 = f1744f;
                if (i12 < iArr2.length) {
                    int i13 = iArr[i10];
                    if (i13 == 44100) {
                        return (iArr2[i12] + (i11 % 2)) * 2;
                    }
                    int i14 = f1743e[i12];
                    if (i13 == 32000) {
                        return i14 * 6;
                    }
                    return i14 * 4;
                }
                return -1;
            }
            return -1;
        }
        return -1;
    }

    public static io.bidmachine.media3.common.a d(cn.b0 b0Var, String str, @Nullable String str2, @Nullable DrmInitData drmInitData) {
        cn.a0 a0Var = new cn.a0();
        a0Var.m(b0Var);
        int i10 = f1740b[a0Var.h(2)];
        a0Var.r(8);
        int i11 = f1742d[a0Var.h(3)];
        if (a0Var.h(1) != 0) {
            i11++;
        }
        int i12 = f1743e[a0Var.h(5)] * 1000;
        a0Var.c();
        b0Var.W(a0Var.d());
        return new a.b().f0(str).u0(MimeTypes.AUDIO_AC3).R(i11).v0(i10).Y(drmInitData).j0(str2).Q(i12).p0(i12).N();
    }

    public static int e(ByteBuffer byteBuffer) {
        int i10 = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i10 = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
            }
            return f1739a[i10] * 256;
        }
        return 1536;
    }

    public static C0069b f(cn.a0 a0Var) {
        boolean z10;
        String str;
        int i10;
        int i11;
        int i12;
        String str2;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        String str3;
        int i21;
        int i22;
        int e10 = a0Var.e();
        a0Var.r(40);
        if (a0Var.h(5) > 10) {
            z10 = true;
        } else {
            z10 = false;
        }
        a0Var.p(e10);
        int i23 = -1;
        if (z10) {
            a0Var.r(16);
            int h10 = a0Var.h(2);
            if (h10 != 0) {
                if (h10 != 1) {
                    if (h10 == 2) {
                        i23 = 2;
                    }
                } else {
                    i23 = 1;
                }
            } else {
                i23 = 0;
            }
            a0Var.r(3);
            int h11 = (a0Var.h(11) + 1) * 2;
            int h12 = a0Var.h(2);
            if (h12 == 3) {
                i18 = f1741c[a0Var.h(2)];
                i17 = 3;
                i19 = 6;
            } else {
                int h13 = a0Var.h(2);
                int i24 = f1739a[h13];
                i17 = h13;
                i18 = f1740b[h12];
                i19 = i24;
            }
            int i25 = i19 * 256;
            int a10 = a(h11, i18, i19);
            int h14 = a0Var.h(3);
            boolean g10 = a0Var.g();
            i11 = f1742d[h14] + (g10 ? 1 : 0);
            a0Var.r(10);
            if (a0Var.g()) {
                a0Var.r(8);
            }
            if (h14 == 0) {
                a0Var.r(5);
                if (a0Var.g()) {
                    a0Var.r(8);
                }
            }
            if (i23 == 1 && a0Var.g()) {
                a0Var.r(16);
            }
            if (a0Var.g()) {
                if (h14 > 2) {
                    a0Var.r(2);
                }
                if ((h14 & 1) != 0 && h14 > 2) {
                    i21 = 6;
                    a0Var.r(6);
                } else {
                    i21 = 6;
                }
                if ((h14 & 4) != 0) {
                    a0Var.r(i21);
                }
                if (g10 && a0Var.g()) {
                    a0Var.r(5);
                }
                if (i23 == 0) {
                    if (a0Var.g()) {
                        i22 = 6;
                        a0Var.r(6);
                    } else {
                        i22 = 6;
                    }
                    if (h14 == 0 && a0Var.g()) {
                        a0Var.r(i22);
                    }
                    if (a0Var.g()) {
                        a0Var.r(i22);
                    }
                    int h15 = a0Var.h(2);
                    if (h15 == 1) {
                        a0Var.r(5);
                    } else if (h15 == 2) {
                        a0Var.r(12);
                    } else if (h15 == 3) {
                        int h16 = a0Var.h(5);
                        if (a0Var.g()) {
                            a0Var.r(5);
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                a0Var.r(4);
                            }
                            if (a0Var.g()) {
                                if (a0Var.g()) {
                                    a0Var.r(4);
                                }
                                if (a0Var.g()) {
                                    a0Var.r(4);
                                }
                            }
                        }
                        if (a0Var.g()) {
                            a0Var.r(5);
                            if (a0Var.g()) {
                                a0Var.r(7);
                                if (a0Var.g()) {
                                    a0Var.r(8);
                                }
                            }
                        }
                        a0Var.r((h16 + 2) * 8);
                        a0Var.c();
                    }
                    if (h14 < 2) {
                        if (a0Var.g()) {
                            a0Var.r(14);
                        }
                        if (h14 == 0 && a0Var.g()) {
                            a0Var.r(14);
                        }
                    }
                    if (a0Var.g()) {
                        if (i17 == 0) {
                            a0Var.r(5);
                        } else {
                            for (int i26 = 0; i26 < i19; i26++) {
                                if (a0Var.g()) {
                                    a0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (a0Var.g()) {
                a0Var.r(5);
                if (h14 == 2) {
                    a0Var.r(4);
                }
                if (h14 >= 6) {
                    a0Var.r(2);
                }
                if (a0Var.g()) {
                    a0Var.r(8);
                }
                if (h14 == 0 && a0Var.g()) {
                    a0Var.r(8);
                }
                if (h12 < 3) {
                    a0Var.q();
                }
            }
            if (i23 == 0 && i17 != 3) {
                a0Var.q();
            }
            if (i23 == 2 && (i17 == 3 || a0Var.g())) {
                i20 = 6;
                a0Var.r(6);
            } else {
                i20 = 6;
            }
            if (a0Var.g() && a0Var.h(i20) == 1 && a0Var.h(8) == 1) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
            } else {
                str3 = MimeTypes.AUDIO_E_AC3;
            }
            str2 = str3;
            i12 = i23;
            i13 = i25;
            i15 = h11;
            i16 = i18;
            i14 = a10;
        } else {
            a0Var.r(32);
            int h17 = a0Var.h(2);
            if (h17 == 3) {
                str = null;
            } else {
                str = MimeTypes.AUDIO_AC3;
            }
            int h18 = a0Var.h(6);
            int i27 = f1743e[h18 / 2] * 1000;
            int c10 = c(h17, h18);
            a0Var.r(8);
            int h19 = a0Var.h(3);
            if ((h19 & 1) != 0 && h19 != 1) {
                a0Var.r(2);
            }
            if ((h19 & 4) != 0) {
                a0Var.r(2);
            }
            if (h19 == 2) {
                a0Var.r(2);
            }
            int[] iArr = f1740b;
            if (h17 < iArr.length) {
                i10 = iArr[h17];
            } else {
                i10 = -1;
            }
            i11 = f1742d[h19] + (a0Var.g() ? 1 : 0);
            i12 = -1;
            str2 = str;
            i13 = 1536;
            i14 = i27;
            i15 = c10;
            i16 = i10;
        }
        return new C0069b(str2, i12, i11, i16, i15, i13, i14);
    }

    public static int g(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b10 = bArr[4];
        return c((b10 & 192) >> 6, b10 & 63);
    }

    public static io.bidmachine.media3.common.a h(cn.b0 b0Var, String str, @Nullable String str2, @Nullable DrmInitData drmInitData) {
        String str3;
        cn.a0 a0Var = new cn.a0();
        a0Var.m(b0Var);
        int h10 = a0Var.h(13) * 1000;
        a0Var.r(3);
        int i10 = f1740b[a0Var.h(2)];
        a0Var.r(10);
        int i11 = f1742d[a0Var.h(3)];
        if (a0Var.h(1) != 0) {
            i11++;
        }
        a0Var.r(3);
        int h11 = a0Var.h(4);
        a0Var.r(1);
        if (h11 > 0) {
            a0Var.r(6);
            if (a0Var.h(1) != 0) {
                i11 += 2;
            }
            a0Var.r(1);
        }
        if (a0Var.b() > 7) {
            a0Var.r(7);
            if (a0Var.h(1) != 0) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
                a0Var.c();
                b0Var.W(a0Var.d());
                return new a.b().f0(str).u0(str3).R(i11).v0(i10).Y(drmInitData).j0(str2).p0(h10).N();
            }
        }
        str3 = MimeTypes.AUDIO_E_AC3;
        a0Var.c();
        b0Var.W(a0Var.d());
        return new a.b().f0(str).u0(str3).R(i11).v0(i10).Y(drmInitData).j0(str2).p0(h10).N();
    }

    public static int i(ByteBuffer byteBuffer, int i10) {
        boolean z10;
        int i11;
        if ((byteBuffer.get(byteBuffer.position() + i10 + 7) & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 187) {
            z10 = true;
        } else {
            z10 = false;
        }
        int position = byteBuffer.position() + i10;
        if (z10) {
            i11 = 9;
        } else {
            i11 = 8;
        }
        return 40 << ((byteBuffer.get(position + i11) >> 4) & 7);
    }

    public static int j(byte[] bArr) {
        char c10;
        boolean z10 = false;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111) {
            byte b10 = bArr[7];
            if ((b10 & 254) == 186) {
                if ((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) == 187) {
                    z10 = true;
                }
                if (z10) {
                    c10 = '\t';
                } else {
                    c10 = '\b';
                }
                return 40 << ((bArr[c10] >> 4) & 7);
            }
        }
        return 0;
    }
}
