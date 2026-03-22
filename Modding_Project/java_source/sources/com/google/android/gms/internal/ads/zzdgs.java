package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbcj;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdgs implements zzcvy, zzddi {
    private final zzbyk zza;
    private final Context zzb;
    private final zzbyo zzc;
    @Nullable
    private final View zzd;
    private String zze;
    private final zzbcj.zza.EnumC0294zza zzf;

    public zzdgs(zzbyk zzbykVar, Context context, zzbyo zzbyoVar, @Nullable View view, zzbcj.zza.EnumC0294zza enumC0294zza) {
        this.zza = zzbykVar;
        this.zzb = context;
        this.zzc = zzbyoVar;
        this.zzd = view;
        this.zzf = enumC0294zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zza() {
        this.zza.zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzc() {
        View view = this.zzd;
        if (view != null && this.zze != null) {
            this.zzc.zzo(view.getContext(), this.zze);
        }
        this.zza.zzb(true);
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzdu(zzbwc zzbwcVar, String str, String str2) {
        zzbyo zzbyoVar = this.zzc;
        Context context = this.zzb;
        if (zzbyoVar.zzp(context)) {
            try {
                zzbyoVar.zzl(context, zzbyoVar.zzb(context), this.zza.zza(), zzbwcVar.zzc(), zzbwcVar.zzb());
            } catch (RemoteException e10) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Remote Exception to get reward item.", e10);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public final void zzj() {
        String str;
        zzbcj.zza.EnumC0294zza enumC0294zza = this.zzf;
        if (enumC0294zza == zzbcj.zza.EnumC0294zza.APP_OPEN) {
            return;
        }
        String zzd = this.zzc.zzd(this.zzb);
        this.zze = zzd;
        String valueOf = String.valueOf(zzd);
        if (enumC0294zza == zzbcj.zza.EnumC0294zza.REWARD_BASED_VIDEO_AD) {
            str = "/Rewarded";
        } else {
            str = "/Interstitial";
        }
        this.zze = valueOf.concat(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzddi
    public final void zzi() {
    }
}
