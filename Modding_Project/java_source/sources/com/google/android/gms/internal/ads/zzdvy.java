package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.LoadAdError;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdvy extends AdListener {
    final /* synthetic */ String zza;
    final /* synthetic */ BaseAdView zzb;
    final /* synthetic */ zzdwf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdvy(zzdwf zzdwfVar, String str, BaseAdView baseAdView) {
        this.zza = str;
        this.zzb = baseAdView;
        Objects.requireNonNull(zzdwfVar);
        this.zzc = zzdwfVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        String zzk;
        zzdwf zzdwfVar = this.zzc;
        zzk = zzdwf.zzk(loadAdError);
        zzdwfVar.zzl(zzk);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.zzc.zzg(this.zza, this.zzb);
    }
}
