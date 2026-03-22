package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbxe extends RewardedAd {
    private final AtomicReference zza;
    private final zzbwv zzb;
    private final Context zzc;
    private final zzbxn zzd;
    @Nullable
    private OnAdMetadataChangedListener zze;
    @Nullable
    private OnPaidEventListener zzf;
    @Nullable
    private FullScreenContentCallback zzg;
    private final long zzh;
    private final AtomicLong zzi;

    public zzbxe(Context context, zzbwv zzbwvVar) {
        this.zzh = System.currentTimeMillis();
        this.zzi = new AtomicLong();
        this.zzc = context.getApplicationContext();
        this.zza = new AtomicReference();
        this.zzb = zzbwvVar;
        this.zzd = new zzbxn();
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final Bundle getAdMetadata() {
        try {
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                return zzbwvVar.zzc();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @NonNull
    public final String getAdUnitId() {
        String str;
        String str2;
        AtomicReference atomicReference = this.zza;
        if (atomicReference.get() != null) {
            return (String) atomicReference.get();
        }
        synchronized (this) {
            try {
                str = this.zzb.zzf();
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
                str = null;
            }
            if (str == null) {
                this.zza.set("");
            } else {
                this.zza.set(str);
            }
            str2 = (String) this.zza.get();
        }
        return str2;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @Nullable
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @Nullable
    public final OnAdMetadataChangedListener getOnAdMetadataChangedListener() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @Nullable
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final long getPlacementId() {
        long j10;
        AtomicLong atomicLong = this.zzi;
        long j11 = 0;
        if (atomicLong.get() != 0) {
            return atomicLong.get();
        }
        synchronized (this) {
            try {
                zzbwv zzbwvVar = this.zzb;
                if (zzbwvVar != null) {
                    j11 = zzbwvVar.zzb();
                }
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            }
            AtomicLong atomicLong2 = this.zzi;
            atomicLong2.set(j11);
            j10 = atomicLong2.get();
        }
        return j10;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @NonNull
    public final ResponseInfo getResponseInfo() {
        com.google.android.gms.ads.internal.client.zzea zzeaVar = null;
        try {
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzeaVar = zzbwvVar.zzd();
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
        return ResponseInfo.zzb(zzeaVar);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    @NonNull
    public final RewardItem getRewardItem() {
        zzbws zzbwsVar;
        try {
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzbwsVar = zzbwvVar.zze();
            } else {
                zzbwsVar = null;
            }
            if (zzbwsVar == null) {
                return RewardItem.DEFAULT_REWARD;
            }
            return new zzbxf(zzbwsVar);
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            return RewardItem.DEFAULT_REWARD;
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback) {
        this.zzg = fullScreenContentCallback;
        this.zzd.zzb(fullScreenContentCallback);
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setImmersiveMode(boolean z10) {
        try {
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzbwvVar.zzj(z10);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnAdMetadataChangedListener(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.zze = onAdMetadataChangedListener;
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzbwvVar.zzk(new com.google.android.gms.ads.internal.client.zzft(onAdMetadataChangedListener));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.zzf = onPaidEventListener;
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzbwvVar.zzl(new com.google.android.gms.ads.internal.client.zzfu(onPaidEventListener));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setPlacementId(long j10) {
        try {
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzbwvVar.zzm(j10);
                this.zzi.set(j10);
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void setServerSideVerificationOptions(@Nullable ServerSideVerificationOptions serverSideVerificationOptions) {
        if (serverSideVerificationOptions != null) {
            try {
                zzbwv zzbwvVar = this.zzb;
                if (zzbwvVar != null) {
                    zzbwvVar.zzo(new zzbxj(serverSideVerificationOptions));
                }
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
            }
        }
    }

    @Override // com.google.android.gms.ads.rewarded.RewardedAd
    public final void show(@NonNull Activity activity, @NonNull OnUserEarnedRewardListener onUserEarnedRewardListener) {
        zzbxn zzbxnVar = this.zzd;
        zzbxnVar.zzc(onUserEarnedRewardListener);
        if (activity == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzbwvVar.zzn(zzbxnVar);
                zzbwvVar.zzp(ObjectWrapper.wrap(activity));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public final void zza(com.google.android.gms.ads.internal.client.zzek zzekVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            zzbwv zzbwvVar = this.zzb;
            if (zzbwvVar != null) {
                zzekVar.zzp(this.zzh);
                zzbwvVar.zzh(com.google.android.gms.ads.internal.client.zzq.zza.zza(this.zzc, zzekVar), new zzbxi(rewardedAdLoadCallback, this));
            }
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e10);
        }
    }

    public zzbxe(Context context, String str) {
        this(context, str, com.google.android.gms.ads.internal.client.zzbb.zza().zzs(context, str, new zzbpm()));
    }

    public zzbxe(Context context, String str, zzbwv zzbwvVar) {
        this.zzh = System.currentTimeMillis();
        this.zzi = new AtomicLong();
        this.zzc = context.getApplicationContext();
        this.zza = new AtomicReference(str);
        this.zzb = zzbwvVar;
        this.zzd = new zzbxn();
    }
}
