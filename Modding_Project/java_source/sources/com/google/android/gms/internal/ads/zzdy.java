package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdy {
    public final Object zza;
    private zzt zzb = new zzt();
    private boolean zzc;
    private boolean zzd;

    public zzdy(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzdy.class == obj.getClass()) {
            return this.zza.equals(((zzdy) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(int i10, zzdw zzdwVar) {
        if (!this.zzd) {
            if (i10 != -1) {
                this.zzb.zza(i10);
            }
            this.zzc = true;
            zzdwVar.zza(this.zza);
        }
    }

    public final void zzb(zzdx zzdxVar) {
        if (!this.zzd && this.zzc) {
            zzv zzb = this.zzb.zzb();
            this.zzb = new zzt();
            this.zzc = false;
            zzdxVar.zza(this.zza, zzb);
        }
    }

    public final void zzc(zzdx zzdxVar) {
        this.zzd = true;
        if (this.zzc) {
            this.zzc = false;
            zzdxVar.zza(this.zza, this.zzb.zzb());
        }
    }
}
