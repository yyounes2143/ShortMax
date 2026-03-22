package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzflp extends zzfll {
    private final zzfln zza;
    private zzfnz zzc;
    private zzfmy zzd;
    private final String zzg;
    private final zzfmm zzb = new zzfmm();
    private boolean zze = false;
    private boolean zzf = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzflp(zzflm zzflmVar, zzfln zzflnVar, String str) {
        this.zza = zzflnVar;
        this.zzg = str;
        zzk(null);
        if (zzflnVar.zzd() != zzflo.HTML && zzflnVar.zzd() != zzflo.JAVASCRIPT) {
            this.zzd = new zzfnc(str, zzflnVar.zzi(), null);
        } else {
            this.zzd = new zzfmz(str, zzflnVar.zza());
        }
        this.zzd.zzo();
        zzfmi.zza().zzd(this);
        this.zzd.zzf(zzflmVar);
    }

    private final void zzk(@Nullable View view) {
        this.zzc = new zzfnz(view);
    }

    @Override // com.google.android.gms.internal.ads.zzfll
    public final void zzb(View view, zzfls zzflsVar, @Nullable String str) {
        if (this.zzf) {
            return;
        }
        this.zzb.zzb(view, zzflsVar, "Ad overlay");
    }

    @Override // com.google.android.gms.internal.ads.zzfll
    public final void zzc() {
        if (this.zzf) {
            return;
        }
        this.zzc.clear();
        if (!this.zzf) {
            this.zzb.zzc();
        }
        this.zzf = true;
        this.zzd.zze();
        zzfmi.zza().zze(this);
        this.zzd.zzc();
        this.zzd = null;
    }

    @Override // com.google.android.gms.internal.ads.zzfll
    public final void zzd(@Nullable View view) {
        if (!this.zzf && zzf() != view) {
            zzk(view);
            this.zzd.zzb();
            Collection<zzflp> zzc = zzfmi.zza().zzc();
            if (zzc != null && !zzc.isEmpty()) {
                for (zzflp zzflpVar : zzc) {
                    if (zzflpVar != this && zzflpVar.zzf() == view) {
                        zzflpVar.zzc.clear();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfll
    public final void zze() {
        if (!this.zze && this.zzd != null) {
            this.zze = true;
            zzfmi.zza().zzf(this);
            this.zzd.zzl(zzfmq.zzb().zza());
            this.zzd.zzg(zzfmg.zza().zzb());
            this.zzd.zzi(this, this.zza);
        }
    }

    public final View zzf() {
        return (View) this.zzc.get();
    }

    public final zzfmy zzg() {
        return this.zzd;
    }

    public final String zzh() {
        return this.zzg;
    }

    public final List zzi() {
        return this.zzb.zza();
    }

    public final boolean zzj() {
        if (this.zze && !this.zzf) {
            return true;
        }
        return false;
    }
}
