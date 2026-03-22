package q5;

import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.v0;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import com.tencent.wcdb.FileUtils;
import java.nio.ByteBuffer;
/* compiled from: Ac3Util.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f65057a = {1, 2, 3, 6};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f65058b = {48000, 44100, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f65059c = {24000, 22050, 16000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f65060d = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f65061e = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, FileUtils.S_IRWXU, 512, 576, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f65062f = {69, 87, 104, 121, 139, 174, 208, 243, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, 348, 417, TTVideoEngineInterface.PLAYER_OPTION_SET_NETSPEED_LEVEL, 557, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_LIVE_PACKET_READ_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_RTM_SIGNAL_OFFER_CREATED_TIME, 975, 1114, MediaPlayer.MEDIA_PLAYER_OPTION_CACHE_OPEN_END_TIME, 1393};

    /* compiled from: Ac3Util.java */
    /* renamed from: q5.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0904b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final String f65063a;

        /* renamed from: b  reason: collision with root package name */
        public final int f65064b;

        /* renamed from: c  reason: collision with root package name */
        public final int f65065c;

        /* renamed from: d  reason: collision with root package name */
        public final int f65066d;

        /* renamed from: e  reason: collision with root package name */
        public final int f65067e;

        /* renamed from: f  reason: collision with root package name */
        public final int f65068f;

        private C0904b(@Nullable String str, int i10, int i11, int i12, int i13, int i14) {
            this.f65063a = str;
            this.f65064b = i10;
            this.f65066d = i11;
            this.f65065c = i12;
            this.f65067e = i13;
            this.f65068f = i14;
        }
    }

    public static int a(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit() - 10;
        for (int i10 = position; i10 <= limit; i10++) {
            if ((s0.F(byteBuffer, i10 + 4) & (-2)) == -126718022) {
                return i10 - position;
            }
        }
        return -1;
    }

    private static int b(int i10, int i11) {
        int i12 = i11 / 2;
        if (i10 >= 0) {
            int[] iArr = f65058b;
            if (i10 < iArr.length && i11 >= 0) {
                int[] iArr2 = f65062f;
                if (i12 < iArr2.length) {
                    int i13 = iArr[i10];
                    if (i13 == 44100) {
                        return (iArr2[i12] + (i11 % 2)) * 2;
                    }
                    int i14 = f65061e[i12];
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

    public static v0 c(b7.g0 g0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        int i10 = f65058b[(g0Var.D() & 192) >> 6];
        int D = g0Var.D();
        int i11 = f65060d[(D & 56) >> 3];
        if ((D & 4) != 0) {
            i11++;
        }
        return new v0.b().S(str).e0(MimeTypes.AUDIO_AC3).H(i11).f0(i10).M(drmInitData).V(str2).E();
    }

    public static int d(ByteBuffer byteBuffer) {
        int i10 = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i10 = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
            }
            return f65057a[i10] * 256;
        }
        return 1536;
    }

    public static C0904b e(b7.f0 f0Var) {
        boolean z10;
        String str;
        int b10;
        int i10;
        int i11;
        int i12;
        int i13;
        String str2;
        int h10;
        int i14;
        int i15;
        String str3;
        int i16;
        int i17;
        int e10 = f0Var.e();
        f0Var.r(40);
        if (f0Var.h(5) > 10) {
            z10 = true;
        } else {
            z10 = false;
        }
        f0Var.p(e10);
        int i18 = -1;
        if (z10) {
            f0Var.r(16);
            int h11 = f0Var.h(2);
            if (h11 != 0) {
                if (h11 != 1) {
                    if (h11 == 2) {
                        i18 = 2;
                    }
                } else {
                    i18 = 1;
                }
            } else {
                i18 = 0;
            }
            f0Var.r(3);
            b10 = (f0Var.h(11) + 1) * 2;
            int h12 = f0Var.h(2);
            if (h12 == 3) {
                i10 = f65059c[f0Var.h(2)];
                i14 = 6;
                h10 = 3;
            } else {
                h10 = f0Var.h(2);
                i14 = f65057a[h10];
                i10 = f65058b[h12];
            }
            i12 = i14 * 256;
            int h13 = f0Var.h(3);
            boolean g10 = f0Var.g();
            i11 = f65060d[h13] + (g10 ? 1 : 0);
            f0Var.r(10);
            if (f0Var.g()) {
                f0Var.r(8);
            }
            if (h13 == 0) {
                f0Var.r(5);
                if (f0Var.g()) {
                    f0Var.r(8);
                }
            }
            if (i18 == 1 && f0Var.g()) {
                f0Var.r(16);
            }
            if (f0Var.g()) {
                if (h13 > 2) {
                    f0Var.r(2);
                }
                if ((h13 & 1) != 0 && h13 > 2) {
                    i16 = 6;
                    f0Var.r(6);
                } else {
                    i16 = 6;
                }
                if ((h13 & 4) != 0) {
                    f0Var.r(i16);
                }
                if (g10 && f0Var.g()) {
                    f0Var.r(5);
                }
                if (i18 == 0) {
                    if (f0Var.g()) {
                        i17 = 6;
                        f0Var.r(6);
                    } else {
                        i17 = 6;
                    }
                    if (h13 == 0 && f0Var.g()) {
                        f0Var.r(i17);
                    }
                    if (f0Var.g()) {
                        f0Var.r(i17);
                    }
                    int h14 = f0Var.h(2);
                    if (h14 == 1) {
                        f0Var.r(5);
                    } else if (h14 == 2) {
                        f0Var.r(12);
                    } else if (h14 == 3) {
                        int h15 = f0Var.h(5);
                        if (f0Var.g()) {
                            f0Var.r(5);
                            if (f0Var.g()) {
                                f0Var.r(4);
                            }
                            if (f0Var.g()) {
                                f0Var.r(4);
                            }
                            if (f0Var.g()) {
                                f0Var.r(4);
                            }
                            if (f0Var.g()) {
                                f0Var.r(4);
                            }
                            if (f0Var.g()) {
                                f0Var.r(4);
                            }
                            if (f0Var.g()) {
                                f0Var.r(4);
                            }
                            if (f0Var.g()) {
                                f0Var.r(4);
                            }
                            if (f0Var.g()) {
                                if (f0Var.g()) {
                                    f0Var.r(4);
                                }
                                if (f0Var.g()) {
                                    f0Var.r(4);
                                }
                            }
                        }
                        if (f0Var.g()) {
                            f0Var.r(5);
                            if (f0Var.g()) {
                                f0Var.r(7);
                                if (f0Var.g()) {
                                    f0Var.r(8);
                                }
                            }
                        }
                        f0Var.r((h15 + 2) * 8);
                        f0Var.c();
                    }
                    if (h13 < 2) {
                        if (f0Var.g()) {
                            f0Var.r(14);
                        }
                        if (h13 == 0 && f0Var.g()) {
                            f0Var.r(14);
                        }
                    }
                    if (f0Var.g()) {
                        if (h10 == 0) {
                            f0Var.r(5);
                        } else {
                            for (int i19 = 0; i19 < i14; i19++) {
                                if (f0Var.g()) {
                                    f0Var.r(5);
                                }
                            }
                        }
                    }
                }
            }
            if (f0Var.g()) {
                f0Var.r(5);
                if (h13 == 2) {
                    f0Var.r(4);
                }
                if (h13 >= 6) {
                    f0Var.r(2);
                }
                if (f0Var.g()) {
                    f0Var.r(8);
                }
                if (h13 == 0 && f0Var.g()) {
                    f0Var.r(8);
                }
                if (h12 < 3) {
                    f0Var.q();
                }
            }
            if (i18 == 0 && h10 != 3) {
                f0Var.q();
            }
            if (i18 == 2 && (h10 == 3 || f0Var.g())) {
                i15 = 6;
                f0Var.r(6);
            } else {
                i15 = 6;
            }
            if (f0Var.g() && f0Var.h(i15) == 1 && f0Var.h(8) == 1) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
            } else {
                str3 = MimeTypes.AUDIO_E_AC3;
            }
            str2 = str3;
            i13 = i18;
        } else {
            f0Var.r(32);
            int h16 = f0Var.h(2);
            if (h16 == 3) {
                str = null;
            } else {
                str = MimeTypes.AUDIO_AC3;
            }
            b10 = b(h16, f0Var.h(6));
            f0Var.r(8);
            int h17 = f0Var.h(3);
            if ((h17 & 1) != 0 && h17 != 1) {
                f0Var.r(2);
            }
            if ((h17 & 4) != 0) {
                f0Var.r(2);
            }
            if (h17 == 2) {
                f0Var.r(2);
            }
            int[] iArr = f65058b;
            if (h16 < iArr.length) {
                i10 = iArr[h16];
            } else {
                i10 = -1;
            }
            i11 = f65060d[h17] + (f0Var.g() ? 1 : 0);
            i12 = 1536;
            i13 = -1;
            str2 = str;
        }
        return new C0904b(str2, i13, i11, i10, b10, i12);
    }

    public static int f(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            return (((bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[2] & 7) << 8)) + 1) * 2;
        }
        byte b10 = bArr[4];
        return b((b10 & 192) >> 6, b10 & 63);
    }

    public static v0 g(b7.g0 g0Var, String str, String str2, @Nullable DrmInitData drmInitData) {
        String str3;
        g0Var.Q(2);
        int i10 = f65058b[(g0Var.D() & 192) >> 6];
        int D = g0Var.D();
        int i11 = f65060d[(D & 14) >> 1];
        if ((D & 1) != 0) {
            i11++;
        }
        if (((g0Var.D() & 30) >> 1) > 0 && (2 & g0Var.D()) != 0) {
            i11 += 2;
        }
        if (g0Var.a() > 0 && (g0Var.D() & 1) != 0) {
            str3 = MimeTypes.AUDIO_E_AC3_JOC;
        } else {
            str3 = MimeTypes.AUDIO_E_AC3;
        }
        return new v0.b().S(str).e0(str3).H(i11).f0(i10).M(drmInitData).V(str2).E();
    }

    public static int h(ByteBuffer byteBuffer, int i10) {
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

    public static int i(byte[] bArr) {
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
