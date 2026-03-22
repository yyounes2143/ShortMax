package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbmz extends AdManagerInterstitialAd {
    private final Context zza;
    private final com.google.android.gms.ads.internal.client.zzq zzb;
    private final com.google.android.gms.ads.internal.client.zzbx zzc;
    private final AtomicReference zzd;
    private final zzbpm zze;
    private final long zzf;
    @Nullable
    private AppEventListener zzg;
    @Nullable
    private FullScreenContentCallback zzh;
    @Nullable
    private OnPaidEventListener zzi;
    private final AtomicLong zzj;

    public zzbmz(Context context, com.google.android.gms.ads.internal.client.zzbx zzbxVar) {
        this.zze = new zzbpm();
        this.zzf = System.currentTimeMillis();
        this.zzj = new AtomicLong();
        this.zza = context;
        this.zzd = new AtomicReference();
        this.zzb = com.google.android.gms.ads.internal.client.zzq.zza;
        this.zzc = zzbxVar;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final String getAdUnitId() {
        String str;
        String str2;
        AtomicReference atomicReference = this.zzd;
        if (atomicReference.get() != null) {
            return (String) atomicReference.get();
        }
        synchronized (this) {
            try {
                str = this.zzc.zzs();
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
                str = null;
            }
            if (str == null) {
                this.zzd.set("");
            } else {
                this.zzd.set(str);
            }
            str2 = (String) this.zzd.get();
        }
        return str2;
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    @Nullable
    public final AppEventListener getAppEventListener() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    @Nullable
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzh;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    @Nullable
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzi;
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final long getPlacementId() {
        AtomicLong atomicLong = this.zzj;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        synchronized (this) {
            try {
                try {
                    com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
                    if (zzbxVar != null) {
                        long zzc = zzbxVar.zzc();
                        AtomicLong atomicLong2 = this.zzj;
                        atomicLong2.set(zzc);
                        return atomicLong2.get();
                    }
                } catch (RemoteException e10) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
                }
                return 0L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    @NonNull
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzea zzeaVar = null;
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                zzeaVar = zzbxVar.zzl();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
        return ResponseInfo.zzb(zzeaVar);
    }

    @Override // com.google.android.gms.ads.admanager.AdManagerInterstitialAd
    public final void setAppEventListener(@Nullable AppEventListener appEventListener) {
        zzazr zzazrVar;
        try {
            this.zzg = appEventListener;
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                if (appEventListener != null) {
                    zzazrVar = new zzazr(appEventListener);
                } else {
                    zzazrVar = null;
                }
                zzbxVar.zzH(zzazrVar);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback) {
        try {
            this.zzh = fullScreenContentCallback;
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                zzbxVar.zzK(new com.google.android.gms.ads.internal.client.zzbe(fullScreenContentCallback));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setImmersiveMode(boolean z10) {
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                zzbxVar.zzM(z10);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zzi = onPaidEventListener;
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                zzbxVar.zzQ(new com.google.android.gms.ads.internal.client.zzfu(onPaidEventListener));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void setPlacementId(long j10) {
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                zzbxVar.zzR(j10);
                this.zzj.set(j10);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.interstitial.InterstitialAd
    public final void show(@NonNull Activity activity) {
        if (activity == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                zzbxVar.zzY(ObjectWrapper.wrap(activity));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zza(com.google.android.gms.ads.internal.client.zzek zzekVar, AdLoadCallback adLoadCallback) {
        try {
            com.google.android.gms.ads.internal.client.zzbx zzbxVar = this.zzc;
            if (zzbxVar != null) {
                zzekVar.zzp(this.zzf);
                zzbxVar.zzz(this.zzb.zza(this.zza, zzekVar), new com.google.android.gms.ads.internal.client.zzh(adLoadCallback, this));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            adLoadCallback.onAdFailedToLoad(new LoadAdError(0, "Internal Error.", MobileAds.ERROR_DOMAIN, null, null));
        }
    }

    public zzbmz(Context context, String str) {
        zzbpm zzbpmVar = new zzbpm();
        this.zze = zzbpmVar;
        this.zzf = System.currentTimeMillis();
        this.zzj = new AtomicLong();
        this.zza = context;
        this.zzd = new AtomicReference(str);
        this.zzb = com.google.android.gms.ads.internal.client.zzq.zza;
        this.zzc = com.google.android.gms.ads.internal.client.zzbb.zza().zzf(context, new com.google.android.gms.ads.internal.client.zzr(), str, zzbpmVar);
    }

    public zzbmz(Context context, String str, com.google.android.gms.ads.internal.client.zzbx zzbxVar) {
        com.google.android.gms.ads.internal.client.zzq zzqVar = com.google.android.gms.ads.internal.client.zzq.zza;
        this.zze = new zzbpm();
        this.zzf = System.currentTimeMillis();
        this.zzj = new AtomicLong();
        this.zza = context;
        this.zzd = new AtomicReference(str);
        this.zzb = zzqVar;
        this.zzc = zzbxVar;
    }
}
