package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.bean.search.RedeemCodeVip;
import com.tencent.wcdb.FileUtils;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzacu {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {48000, 44100, RedeemCodeVip.REDEMPTION_MEMBER_CANNOT_CLAIM};
    private static final int[] zzd = {24000, 22050, 16000};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, FileUtils.S_IRWXU, 512, 576, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK};
    private static final int[] zzg = {69, 87, 104, 121, 139, 174, 208, 243, MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, 348, 417, TTVideoEngineInterface.PLAYER_OPTION_SET_NETSPEED_LEVEL, 557, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_LIVE_PACKET_READ_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_RTM_SIGNAL_OFFER_CREATED_TIME, 975, 1114, MediaPlayer.MEDIA_PLAYER_OPTION_CACHE_OPEN_END_TIME, 1393};

    public static int zza(ByteBuffer byteBuffer) {
        int i10 = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i10 = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
            }
            return zzb[i10] * 256;
        }
        return 1536;
    }

    public static int zzb(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            int i10 = ((bArr[3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[2] & 7) << 8)) + 1;
            return i10 + i10;
        }
        byte b10 = bArr[4];
        return zzf((b10 & 192) >> 6, b10 & 63);
    }

    public static zzz zzc(zzen zzenVar, String str, @Nullable String str2, @Nullable zzs zzsVar) {
        zzem zzemVar = new zzem();
        zzemVar.zzj(zzenVar);
        int i10 = zzc[zzemVar.zzd(2)];
        zzemVar.zzn(8);
        int i11 = zze[zzemVar.zzd(3)];
        if (zzemVar.zzd(1) != 0) {
            i11++;
        }
        int i12 = zzf[zzemVar.zzd(5)] * 1000;
        zzemVar.zzf();
        zzenVar.zzL(zzemVar.zzb());
        zzx zzxVar = new zzx();
        zzxVar.zzS(str);
        zzxVar.zzah(MimeTypes.AUDIO_AC3);
        zzxVar.zzD(i11);
        zzxVar.zzai(i10);
        zzxVar.zzL(zzsVar);
        zzxVar.zzW(str2);
        zzxVar.zzC(i12);
        zzxVar.zzac(i12);
        return zzxVar.zzan();
    }

    public static zzz zzd(zzen zzenVar, String str, @Nullable String str2, @Nullable zzs zzsVar) {
        String str3;
        zzem zzemVar = new zzem();
        zzemVar.zzj(zzenVar);
        int zzd2 = zzemVar.zzd(13) * 1000;
        zzemVar.zzn(3);
        int i10 = zzc[zzemVar.zzd(2)];
        zzemVar.zzn(10);
        int i11 = zze[zzemVar.zzd(3)];
        if (zzemVar.zzd(1) != 0) {
            i11++;
        }
        zzemVar.zzn(3);
        int zzd3 = zzemVar.zzd(4);
        zzemVar.zzn(1);
        if (zzd3 > 0) {
            zzemVar.zzn(6);
            if (zzemVar.zzd(1) != 0) {
                i11 += 2;
            }
            zzemVar.zzn(1);
        }
        if (zzemVar.zza() > 7) {
            zzemVar.zzn(7);
            if (zzemVar.zzd(1) != 0) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
                zzemVar.zzf();
                zzenVar.zzL(zzemVar.zzb());
                zzx zzxVar = new zzx();
                zzxVar.zzS(str);
                zzxVar.zzah(str3);
                zzxVar.zzD(i11);
                zzxVar.zzai(i10);
                zzxVar.zzL(zzsVar);
                zzxVar.zzW(str2);
                zzxVar.zzac(zzd2);
                return zzxVar.zzan();
            }
        }
        str3 = MimeTypes.AUDIO_E_AC3;
        zzemVar.zzf();
        zzenVar.zzL(zzemVar.zzb());
        zzx zzxVar2 = new zzx();
        zzxVar2.zzS(str);
        zzxVar2.zzah(str3);
        zzxVar2.zzD(i11);
        zzxVar2.zzai(i10);
        zzxVar2.zzL(zzsVar);
        zzxVar2.zzW(str2);
        zzxVar2.zzac(zzd2);
        return zzxVar2.zzan();
    }

    public static zzacs zze(zzem zzemVar) {
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
        int i21;
        String str3;
        int zzc2 = zzemVar.zzc();
        zzemVar.zzn(40);
        int zzd2 = zzemVar.zzd(5);
        zzemVar.zzl(zzc2);
        int i22 = -1;
        if (zzd2 > 10) {
            zzemVar.zzn(16);
            int zzd3 = zzemVar.zzd(2);
            if (zzd3 != 0) {
                if (zzd3 != 1) {
                    if (zzd3 == 2) {
                        i22 = 2;
                    }
                } else {
                    i22 = 1;
                }
            } else {
                i22 = 0;
            }
            zzemVar.zzn(3);
            int zzd4 = zzemVar.zzd(11) + 1;
            int zzd5 = zzemVar.zzd(2);
            if (zzd5 == 3) {
                i18 = zzd[zzemVar.zzd(2)];
                i19 = 6;
                i17 = 3;
            } else {
                int zzd6 = zzemVar.zzd(2);
                int i23 = zzb[zzd6];
                i17 = zzd6;
                i18 = zzc[zzd5];
                i19 = i23;
            }
            int i24 = zzd4 + zzd4;
            int i25 = (i24 * i18) / (i19 * 32);
            int zzd7 = zzemVar.zzd(3);
            boolean zzp = zzemVar.zzp();
            i11 = zze[zzd7] + (zzp ? 1 : 0);
            zzemVar.zzn(10);
            if (zzemVar.zzp()) {
                zzemVar.zzn(8);
            }
            if (zzd7 == 0) {
                zzemVar.zzn(5);
                if (zzemVar.zzp()) {
                    zzemVar.zzn(8);
                }
                i20 = 0;
                zzd7 = 0;
            } else {
                i20 = zzd7;
            }
            if (i22 == 1) {
                if (zzemVar.zzp()) {
                    zzemVar.zzn(16);
                }
                i21 = 1;
            } else {
                i21 = i22;
            }
            if (zzemVar.zzp()) {
                if (i20 > 2) {
                    zzemVar.zzn(2);
                }
                if ((i20 & 1) != 0 && i20 > 2) {
                    zzemVar.zzn(6);
                }
                if ((i20 & 4) != 0) {
                    zzemVar.zzn(6);
                }
                if (zzp && zzemVar.zzp()) {
                    zzemVar.zzn(5);
                }
                if (i21 == 0) {
                    if (zzemVar.zzp()) {
                        zzemVar.zzn(6);
                    }
                    if (i20 == 0 && zzemVar.zzp()) {
                        zzemVar.zzn(6);
                    }
                    if (zzemVar.zzp()) {
                        zzemVar.zzn(6);
                    }
                    int zzd8 = zzemVar.zzd(2);
                    if (zzd8 == 1) {
                        zzemVar.zzn(5);
                    } else if (zzd8 == 2) {
                        zzemVar.zzn(12);
                    } else if (zzd8 == 3) {
                        int zzd9 = zzemVar.zzd(5);
                        if (zzemVar.zzp()) {
                            zzemVar.zzn(5);
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(4);
                            }
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(4);
                            }
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(4);
                            }
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(4);
                            }
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(4);
                            }
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(4);
                            }
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(4);
                            }
                            if (zzemVar.zzp()) {
                                if (zzemVar.zzp()) {
                                    zzemVar.zzn(4);
                                }
                                if (zzemVar.zzp()) {
                                    zzemVar.zzn(4);
                                }
                            }
                        }
                        if (zzemVar.zzp()) {
                            zzemVar.zzn(5);
                            if (zzemVar.zzp()) {
                                zzemVar.zzn(7);
                                if (zzemVar.zzp()) {
                                    zzemVar.zzn(8);
                                }
                            }
                        }
                        zzemVar.zzn((zzd9 + 2) * 8);
                        zzemVar.zzf();
                    }
                    if (i20 < 2) {
                        if (zzemVar.zzp()) {
                            zzemVar.zzn(14);
                        }
                        if (zzd7 == 0 && zzemVar.zzp()) {
                            zzemVar.zzn(14);
                        }
                    }
                    if (zzemVar.zzp()) {
                        if (i17 == 0) {
                            zzemVar.zzn(5);
                            i21 = 0;
                            i17 = 0;
                        } else {
                            for (int i26 = 0; i26 < i19; i26++) {
                                if (zzemVar.zzp()) {
                                    zzemVar.zzn(5);
                                }
                            }
                        }
                    }
                    i21 = 0;
                }
            }
            if (zzemVar.zzp()) {
                zzemVar.zzn(5);
                if (i20 == 2) {
                    zzemVar.zzn(4);
                    i20 = 2;
                }
                if (i20 >= 6) {
                    zzemVar.zzn(2);
                }
                if (zzemVar.zzp()) {
                    zzemVar.zzn(8);
                }
                if (i20 == 0 && zzemVar.zzp()) {
                    zzemVar.zzn(8);
                }
                if (zzd5 < 3) {
                    zzemVar.zzm();
                }
            }
            if (i21 == 0 && i17 != 3) {
                zzemVar.zzm();
            }
            if (i21 == 2 && (i17 == 3 || zzemVar.zzp())) {
                zzemVar.zzn(6);
            }
            if (zzemVar.zzp() && zzemVar.zzd(6) == 1 && zzemVar.zzd(8) == 1) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
            } else {
                str3 = MimeTypes.AUDIO_E_AC3;
            }
            str2 = str3;
            i12 = i22;
            i14 = i24;
            i15 = i18;
            i16 = i19 * 256;
            i13 = i25;
        } else {
            zzemVar.zzn(32);
            int zzd10 = zzemVar.zzd(2);
            if (zzd10 == 3) {
                str = null;
            } else {
                str = MimeTypes.AUDIO_AC3;
            }
            int zzd11 = zzemVar.zzd(6);
            int i27 = zzf[zzd11 / 2] * 1000;
            int zzf2 = zzf(zzd10, zzd11);
            zzemVar.zzn(8);
            int zzd12 = zzemVar.zzd(3);
            if ((zzd12 & 1) != 0 && zzd12 != 1) {
                zzemVar.zzn(2);
            }
            if ((zzd12 & 4) != 0) {
                zzemVar.zzn(2);
            }
            if (zzd12 == 2) {
                zzemVar.zzn(2);
            }
            if (zzd10 < 3) {
                i10 = zzc[zzd10];
            } else {
                i10 = -1;
            }
            i11 = zze[zzd12] + (zzemVar.zzp() ? 1 : 0);
            i12 = -1;
            str2 = str;
            i13 = i27;
            i14 = zzf2;
            i15 = i10;
            i16 = 1536;
        }
        return new zzacs(str2, i12, i11, i15, i14, i16, i13, null);
    }

    private static int zzf(int i10, int i11) {
        int i12;
        if (i10 >= 0 && i10 < 3 && i11 >= 0 && (i12 = i11 >> 1) < 19) {
            int i13 = zzc[i10];
            if (i13 == 44100) {
                int i14 = zzg[i12] + (i11 & 1);
                return i14 + i14;
            }
            int i15 = zzf[i12];
            if (i13 == 32000) {
                return i15 * 6;
            }
            return i15 * 4;
        }
        return -1;
    }
}
