package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzane implements zzamz {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    @Nullable
    private final zzaor zzb;
    private zzand zzg;
    private long zzh;
    private String zzi;
    private zzafb zzj;
    private boolean zzk;
    private final boolean[] zzd = new boolean[4];
    private final zzanc zze = new zzanc(128);
    private long zzl = -9223372036854775807L;
    @Nullable
    private final zzanr zzf = new zzanr(178, 128);
    @Nullable
    private final zzen zzc = new zzen();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzane(@Nullable zzaor zzaorVar, String str) {
        this.zzb = zzaorVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zza(zzen zzenVar) {
        int i10;
        int i11;
        int i12 = 3;
        zzdd.zzb(this.zzg);
        zzdd.zzb(this.zzj);
        int zzc = zzenVar.zzc();
        int zzd = zzenVar.zzd();
        byte[] zzN = zzenVar.zzN();
        this.zzh += zzenVar.zza();
        this.zzj.zzr(zzenVar, zzenVar.zza());
        while (true) {
            int zza2 = zzfv.zza(zzN, zzc, zzd, this.zzd);
            if (zza2 == zzd) {
                break;
            }
            int i13 = zza2 + 3;
            int i14 = zzenVar.zzN()[i13] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            int i15 = zza2 - zzc;
            if (!this.zzk) {
                if (i15 > 0) {
                    this.zze.zza(zzN, zzc, zza2);
                }
                if (i15 < 0) {
                    i11 = -i15;
                } else {
                    i11 = 0;
                }
                zzanc zzancVar = this.zze;
                if (zzancVar.zzc(i14, i11)) {
                    zzafb zzafbVar = this.zzj;
                    int i16 = zzancVar.zzb;
                    String str = this.zzi;
                    str.getClass();
                    byte[] copyOf = Arrays.copyOf(zzancVar.zzc, zzancVar.zza);
                    zzem zzemVar = new zzem(copyOf, copyOf.length);
                    zzemVar.zzo(i16);
                    zzemVar.zzo(4);
                    zzemVar.zzm();
                    zzemVar.zzn(8);
                    if (zzemVar.zzp()) {
                        zzemVar.zzn(4);
                        zzemVar.zzn(i12);
                    }
                    int zzd2 = zzemVar.zzd(4);
                    float f10 = 1.0f;
                    if (zzd2 == 15) {
                        int zzd3 = zzemVar.zzd(8);
                        int zzd4 = zzemVar.zzd(8);
                        if (zzd4 == 0) {
                            zzea.zzf("H263Reader", "Invalid aspect ratio");
                        } else {
                            f10 = zzd3 / zzd4;
                        }
                    } else if (zzd2 < 7) {
                        f10 = zza[zzd2];
                    } else {
                        zzea.zzf("H263Reader", "Invalid aspect ratio");
                    }
                    float f11 = f10;
                    if (zzemVar.zzp()) {
                        zzemVar.zzn(2);
                        zzemVar.zzn(1);
                        if (zzemVar.zzp()) {
                            zzemVar.zzn(15);
                            zzemVar.zzm();
                            zzemVar.zzn(15);
                            zzemVar.zzm();
                            zzemVar.zzn(15);
                            zzemVar.zzm();
                            zzemVar.zzn(3);
                            zzemVar.zzn(11);
                            zzemVar.zzm();
                            zzemVar.zzn(15);
                            zzemVar.zzm();
                        }
                    }
                    if (zzemVar.zzd(2) != 0) {
                        zzea.zzf("H263Reader", "Unhandled video object layer shape");
                    }
                    zzemVar.zzm();
                    int zzd5 = zzemVar.zzd(16);
                    zzemVar.zzm();
                    if (zzemVar.zzp()) {
                        if (zzd5 == 0) {
                            zzea.zzf("H263Reader", "Invalid vop_increment_time_resolution");
                        } else {
                            int i17 = zzd5 - 1;
                            int i18 = 0;
                            while (i17 > 0) {
                                i17 >>= 1;
                                i18++;
                            }
                            zzemVar.zzn(i18);
                        }
                    }
                    zzemVar.zzm();
                    int zzd6 = zzemVar.zzd(13);
                    zzemVar.zzm();
                    int zzd7 = zzemVar.zzd(13);
                    zzemVar.zzm();
                    zzemVar.zzm();
                    zzx zzxVar = new zzx();
                    zzxVar.zzS(str);
                    zzxVar.zzG("video/mp2t");
                    zzxVar.zzah(MimeTypes.VIDEO_MP4V);
                    zzxVar.zzam(zzd6);
                    zzxVar.zzQ(zzd7);
                    zzxVar.zzad(f11);
                    zzxVar.zzT(Collections.singletonList(copyOf));
                    zzafbVar.zzm(zzxVar.zzan());
                    this.zzk = true;
                }
            }
            this.zzg.zza(zzN, zzc, zza2);
            zzanr zzanrVar = this.zzf;
            if (i15 > 0) {
                zzanrVar.zza(zzN, zzc, zza2);
                i10 = 0;
            } else {
                i10 = -i15;
            }
            if (zzanrVar.zzd(i10)) {
                int zzc2 = zzfv.zzc(zzanrVar.zza, zzanrVar.zzb);
                zzen zzenVar2 = this.zzc;
                String str2 = zzex.zza;
                zzenVar2.zzJ(zzanrVar.zza, zzc2);
                this.zzb.zzb(this.zzl, zzenVar2);
            }
            if (i14 == 178) {
                if (zzenVar.zzN()[zza2 + 2] == 1) {
                    zzanrVar.zzc(178);
                }
                i14 = 178;
            }
            int i19 = zzd - zza2;
            this.zzg.zzb(this.zzh - i19, i19, this.zzk);
            this.zzg.zzc(i14, this.zzl);
            zzc = i13;
            i12 = 3;
        }
        if (!this.zzk) {
            this.zze.zza(zzN, zzc, zzd);
        }
        this.zzg.zza(zzN, zzc, zzd);
        this.zzf.zza(zzN, zzc, zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzb(zzady zzadyVar, zzaon zzaonVar) {
        zzaonVar.zzc();
        this.zzi = zzaonVar.zzb();
        zzafb zzw = zzadyVar.zzw(zzaonVar.zza(), 2);
        this.zzj = zzw;
        this.zzg = new zzand(zzw);
        this.zzb.zzc(zzadyVar, zzaonVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzc(boolean z10) {
        zzdd.zzb(this.zzg);
        if (z10) {
            this.zzg.zzb(this.zzh, 0, this.zzk);
            this.zzg.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zzd(long j10, int i10) {
        this.zzl = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzamz
    public final void zze() {
        zzfv.zzi(this.zzd);
        this.zze.zzb();
        zzand zzandVar = this.zzg;
        if (zzandVar != null) {
            zzandVar.zzd();
        }
        this.zzf.zzb();
        this.zzh = 0L;
        this.zzl = -9223372036854775807L;
    }
}
