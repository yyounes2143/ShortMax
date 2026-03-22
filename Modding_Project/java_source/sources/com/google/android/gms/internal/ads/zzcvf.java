package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcvf {
    private Context zza;
    private zzfcw zzb;
    private Bundle zzc;
    @Nullable
    private zzfco zzd;
    @Nullable
    private zzcuy zze;
    @Nullable
    private zzedr zzf;
    private int zzg = 0;

    public final zzcvf zze(@Nullable zzedr zzedrVar) {
        this.zzf = zzedrVar;
        return this;
    }

    public final zzcvf zzf(Context context) {
        this.zza = context;
        return this;
    }

    public final zzcvf zzg(Bundle bundle) {
        this.zzc = bundle;
        return this;
    }

    public final zzcvf zzh(@Nullable zzcuy zzcuyVar) {
        this.zze = zzcuyVar;
        return this;
    }

    public final zzcvf zzi(int i10) {
        this.zzg = i10;
        return this;
    }

    public final zzcvf zzj(zzfco zzfcoVar) {
        this.zzd = zzfcoVar;
        return this;
    }

    public final zzcvf zzk(zzfcw zzfcwVar) {
        this.zzb = zzfcwVar;
        return this;
    }

    public final zzcvh zzl() {
        return new zzcvh(this, null);
    }
}
