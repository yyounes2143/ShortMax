package q5;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
/* compiled from: MpegAudioUtil.java */
/* loaded from: classes4.dex */
public final class g0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f65078a = {MimeTypes.AUDIO_MPEG_L1, MimeTypes.AUDIO_MPEG_L2, MimeTypes.AUDIO_MPEG};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f65079b = {44100, 48000, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f65080c = {RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f65081d = {RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, 48000, 56000, 64000, DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f65082e = {RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, 48000, 56000, 64000, DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f  reason: collision with root package name */
    private static final int[] f65083f = {RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN, 48000, 56000, 64000, DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f65084g = {8000, 16000, 24000, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN, 48000, 56000, 64000, DataLoaderHelper.DATALOADER_KEY_MDL_OPTION_START, 96000, 112000, 128000, 144000, 160000};

    /* compiled from: MpegAudioUtil.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f65085a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public String f65086b;

        /* renamed from: c  reason: collision with root package name */
        public int f65087c;

        /* renamed from: d  reason: collision with root package name */
        public int f65088d;

        /* renamed from: e  reason: collision with root package name */
        public int f65089e;

        /* renamed from: f  reason: collision with root package name */
        public int f65090f;

        /* renamed from: g  reason: collision with root package name */
        public int f65091g;

        public boolean a(int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            if (!g0.l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
                return false;
            }
            this.f65085a = i11;
            this.f65086b = g0.f65078a[3 - i12];
            int i17 = g0.f65079b[i14];
            this.f65088d = i17;
            int i18 = 2;
            if (i11 == 2) {
                this.f65088d = i17 / 2;
            } else if (i11 == 0) {
                this.f65088d = i17 / 4;
            }
            int i19 = (i10 >>> 9) & 1;
            this.f65091g = g0.k(i11, i12);
            if (i12 == 3) {
                if (i11 == 3) {
                    i16 = g0.f65080c[i13 - 1];
                } else {
                    i16 = g0.f65081d[i13 - 1];
                }
                this.f65090f = i16;
                this.f65087c = (((i16 * 12) / this.f65088d) + i19) * 4;
            } else {
                int i20 = 144;
                if (i11 == 3) {
                    if (i12 == 2) {
                        i15 = g0.f65082e[i13 - 1];
                    } else {
                        i15 = g0.f65083f[i13 - 1];
                    }
                    this.f65090f = i15;
                    this.f65087c = ((i15 * 144) / this.f65088d) + i19;
                } else {
                    int i21 = g0.f65084g[i13 - 1];
                    this.f65090f = i21;
                    if (i12 == 1) {
                        i20 = 72;
                    }
                    this.f65087c = ((i20 * i21) / this.f65088d) + i19;
                }
            }
            if (((i10 >> 6) & 3) == 3) {
                i18 = 1;
            }
            this.f65089e = i18;
            return true;
        }
    }

    public static int j(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        if (!l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0 || (i13 = (i10 >>> 12) & 15) == 0 || i13 == 15 || (i14 = (i10 >>> 10) & 3) == 3) {
            return -1;
        }
        int i17 = f65079b[i14];
        if (i11 == 2) {
            i17 /= 2;
        } else if (i11 == 0) {
            i17 /= 4;
        }
        int i18 = (i10 >>> 9) & 1;
        if (i12 == 3) {
            if (i11 == 3) {
                i16 = f65080c[i13 - 1];
            } else {
                i16 = f65081d[i13 - 1];
            }
            return (((i16 * 12) / i17) + i18) * 4;
        }
        if (i11 == 3) {
            if (i12 == 2) {
                i15 = f65082e[i13 - 1];
            } else {
                i15 = f65083f[i13 - 1];
            }
        } else {
            i15 = f65084g[i13 - 1];
        }
        int i19 = 144;
        if (i11 == 3) {
            return ((i15 * 144) / i17) + i18;
        }
        if (i12 == 1) {
            i19 = 72;
        }
        return ((i19 * i15) / i17) + i18;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int i10, int i11) {
        if (i11 != 1) {
            if (i11 == 2) {
                return 1152;
            }
            if (i11 == 3) {
                return MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
            }
            throw new IllegalArgumentException();
        } else if (i10 == 3) {
            return 1152;
        } else {
            return 576;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean l(int i10) {
        if ((i10 & (-2097152)) == -2097152) {
            return true;
        }
        return false;
    }

    public static int m(int i10) {
        int i11;
        int i12;
        if (!l(i10) || (i11 = (i10 >>> 19) & 3) == 1 || (i12 = (i10 >>> 17) & 3) == 0) {
            return -1;
        }
        int i13 = (i10 >>> 12) & 15;
        int i14 = (i10 >>> 10) & 3;
        if (i13 == 0 || i13 == 15 || i14 == 3) {
            return -1;
        }
        return k(i11, i12);
    }
}
