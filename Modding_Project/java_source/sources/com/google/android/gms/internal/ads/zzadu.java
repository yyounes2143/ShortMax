package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.material.internal.ViewUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import com.tencent.wcdb.FileUtils;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzadu {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] zzc = {-1, 8000, 16000, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] zzd = {64, 112, 128, 192, 224, 256, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, FileUtils.S_IRWXU, 512, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, ViewUtils.EDGE_TO_EDGE_FLAGS, 896, 1024, 1152, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    private static final int[] zze = {8000, 16000, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};
    private static final int[] zzf = {5, 8, 10, 12};
    private static final int[] zzg = {6, 9, 12, 15};
    private static final int[] zzh = {2, 4, 6, 8};
    private static final int[] zzi = {9, 11, 13, 16};
    private static final int[] zzj = {5, 8, 10, 12};

    public static int zza(byte[] bArr) {
        int i10;
        zzem zzg2 = zzg(bArr);
        zzg2.zzn(42);
        if (true != zzg2.zzp()) {
            i10 = 8;
        } else {
            i10 = 12;
        }
        return zzg2.zzd(i10) + 1;
    }

    public static int zzb(byte[] bArr) {
        zzem zzg2 = zzg(bArr);
        zzg2.zzn(32);
        return zzf(zzg2, zzj, true) + 1;
    }

    public static zzz zzc(byte[] bArr, @Nullable String str, @Nullable String str2, int i10, String str3, @Nullable zzs zzsVar) {
        int i11;
        int i12;
        zzem zzg2 = zzg(bArr);
        zzg2.zzn(60);
        int i13 = zzb[zzg2.zzd(6)];
        int i14 = zzc[zzg2.zzd(4)];
        int zzd2 = zzg2.zzd(5);
        if (zzd2 >= 29) {
            i11 = -1;
        } else {
            i11 = (zzd[zzd2] * 1000) / 2;
        }
        zzg2.zzn(10);
        if (zzg2.zzd(2) > 0) {
            i12 = 1;
        } else {
            i12 = 0;
        }
        int i15 = i13 + i12;
        zzx zzxVar = new zzx();
        zzxVar.zzS(str);
        zzxVar.zzG("video/mp2t");
        zzxVar.zzah(MimeTypes.AUDIO_DTS);
        zzxVar.zzC(i11);
        zzxVar.zzD(i15);
        zzxVar.zzai(i14);
        zzxVar.zzL(null);
        zzxVar.zzW(str2);
        zzxVar.zzaf(i10);
        return zzxVar.zzan();
    }

    public static zzads zzd(byte[] bArr) throws zzaz {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        long j10;
        int i15;
        zzem zzg2 = zzg(bArr);
        zzg2.zzn(40);
        int zzd2 = zzg2.zzd(2);
        boolean zzp = zzg2.zzp();
        if (true != zzp) {
            i10 = 16;
        } else {
            i10 = 20;
        }
        if (true != zzp) {
            i11 = 8;
        } else {
            i11 = 12;
        }
        zzg2.zzn(i11);
        int zzd3 = zzg2.zzd(i10) + 1;
        boolean zzp2 = zzg2.zzp();
        int i16 = 0;
        if (zzp2) {
            i12 = zzg2.zzd(2);
            int zzd4 = zzg2.zzd(3) + 1;
            if (zzg2.zzp()) {
                zzg2.zzn(36);
            }
            int zzd5 = zzg2.zzd(3) + 1;
            int zzd6 = zzg2.zzd(3) + 1;
            if (zzd5 == 1 && zzd6 == 1) {
                int i17 = zzd2 + 1;
                int zzd7 = zzg2.zzd(i17);
                for (int i18 = 0; i18 < i17; i18++) {
                    if (((zzd7 >> i18) & 1) == 1) {
                        zzg2.zzn(8);
                    }
                }
                int i19 = zzd4 * 512;
                if (zzg2.zzp()) {
                    zzg2.zzn(2);
                    int zzd8 = (zzg2.zzd(2) + 1) << 2;
                    int zzd9 = zzg2.zzd(2) + 1;
                    while (i16 < zzd9) {
                        zzg2.zzn(zzd8);
                        i16++;
                    }
                }
                i16 = i19;
            } else {
                throw zzaz.zzc("Multiple audio presentations or assets not supported");
            }
        } else {
            i12 = -1;
        }
        zzg2.zzn(i10);
        zzg2.zzn(12);
        if (zzp2) {
            if (zzg2.zzp()) {
                zzg2.zzn(4);
            }
            if (zzg2.zzp()) {
                zzg2.zzn(24);
            }
            if (zzg2.zzp()) {
                zzg2.zzo(zzg2.zzd(10) + 1);
            }
            zzg2.zzn(5);
            int i20 = zze[zzg2.zzd(4)];
            i14 = zzg2.zzd(8) + 1;
            i13 = i20;
        } else {
            i13 = -2147483647;
            i14 = -1;
        }
        if (zzp2) {
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        i15 = 48000;
                    } else {
                        throw zzaz.zza("Unsupported reference clock code in DTS HD header: " + i12, null);
                    }
                } else {
                    i15 = 44100;
                }
            } else {
                i15 = RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM;
            }
            j10 = zzex.zzu(i16, 1000000L, i15, RoundingMode.DOWN);
        } else {
            j10 = -9223372036854775807L;
        }
        return new zzads(MimeTypes.AUDIO_DTS_EXPRESS, i14, i13, zzd3, j10, 0, null);
    }

    public static zzads zze(byte[] bArr, AtomicInteger atomicInteger) throws zzaz {
        char c10;
        long j10;
        int i10;
        int i11;
        int i12;
        int i13;
        zzem zzg2 = zzg(bArr);
        int zzd2 = zzg2.zzd(32);
        int zzf2 = zzf(zzg2, zzf, true);
        int i14 = zzf2 + 1;
        if (zzd2 == 1078008818) {
            c10 = 1;
        } else {
            c10 = 0;
        }
        if (c10 != 0) {
            if (zzg2.zzp()) {
                int i15 = zzf2 - 1;
                if (((bArr[zzf2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((char) (bArr[i15] << 8))) == zzex.zze(bArr, 0, i15, 65535)) {
                    int zzd3 = zzg2.zzd(2);
                    if (zzd3 != 0) {
                        if (zzd3 != 1) {
                            if (zzd3 == 2) {
                                i12 = MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
                            } else {
                                throw zzaz.zza("Unsupported base duration index in DTS UHD header: " + zzd3, null);
                            }
                        } else {
                            i12 = 480;
                        }
                    } else {
                        i12 = 512;
                    }
                    int zzd4 = zzg2.zzd(3) + 1;
                    int zzd5 = zzg2.zzd(2);
                    if (zzd5 != 0) {
                        if (zzd5 != 1) {
                            if (zzd5 == 2) {
                                i13 = 48000;
                            } else {
                                throw zzaz.zza("Unsupported clock rate index in DTS UHD header: " + zzd5, null);
                            }
                        } else {
                            i13 = 44100;
                        }
                    } else {
                        i13 = RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM;
                    }
                    if (zzg2.zzp()) {
                        zzg2.zzn(36);
                    }
                    i10 = (1 << zzg2.zzd(2)) * i13;
                    j10 = zzex.zzu(i12 * zzd4, 1000000L, i13, RoundingMode.DOWN);
                } else {
                    throw zzaz.zza("CRC check failed", null);
                }
            } else {
                throw zzaz.zzc("Only supports full channel mask-based audio presentation");
            }
        } else {
            j10 = -9223372036854775807L;
            i10 = -2147483647;
        }
        int i16 = i10;
        long j11 = j10;
        int i17 = 0;
        for (char c11 = 0; c11 < c10; c11 = 1) {
            i17 += zzf(zzg2, zzg, true);
        }
        for (int i18 = 0; i18 <= 0; i18++) {
            if (c10 != 0) {
                atomicInteger.set(zzf(zzg2, zzh, true));
            }
            if (atomicInteger.get() != 0) {
                i11 = zzf(zzg2, zzi, true);
            } else {
                i11 = 0;
            }
            i17 += i11;
        }
        return new zzads("audio/vnd.dts.uhd;profile=p2", 2, i16, i14 + i17, j11, 0, null);
    }

    private static int zzf(zzem zzemVar, int[] iArr, boolean z10) {
        int i10 = 0;
        for (int i11 = 0; i11 < 3 && zzemVar.zzp(); i11++) {
            i10++;
        }
        int i12 = 0;
        for (int i13 = 0; i13 < i10; i13++) {
            i12 += 1 << iArr[i13];
        }
        return i12 + zzemVar.zzd(iArr[i10]);
    }

    private static zzem zzg(byte[] bArr) {
        byte b10 = bArr[0];
        if (b10 != Byte.MAX_VALUE && b10 != 100 && b10 != 64 && b10 != 113) {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b11 = copyOf[0];
            if (b11 == -2 || b11 == -1 || b11 == 37 || b11 == -14 || b11 == -24) {
                for (int i10 = 0; i10 < copyOf.length - 1; i10 += 2) {
                    byte b12 = copyOf[i10];
                    int i11 = i10 + 1;
                    copyOf[i10] = copyOf[i11];
                    copyOf[i11] = b12;
                }
            }
            int length = copyOf.length;
            zzem zzemVar = new zzem(copyOf, length);
            if (copyOf[0] == 31) {
                zzem zzemVar2 = new zzem(copyOf, length);
                while (zzemVar2.zza() >= 16) {
                    zzemVar2.zzn(2);
                    zzemVar.zzg(zzemVar2.zzd(14), 14);
                }
            }
            zzemVar.zzk(copyOf, copyOf.length);
            return zzemVar;
        }
        return new zzem(bArr, bArr.length);
    }
}
