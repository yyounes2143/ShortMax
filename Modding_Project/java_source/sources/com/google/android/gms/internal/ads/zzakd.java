package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzakd extends zzakh {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] zzb = {79, 112, 117, 115, 84, 97, 103, 115};
    private boolean zzc;

    public static boolean zzd(zzen zzenVar) {
        return zzk(zzenVar, zza);
    }

    private static boolean zzk(zzen zzenVar, byte[] bArr) {
        if (zzenVar.zza() < 8) {
            return false;
        }
        int zzc = zzenVar.zzc();
        byte[] bArr2 = new byte[8];
        zzenVar.zzH(bArr2, 0, 8);
        zzenVar.zzL(zzc);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.google.android.gms.internal.ads.zzakh
    protected final long zza(zzen zzenVar) {
        return zzg(zzaeq.zzd(zzenVar.zzN()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzakh
    public final void zzb(boolean z10) {
        super.zzb(z10);
        if (z10) {
            this.zzc = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakh
    protected final boolean zzc(zzen zzenVar, long j10, zzake zzakeVar) throws zzaz {
        if (zzk(zzenVar, zza)) {
            byte[] copyOf = Arrays.copyOf(zzenVar.zzN(), zzenVar.zzd());
            int i10 = copyOf[9] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            List zze = zzaeq.zze(copyOf);
            if (zzakeVar.zza == null) {
                zzx zzxVar = new zzx();
                zzxVar.zzG("audio/ogg");
                zzxVar.zzah(MimeTypes.AUDIO_OPUS);
                zzxVar.zzD(i10);
                zzxVar.zzai(48000);
                zzxVar.zzT(zze);
                zzakeVar.zza = zzxVar.zzan();
                return true;
            }
        } else if (zzk(zzenVar, zzb)) {
            zzdd.zzb(zzakeVar.zza);
            if (!this.zzc) {
                this.zzc = true;
                zzenVar.zzM(8);
                zzav zzb2 = zzafh.zzb(zzfyq.zzm(zzafh.zzc(zzenVar, false, false).zza));
                if (zzb2 != null) {
                    zzx zzb3 = zzakeVar.zza.zzb();
                    zzb3.zzaa(zzb2.zzd(zzakeVar.zza.zzl));
                    zzakeVar.zza = zzb3.zzan();
                }
            }
        } else {
            zzdd.zzb(zzakeVar.zza);
            return false;
        }
        return true;
    }
}
