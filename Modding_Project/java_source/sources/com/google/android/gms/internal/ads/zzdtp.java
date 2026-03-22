package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.vungle.ads.internal.Constants;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdtp {
    private final zzble zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdtp(zzble zzbleVar) {
        this.zza = zzbleVar;
    }

    private final void zzs(zzdtn zzdtnVar) throws RemoteException {
        String zza = zzdtn.zza(zzdtnVar);
        String concat = "Dispatching AFMA event on publisher webview: ".concat(zza);
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
        this.zza.zzb(zza);
    }

    public final void zza() throws RemoteException {
        zzs(new zzdtn(MobileAdsBridgeBase.initializeMethodName, null));
    }

    public final void zzb(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onAdClicked";
        this.zza.zzb(zzdtn.zza(zzdtnVar));
    }

    public final void zzc(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onAdClosed";
        zzs(zzdtnVar);
    }

    public final void zzd(long j10, int i10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onAdFailedToLoad";
        zzdtnVar.zzd = Integer.valueOf(i10);
        zzs(zzdtnVar);
    }

    public final void zze(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onAdLoaded";
        zzs(zzdtnVar);
    }

    public final void zzf(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdtnVar);
    }

    public final void zzg(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_INTERSTITIAL, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onAdOpened";
        zzs(zzdtnVar);
    }

    public final void zzh(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn("creation", null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "nativeObjectCreated";
        zzs(zzdtnVar);
    }

    public final void zzi(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn("creation", null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "nativeObjectNotCreated";
        zzs(zzdtnVar);
    }

    public final void zzj(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onAdClicked";
        zzs(zzdtnVar);
    }

    public final void zzk(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onRewardedAdClosed";
        zzs(zzdtnVar);
    }

    public final void zzl(long j10, zzbws zzbwsVar) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onUserEarnedReward";
        zzdtnVar.zze = zzbwsVar.zzf();
        zzdtnVar.zzf = Integer.valueOf(zzbwsVar.zze());
        zzs(zzdtnVar);
    }

    public final void zzm(long j10, int i10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onRewardedAdFailedToLoad";
        zzdtnVar.zzd = Integer.valueOf(i10);
        zzs(zzdtnVar);
    }

    public final void zzn(long j10, int i10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onRewardedAdFailedToShow";
        zzdtnVar.zzd = Integer.valueOf(i10);
        zzs(zzdtnVar);
    }

    public final void zzo(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onAdImpression";
        zzs(zzdtnVar);
    }

    public final void zzp(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onRewardedAdLoaded";
        zzs(zzdtnVar);
    }

    public final void zzq(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onNativeAdObjectNotAvailable";
        zzs(zzdtnVar);
    }

    public final void zzr(long j10) throws RemoteException {
        zzdtn zzdtnVar = new zzdtn(Constants.PLACEMENT_TYPE_REWARDED, null);
        zzdtnVar.zza = Long.valueOf(j10);
        zzdtnVar.zzc = "onRewardedAdOpened";
        zzs(zzdtnVar);
    }
}
