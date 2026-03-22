package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.Inflater;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzama implements zzakt {
    private final zzen zza = new zzen();
    private final zzen zzb = new zzen();
    private final zzalz zzc;
    @Nullable
    private Inflater zzd;

    public zzama(List list) {
        zzalz zzalzVar = new zzalz();
        this.zzc = zzalzVar;
        zzalzVar.zzb(new String((byte[]) list.get(0), StandardCharsets.UTF_8));
    }

    @Override // com.google.android.gms.internal.ads.zzakt
    public final void zza(byte[] bArr, int i10, int i11, zzaks zzaksVar, zzdn zzdnVar) {
        zzfyq zzn;
        zzen zzenVar = this.zza;
        zzenVar.zzJ(bArr, i11 + i10);
        zzenVar.zzL(i10);
        if (this.zzd == null) {
            this.zzd = new Inflater();
        }
        zzen zzenVar2 = this.zzb;
        if (zzex.zzO(zzenVar, zzenVar2, this.zzd)) {
            zzenVar.zzJ(zzenVar2.zzN(), zzenVar2.zzd());
        }
        zzalz zzalzVar = this.zzc;
        zzalzVar.zzd();
        int zza = zzenVar.zza();
        zzcu zzcuVar = null;
        if (zza >= 2 && zzenVar.zzq() == zza) {
            zzalzVar.zzc(zzenVar);
            zzcuVar = zzalzVar.zza(zzenVar);
        }
        if (zzcuVar != null) {
            zzn = zzfyq.zzo(zzcuVar);
        } else {
            zzn = zzfyq.zzn();
        }
        zzdnVar.zza(new zzakl(zzn, -9223372036854775807L, 5000000L));
    }
}
