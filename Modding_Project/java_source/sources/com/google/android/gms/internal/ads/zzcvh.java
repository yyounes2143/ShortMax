package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcvh {
    private final Context zza;
    private final zzfcw zzb;
    private final Bundle zzc;
    @Nullable
    private final zzfco zzd;
    @Nullable
    private final zzcuy zze;
    @Nullable
    private final zzedr zzf;
    private final int zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzcvh(zzcvf zzcvfVar, zzcvg zzcvgVar) {
        this.zza = zzcvf.zzb(zzcvfVar);
        this.zzb = zzcvf.zzo(zzcvfVar);
        this.zzc = zzcvf.zzc(zzcvfVar);
        this.zzd = zzcvf.zzn(zzcvfVar);
        this.zze = zzcvf.zzd(zzcvfVar);
        this.zzf = zzcvf.zzm(zzcvfVar);
        this.zzg = zzcvf.zza(zzcvfVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zza() {
        return this.zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context zzb(Context context) {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final Bundle zzc() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final zzcuy zzd() {
        return this.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzcvf zze() {
        zzcvf zzcvfVar = new zzcvf();
        zzcvfVar.zzf(this.zza);
        zzcvfVar.zzk(this.zzb);
        zzcvfVar.zzg(this.zzc);
        zzcvfVar.zzh(this.zze);
        zzcvfVar.zze(this.zzf);
        return zzcvfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzedr zzf(String str) {
        zzedr zzedrVar = this.zzf;
        if (zzedrVar != null) {
            return zzedrVar;
        }
        return new zzedr(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final zzfco zzg() {
        return this.zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzfcw zzh() {
        return this.zzb;
    }
}
