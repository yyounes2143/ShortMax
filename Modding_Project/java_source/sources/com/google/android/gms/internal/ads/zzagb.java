package com.google.android.gms.internal.ads;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import java.util.Collections;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzagb extends zzagf {
    private static final int[] zzb = {AVMDLDataLoader.KeyIsIsMaxTlsVersion, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzagb(zzafb zzafbVar) {
        super(zzafbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    protected final boolean zza(zzen zzenVar) throws zzage {
        String str;
        if (!this.zzc) {
            int zzm = zzenVar.zzm();
            int i10 = zzm >> 4;
            this.zze = i10;
            if (i10 == 2) {
                int i11 = zzb[(zzm >> 2) & 3];
                zzx zzxVar = new zzx();
                zzxVar.zzG("video/x-flv");
                zzxVar.zzah(MimeTypes.AUDIO_MPEG);
                zzxVar.zzD(1);
                zzxVar.zzai(i11);
                this.zza.zzm(zzxVar.zzan());
                this.zzd = true;
            } else if (i10 != 7 && i10 != 8) {
                if (i10 != 10) {
                    throw new zzage("Audio format not supported: " + i10);
                }
            } else {
                zzx zzxVar2 = new zzx();
                zzxVar2.zzG("video/x-flv");
                if (i10 == 7) {
                    str = MimeTypes.AUDIO_ALAW;
                } else {
                    str = MimeTypes.AUDIO_MLAW;
                }
                zzxVar2.zzah(str);
                zzxVar2.zzD(1);
                zzxVar2.zzai(8000);
                this.zza.zzm(zzxVar2.zzan());
                this.zzd = true;
            }
            this.zzc = true;
        } else {
            zzenVar.zzM(1);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    protected final boolean zzb(zzen zzenVar, long j10) throws zzaz {
        if (this.zze == 2) {
            int zza = zzenVar.zza();
            zzafb zzafbVar = this.zza;
            zzafbVar.zzr(zzenVar, zza);
            zzafbVar.zzt(j10, 1, zza, 0, null);
            return true;
        }
        int zzm = zzenVar.zzm();
        if (zzm == 0 && !this.zzd) {
            int zza2 = zzenVar.zza();
            byte[] bArr = new byte[zza2];
            zzenVar.zzH(bArr, 0, zza2);
            zzacp zza3 = zzacr.zza(bArr);
            zzx zzxVar = new zzx();
            zzxVar.zzG("video/x-flv");
            zzxVar.zzah(MimeTypes.AUDIO_AAC);
            zzxVar.zzE(zza3.zzc);
            zzxVar.zzD(zza3.zzb);
            zzxVar.zzai(zza3.zza);
            zzxVar.zzT(Collections.singletonList(bArr));
            this.zza.zzm(zzxVar.zzan());
            this.zzd = true;
            return false;
        } else if (this.zze == 10 && zzm != 1) {
            return false;
        } else {
            int zza4 = zzenVar.zza();
            zzafb zzafbVar2 = this.zza;
            zzafbVar2.zzr(zzenVar, zza4);
            zzafbVar2.zzt(j10, 1, zza4, 0, null);
            return true;
        }
    }
}
