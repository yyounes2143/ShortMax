package com.facebook.ads.redexgen.X;

import com.inmobi.commons.core.configs.AdConfig;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.jV  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2481jV implements InterfaceC1506Kj {
    public static byte[] A0C;
    public static String[] A0D = {"bYPw9lwZ90LIMnDVrWR9nivpaP", "yFs6hGP2BjxCIYW4vwAvQB", "ThDP9clSa9Dn", "ZJ8KrZKjZ6YsWfu6TvhIHbPrHjBQXt73", "tonD2drFJKLGWlZx83XdaJTA2vW", "BxtbVLMcuUKNP9oDIvLT", "q4ZypHVOEkKJ", "0njOXKHdBu5kWS0YMUnz8"};
    public static final int[] A0E;
    public static final int[] A0F;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public final int A04;
    public final int A05;
    public final C2796or A06;
    public final C4J A07;
    public final GY A08;
    public final H1 A09;
    public final C1508Kl A0A;
    public final byte[] A0B;

    public static String A03(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 69);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{-120, 109, -76, -68, -63, -121, 109, -51, 0, -8, -19, -21, -4, -19, -20, -88, -18, -6, -23, -11, -19, -5, -88, -8, -19, -6, -88, -22, -12, -9, -21, -13, -62, -88, -7, 13, -4, 1, 7, -57, 10, -7, 15};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(byte[] bArr, int i10, int i11, byte[] bArr2) {
        int i12 = this.A0A.A02;
        int i13 = this.A0A.A05;
        int i14 = (i11 * 4) + (i10 * i12);
        int i15 = (i13 * 4) + i14;
        int i16 = (i12 / i13) - 4;
        int i17 = ((bArr[i14 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | (bArr[i14] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
        int min = Math.min(bArr[i14 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED, 88);
        int i18 = A0F[min];
        int i19 = ((this.A04 * i10 * i13) + i11) * 2;
        bArr2[i19] = (byte) (i17 & 255);
        bArr2[i19 + 1] = (byte) (i17 >> 8);
        for (int i20 = 0; i20 < i16 * 2; i20++) {
            int i21 = bArr[((i20 / 8) * i13 * 4) + i15 + ((i20 / 2) % 4)] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i22 = i20 % 2 == 0 ? i21 & 15 : i21 >> 4;
            int i23 = ((((i22 & 7) * 2) + 1) * i18) >> 3;
            if ((i22 & 8) != 0) {
                i23 = -i23;
            }
            i17 = AbstractC10974a.A07(i17 + i23, -32768, 32767);
            i19 += i13 * 2;
            bArr2[i19] = (byte) (i17 & 255);
            bArr2[i19 + 1] = (byte) (i17 >> 8);
            min = AbstractC10974a.A07(min + A0E[i22], 0, A0F.length - 1);
            i18 = A0F[min];
        }
    }

    static {
        A04();
        A0E = new int[]{-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        A0F = new int[]{7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, 307, 337, 371, 408, 449, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR, 544, 598, 658, 724, 796, 876, 963, MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_INTERVAL, DataLoaderHelper.DATALOADER_KEY_ENABLE_LOADER_LOG_EXTRACT_URLS, 1282, TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_RANGE_CONFIG, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SELECT_USE_OBJECT, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    }

    public C2481jV(GY gy, H1 h12, C1508Kl c1508Kl) throws C10532i {
        this.A08 = gy;
        this.A09 = h12;
        this.A0A = c1508Kl;
        this.A05 = Math.max(1, c1508Kl.A04 / 10);
        C4J scratch = new C4J(c1508Kl.A06);
        scratch.A0G();
        this.A04 = scratch.A0G();
        int i10 = c1508Kl.A05;
        int i11 = (((c1508Kl.A02 - (i10 * 4)) * 8) / (c1508Kl.A01 * i10)) + 1;
        if (this.A04 == i11) {
            int numChannels = AbstractC10974a.A05(this.A05, this.A04);
            this.A0B = new byte[c1508Kl.A02 * numChannels];
            int maxBlocksToDecode = A02(this.A04, i10);
            this.A07 = new C4J(maxBlocksToDecode * numChannels);
            int maxBlocksToDecode2 = c1508Kl.A04;
            int constantBitrate = ((maxBlocksToDecode2 * c1508Kl.A02) * 8) / this.A04;
            this.A06 = new C2D().A11(A03(34, 9, 83)).A0a(constantBitrate).A0j(constantBitrate).A0h(A02(this.A05, i10)).A0b(c1508Kl.A05).A0m(c1508Kl.A04).A0i(2).A14();
            return;
        }
        throw C10532i.A01(A03(7, 27, 67) + i11 + A03(0, 7, 8) + this.A04, null);
    }

    private int A00(int i10) {
        return i10 / (this.A0A.A05 * 2);
    }

    private int A01(int i10) {
        return A02(i10, this.A0A.A05);
    }

    public static int A02(int i10, int i11) {
        return i10 * 2 * i11;
    }

    private void A05(int i10) {
        int A01 = A01(i10);
        this.A09.AIA(this.A03 + AbstractC10974a.A0U(this.A02, 1000000L, this.A0A.A04), 1, A01, this.A01 - A01, null);
        long timeUs = i10;
        this.A02 += timeUs;
        this.A01 -= A01;
    }

    /* JADX WARN: Incorrect condition in loop: B:6:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A07(byte[] r4, int r5, com.facebook.ads.redexgen.X.C4J r6) {
        /*
            r3 = this;
            r2 = 0
        L1:
            if (r2 >= r5) goto L17
            r1 = 0
        L4:
            com.facebook.ads.redexgen.X.Kl r0 = r3.A0A
            int r0 = r0.A05
            if (r1 >= r0) goto L14
            byte[] r0 = r6.A0l()
            r3.A06(r4, r2, r1, r0)
            int r1 = r1 + 1
            goto L4
        L14:
            int r2 = r2 + 1
            goto L1
        L17:
            int r0 = r3.A04
            int r0 = r0 * r5
            int r1 = r3.A01(r0)
            r0 = 0
            r6.A0f(r0)
            r6.A0e(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2481jV.A07(byte[], int, com.facebook.ads.redexgen.X.4J):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1506Kj
    public final void AA0(int i10, long j10) {
        this.A08.AIN(new C2478jS(this.A0A, this.A04, i10, j10));
        this.A09.A6W(this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1506Kj
    public final void AI0(long j10) {
        this.A00 = 0;
        this.A03 = j10;
        this.A01 = 0;
        this.A02 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1506Kj
    public final boolean AI9(InterfaceC2585lN interfaceC2585lN, long j10) throws IOException {
        int A00 = this.A05 - A00(this.A01);
        int targetFramesRemaining = this.A04;
        int blocksToDecode = AbstractC10974a.A05(A00, targetFramesRemaining);
        int i10 = this.A0A.A02 * blocksToDecode;
        int targetFramesRemaining2 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        boolean z10 = targetFramesRemaining2 == 0;
        while (!z10) {
            int targetFramesRemaining3 = this.A00;
            if (targetFramesRemaining3 >= i10) {
                break;
            }
            int targetFramesRemaining4 = this.A00;
            int targetReadBytes = (int) Math.min(i10 - targetFramesRemaining4, j10);
            byte[] bArr = this.A0B;
            int targetFramesRemaining5 = this.A00;
            int blocksToDecode2 = interfaceC2585lN.read(bArr, targetFramesRemaining5, targetReadBytes);
            if (blocksToDecode2 == -1) {
                z10 = true;
            } else {
                int targetFramesRemaining6 = this.A00;
                this.A00 = targetFramesRemaining6 + blocksToDecode2;
            }
        }
        int targetReadBytes2 = this.A00;
        int targetFramesRemaining7 = this.A0A.A02;
        int targetReadBytes3 = targetReadBytes2 / targetFramesRemaining7;
        if (targetReadBytes3 > 0) {
            A07(this.A0B, targetReadBytes3, this.A07);
            int blocksToDecode3 = this.A00;
            int targetFramesRemaining8 = this.A0A.A02;
            this.A00 = blocksToDecode3 - (targetFramesRemaining8 * targetReadBytes3);
            int blocksToDecode4 = A0D[3].charAt(16);
            if (blocksToDecode4 != 84) {
                throw new RuntimeException();
            }
            A0D[0] = "TvVFAtGQ";
            int targetReadBytes4 = this.A07.A0A();
            this.A09.AI7(this.A07, targetReadBytes4);
            int targetFramesRemaining9 = this.A01;
            this.A01 = targetFramesRemaining9 + targetReadBytes4;
            int targetFramesRemaining10 = this.A01;
            int blocksToDecode5 = A00(targetFramesRemaining10);
            int targetFramesRemaining11 = this.A05;
            if (blocksToDecode5 >= targetFramesRemaining11) {
                int targetFramesRemaining12 = this.A05;
                A05(targetFramesRemaining12);
            }
        }
        if (z10) {
            int targetFramesRemaining13 = this.A01;
            int targetFramesRemaining14 = A00(targetFramesRemaining13);
            if (targetFramesRemaining14 > 0) {
                A05(targetFramesRemaining14);
            }
        }
        return z10;
    }
}
