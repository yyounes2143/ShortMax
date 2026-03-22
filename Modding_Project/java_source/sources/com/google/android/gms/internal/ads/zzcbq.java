package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcbq {
    private final Context zza;
    private final zzccb zzb;
    private final ViewGroup zzc;
    @Nullable
    private final zzdsj zzd;
    private zzcbp zze;

    public zzcbq(Context context, ViewGroup viewGroup, zzcfg zzcfgVar, @Nullable zzdsj zzdsjVar) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = viewGroup;
        this.zzb = zzcfgVar;
        this.zze = null;
        this.zzd = zzdsjVar;
    }

    public final zzcbp zza() {
        return this.zze;
    }

    @Nullable
    public final Integer zzb() {
        zzcbp zzcbpVar = this.zze;
        if (zzcbpVar != null) {
            return zzcbpVar.zzl();
        }
        return null;
    }

    public final void zzc(int i10, int i11, int i12, int i13) {
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzcbp zzcbpVar = this.zze;
        if (zzcbpVar != null) {
            zzcbpVar.zzF(i10, i11, i12, i13);
        }
    }

    public final void zzd(int i10, int i11, int i12, int i13, int i14, boolean z10, zzcca zzccaVar) {
        if (this.zze != null) {
            return;
        }
        zzccb zzccbVar = this.zzb;
        zzbdl.zza(zzccbVar.zzl().zza(), zzccbVar.zzk(), "vpr2");
        zzcbp zzcbpVar = new zzcbp(this.zza, zzccbVar, i14, z10, zzccbVar.zzl().zza(), zzccaVar, this.zzd);
        this.zze = zzcbpVar;
        this.zzc.addView(zzcbpVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zze.zzF(i10, i11, i12, i13);
        zzccbVar.zzz(false);
    }

    public final void zze() {
        Preconditions.checkMainThread("onDestroy must be called from the UI thread.");
        zzcbp zzcbpVar = this.zze;
        if (zzcbpVar != null) {
            zzcbpVar.zzq();
            this.zzc.removeView(this.zze);
            this.zze = null;
        }
    }

    public final void zzf() {
        Preconditions.checkMainThread("onPause must be called from the UI thread.");
        zzcbp zzcbpVar = this.zze;
        if (zzcbpVar != null) {
            zzcbpVar.zzu();
        }
    }

    public final void zzg(int i10) {
        zzcbp zzcbpVar = this.zze;
        if (zzcbpVar != null) {
            zzcbpVar.zzC(i10);
        }
    }
}
