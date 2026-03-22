package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Arrays;
import kotlin.jvm.internal.ByteCompanionObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzajy extends zzakh {
    @Nullable
    private zzaeg zza;
    @Nullable
    private zzajx zzb;

    private static boolean zzd(byte[] bArr) {
        if (bArr[0] != -1) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzakh
    protected final long zza(zzen zzenVar) {
        if (zzd(zzenVar.zzN())) {
            int i10 = (zzenVar.zzN()[2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) >> 4;
            if (i10 != 6) {
                if (i10 == 7) {
                    i10 = 7;
                }
                int zza = zzaec.zza(zzenVar, i10);
                zzenVar.zzL(0);
                return zza;
            }
            zzenVar.zzM(4);
            zzenVar.zzx();
            int zza2 = zzaec.zza(zzenVar, i10);
            zzenVar.zzL(0);
            return zza2;
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzakh
    public final void zzb(boolean z10) {
        super.zzb(z10);
        if (z10) {
            this.zza = null;
            this.zzb = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzakh
    protected final boolean zzc(zzen zzenVar, long j10, zzake zzakeVar) {
        byte[] zzN = zzenVar.zzN();
        zzaeg zzaegVar = this.zza;
        if (zzaegVar == null) {
            zzaeg zzaegVar2 = new zzaeg(zzN, 17);
            this.zza = zzaegVar2;
            zzx zzb = zzaegVar2.zzc(Arrays.copyOfRange(zzN, 9, zzenVar.zzd()), null).zzb();
            zzb.zzG("audio/ogg");
            zzakeVar.zza = zzb.zzan();
            return true;
        } else if ((zzN[0] & ByteCompanionObject.MAX_VALUE) == 3) {
            zzaef zzb2 = zzaed.zzb(zzenVar);
            zzaeg zzf = zzaegVar.zzf(zzb2);
            this.zza = zzf;
            this.zzb = new zzajx(zzf, zzb2);
            return true;
        } else if (!zzd(zzN)) {
            return true;
        } else {
            zzajx zzajxVar = this.zzb;
            if (zzajxVar != null) {
                zzajxVar.zza(j10);
                zzakeVar.zzb = this.zzb;
            }
            zzakeVar.zza.getClass();
            return false;
        }
    }
}
