package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdvz extends InterstitialAdLoadCallback {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdwf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdvz(zzdwf zzdwfVar, String str) {
        this.zza = str;
        Objects.requireNonNull(zzdwfVar);
        this.zzb = zzdwfVar;
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
        String zzk;
        zzdwf zzdwfVar = this.zzb;
        zzk = zzdwf.zzk(loadAdError);
        zzdwfVar.zzl(zzk);
    }

    @Override // com.google.android.gms.ads.AdLoadCallback
    public final /* bridge */ /* synthetic */ void onAdLoaded(@NonNull InterstitialAd interstitialAd) {
        this.zzb.zzg(this.zza, interstitialAd);
    }
}
