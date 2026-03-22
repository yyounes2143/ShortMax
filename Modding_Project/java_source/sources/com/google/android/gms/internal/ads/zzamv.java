package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import com.google.android.material.internal.ViewUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzamv implements zzamz {
    private static final byte[] zza = {73, 68, 51};
    private final boolean zzb;
    @Nullable
    private final String zze;
    private final int zzf;
    private final String zzg;
    private String zzh;
    private zzafb zzi;
    private zzafb zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzr;
    private boolean zzs;
    private int zzu;
    private zzafb zzw;
    private long zzx;
    private final zzem zzc = new zzem(new byte[7], 7);
    private final zzen zzd = new zzen(Arrays.copyOf(zza, 10));
    private int zzp = -1;
    private int zzq = -1;
    private long zzt = -9223372036854775807L;
    private long zzv = -9223372036854775807L;

    public zzamv(boolean z10, @Nullable String str, int i10, String str2) {
        this.zzb = z10;
        this.zze = str;
        this.zzf = i10;
        this.zzg = str2;
        zzh();
    }

    public static boolean zzf(int i10) {
        if ((i10 & 65526) == 65520) {
            return true;
        }
        return false;
    }

    private final void zzg() {
        this.zzo = false;
        zzh();
    }

    private final void zzh() {
        this.zzk = 0;
        this.zzl = 0;
        this.zzm = 256;
    }

    private final void zzi() {
        this.zzk = 3;
        this.zzl = 0;
    }

    private final void zzj(zzafb zzafbVar, long j10, int i10, int i11) {
        this.zzk = 4;
        this.zzl = i10;
        this.zzw = zzafbVar;
        this.zzx = j10;
        this.zzu = i11;
    }

    private final boolean zzk(zzen zzenVar, byte[] bArr, int i10) {
        int min = Math.min(zzenVar.zza(), i10 - this.zzl);
        zzenVar.zzH(bArr, this.zzl, min);
        int i11 = this.zzl + min;
        this.zzl = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private static final boolean zzl(byte b10, byte b11) {
        return zzf((b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | MotionEventCompat.ACTION_POINTER_INDEX_MASK);
    }

    private static final boolean zzm(zzen zzenVar, byte[] bArr, int i10) {
        if (zzenVar.zza() < i10) {
            return false;
        }
        zzenVar.zzH(bArr, 0, i10);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zza(zzen zzenVar) throws zzaz {
        boolean z10;
        int i10;
        int i11;
        int i12;
        byte b10;
        char c10;
        int i13;
        char c11;
        int i14;
        int i15;
        boolean z11;
        int i16 = 0;
        int i17 = 2;
        this.zzi.getClass();
        String str = zzex.zza;
        while (zzenVar.zza() > 0) {
            int i18 = this.zzk;
            char c12 = 7;
            if (i18 != 0) {
                if (i18 != 1) {
                    if (i18 != i17) {
                        if (i18 != 3) {
                            int min = Math.min(zzenVar.zza(), this.zzu - this.zzl);
                            this.zzw.zzr(zzenVar, min);
                            int i19 = this.zzl + min;
                            this.zzl = i19;
                            if (i19 == this.zzu) {
                                if (this.zzv != -9223372036854775807L) {
                                    z10 = 1;
                                } else {
                                    z10 = i16;
                                }
                                zzdd.zzf(z10);
                                this.zzw.zzt(this.zzv, 1, this.zzu, 0, null);
                                this.zzv += this.zzx;
                                zzh();
                            }
                        } else {
                            if (true != this.zzn) {
                                i10 = 5;
                            } else {
                                i10 = 7;
                            }
                            zzem zzemVar = this.zzc;
                            if (zzk(zzenVar, zzemVar.zza, i10)) {
                                zzemVar.zzl(i16);
                                if (!this.zzs) {
                                    int zzd = zzemVar.zzd(i17) + 1;
                                    if (zzd != i17) {
                                        zzea.zzf("AdtsReader", "Detected audio object type: " + zzd + ", but assuming AAC LC.");
                                    }
                                    zzemVar.zzn(5);
                                    int zzd2 = zzemVar.zzd(3);
                                    int i20 = this.zzq;
                                    byte[] bArr = new byte[i17];
                                    bArr[i16] = (byte) (((i20 >> 1) & 7) | 16);
                                    bArr[1] = (byte) (((zzd2 << 3) & 120) | ((i20 << 7) & 128));
                                    zzacp zza2 = zzacr.zza(bArr);
                                    zzx zzxVar = new zzx();
                                    zzxVar.zzS(this.zzh);
                                    zzxVar.zzG(this.zzg);
                                    zzxVar.zzah(MimeTypes.AUDIO_AAC);
                                    zzxVar.zzE(zza2.zzc);
                                    zzxVar.zzD(zza2.zzb);
                                    zzxVar.zzai(zza2.zza);
                                    zzxVar.zzT(Collections.singletonList(bArr));
                                    zzxVar.zzW(this.zze);
                                    zzxVar.zzaf(this.zzf);
                                    zzz zzan = zzxVar.zzan();
                                    this.zzt = 1024000000 / zzan.zzH;
                                    this.zzi.zzm(zzan);
                                    this.zzs = true;
                                } else {
                                    zzemVar.zzn(10);
                                }
                                zzemVar.zzn(4);
                                int zzd3 = zzemVar.zzd(13);
                                int i21 = zzd3 - 7;
                                if (this.zzn) {
                                    i11 = zzd3 - 9;
                                } else {
                                    i11 = i21;
                                }
                                zzj(this.zzi, this.zzt, 0, i11);
                            }
                        }
                    } else {
                        zzen zzenVar2 = this.zzd;
                        if (zzk(zzenVar, zzenVar2.zzN(), 10)) {
                            this.zzj.zzr(zzenVar2, 10);
                            zzenVar2.zzL(6);
                            zzj(this.zzj, 0L, 10, zzenVar2.zzl() + 10);
                        }
                    }
                } else if (zzenVar.zza() != 0) {
                    zzem zzemVar2 = this.zzc;
                    zzemVar2.zza[i16] = zzenVar.zzN()[zzenVar.zzc()];
                    zzemVar2.zzl(i17);
                    int zzd4 = zzemVar2.zzd(4);
                    int i22 = this.zzq;
                    if (i22 != -1 && zzd4 != i22) {
                        zzg();
                    } else {
                        if (!this.zzo) {
                            this.zzo = true;
                            this.zzp = this.zzr;
                            this.zzq = zzd4;
                        }
                        zzi();
                    }
                }
            } else {
                byte[] zzN = zzenVar.zzN();
                int zzc = zzenVar.zzc();
                int zzd5 = zzenVar.zzd();
                while (true) {
                    if (zzc < zzd5) {
                        i12 = zzc + 1;
                        b10 = zzN[zzc];
                        int i23 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                        if (this.zzm == 512 && zzl((byte) -1, (byte) i23)) {
                            if (this.zzo) {
                                break;
                            }
                            int i24 = zzc - 1;
                            zzenVar.zzL(zzc);
                            zzem zzemVar3 = this.zzc;
                            if (zzm(zzenVar, zzemVar3.zza, 1)) {
                                zzemVar3.zzl(4);
                                int zzd6 = zzemVar3.zzd(1);
                                int i25 = this.zzp;
                                if (i25 == -1 || zzd6 == i25) {
                                    if (this.zzq != -1) {
                                        if (!zzm(zzenVar, zzemVar3.zza, 1)) {
                                            break;
                                        }
                                        zzemVar3.zzl(i17);
                                        if (zzemVar3.zzd(4) == this.zzq) {
                                            zzenVar.zzL(zzc + 1);
                                        }
                                    }
                                    if (!zzm(zzenVar, zzemVar3.zza, 4)) {
                                        break;
                                    }
                                    zzemVar3.zzl(14);
                                    int zzd7 = zzemVar3.zzd(13);
                                    c10 = 7;
                                    if (zzd7 >= 7) {
                                        byte[] zzN2 = zzenVar.zzN();
                                        int zzd8 = zzenVar.zzd();
                                        int i26 = i24 + zzd7;
                                        if (i26 < zzd8) {
                                            byte b11 = zzN2[i26];
                                            if (b11 == -1) {
                                                int i27 = i26 + 1;
                                                if (i27 == zzd8) {
                                                    break;
                                                }
                                                byte b12 = zzN2[i27];
                                                if (zzl((byte) -1, b12) && ((b12 & 8) >> 3) == zzd6) {
                                                    break;
                                                }
                                            } else if (b11 == 73) {
                                                int i28 = i26 + 1;
                                                if (i28 == zzd8) {
                                                    break;
                                                } else if (zzN2[i28] == 68) {
                                                    int i29 = i26 + 2;
                                                    if (i29 == zzd8) {
                                                        break;
                                                    } else if (zzN2[i29] == 51) {
                                                        break;
                                                    }
                                                }
                                            }
                                        } else {
                                            break;
                                        }
                                    }
                                }
                            }
                            c10 = 7;
                        } else {
                            c10 = c12;
                        }
                        int i30 = this.zzm;
                        int i31 = i30 | i23;
                        if (i31 != 329) {
                            if (i31 != 511) {
                                if (i31 != 836) {
                                    if (i31 != 1075) {
                                        if (i30 != 256) {
                                            this.zzm = 256;
                                            c12 = c10;
                                            i16 = 0;
                                            i17 = 2;
                                        } else {
                                            i13 = 2;
                                            c11 = 3;
                                            i14 = 0;
                                            i16 = i14;
                                            zzc = i12;
                                            c12 = c10;
                                            i17 = i13;
                                        }
                                    } else {
                                        this.zzk = 2;
                                        this.zzl = 3;
                                        this.zzu = 0;
                                        this.zzd.zzL(0);
                                        zzenVar.zzL(i12);
                                        i17 = 2;
                                        i16 = 0;
                                        break;
                                    }
                                } else {
                                    i13 = 2;
                                    c11 = 3;
                                    i14 = 0;
                                    i15 = 1024;
                                }
                            } else {
                                i13 = 2;
                                c11 = 3;
                                i14 = 0;
                                i15 = 512;
                            }
                        } else {
                            i13 = 2;
                            c11 = 3;
                            i14 = 0;
                            i15 = ViewUtils.EDGE_TO_EDGE_FLAGS;
                        }
                        this.zzm = i15;
                        i16 = i14;
                        zzc = i12;
                        c12 = c10;
                        i17 = i13;
                    } else {
                        zzenVar.zzL(zzc);
                        break;
                    }
                }
                this.zzr = (b10 & 8) >> 3;
                if (1 != ((b10 & 1) ^ 1)) {
                    z11 = false;
                } else {
                    z11 = true;
                }
                this.zzn = z11;
                if (!this.zzo) {
                    this.zzk = 1;
                    this.zzl = 0;
                } else {
                    zzi();
                }
                zzenVar.zzL(i12);
                i16 = 0;
                i17 = 2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzh = zzaonVar.zzb();
        zzafb zzw = zzadyVar.zzw(zzaonVar.zza(), 1);
        this.zzi = zzw;
        this.zzw = zzw;
        if (this.zzb) {
            zzaonVar.zzc();
            zzafb zzw2 = zzadyVar.zzw(zzaonVar.zza(), 5);
            this.zzj = zzw2;
            zzx zzxVar = new zzx();
            zzxVar.zzS(zzaonVar.zzb());
            zzxVar.zzG(this.zzg);
            zzxVar.zzah(MimeTypes.APPLICATION_ID3);
            zzw2.zzm(zzxVar.zzan());
            return;
        }
        this.zzj = new zzadr();
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        this.zzv = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        this.zzv = -9223372036854775807L;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
    }
}
