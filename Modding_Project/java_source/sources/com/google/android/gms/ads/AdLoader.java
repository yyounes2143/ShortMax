package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.OnAdManagerAdViewLoadedListener;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzbq;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzek;
import com.google.android.gms.ads.internal.client.zzfk;
import com.google.android.gms.ads.internal.client.zzgc;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbfc;
import com.google.android.gms.internal.ads.zzbge;
import com.google.android.gms.internal.ads.zzbiq;
import com.google.android.gms.internal.ads.zzbis;
import com.google.android.gms.internal.ads.zzbit;
import com.google.android.gms.internal.ads.zzbpm;
import com.google.android.gms.internal.ads.zzbtd;
import com.google.android.gms.internal.ads.zzbtf;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public class AdLoader {
    private final zzq zza;
    private final Context zzb;
    private final zzbq zzc;

    /* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
    /* loaded from: classes4.dex */
    public static class Builder {
        private final Context zza;
        private final zzbt zzb;

        public Builder(@NonNull Context context, @NonNull String str) {
            zzbt zzd = zzbb.zza().zzd(context, str, new zzbpm());
            this.zza = (Context) Preconditions.checkNotNull(context, "context cannot be null");
            this.zzb = zzd;
        }

        @NonNull
        public AdLoader build() {
            try {
                return new AdLoader(this.zza, this.zzb.zze(), zzq.zza);
            } catch (RemoteException e10) {
                zzo.zzh("Failed to build AdLoader.", e10);
                return new AdLoader(this.zza, new zzfk().zzc(), zzq.zza);
            }
        }

        @NonNull
        public Builder forAdManagerAdView(@NonNull OnAdManagerAdViewLoadedListener onAdManagerAdViewLoadedListener, @NonNull AdSize... adSizeArr) {
            if (adSizeArr != null && adSizeArr.length > 0) {
                try {
                    this.zzb.zzj(new zzbis(onAdManagerAdViewLoadedListener), new zzr(this.zza, adSizeArr));
                } catch (RemoteException e10) {
                    zzo.zzk("Failed to add Google Ad Manager banner ad listener", e10);
                }
                return this;
            }
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }

        @NonNull
        public Builder forCustomFormatAd(@NonNull String str, @NonNull NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
            zzbtd zzbtdVar = new zzbtd(onCustomFormatAdLoadedListener, onCustomClickListener);
            try {
                this.zzb.zzh(str, zzbtdVar.zzb(), zzbtdVar.zza());
            } catch (RemoteException e10) {
                zzo.zzk("Failed to add custom format ad listener", e10);
            }
            return this;
        }

        @NonNull
        public Builder forNativeAd(@NonNull NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
            try {
                this.zzb.zzk(new zzbtf(onNativeAdLoadedListener));
            } catch (RemoteException e10) {
                zzo.zzk("Failed to add google native ad listener", e10);
            }
            return this;
        }

        @NonNull
        public Builder withAdListener(@NonNull AdListener adListener) {
            try {
                this.zzb.zzl(new com.google.android.gms.ads.internal.client.zzg(adListener));
            } catch (RemoteException e10) {
                zzo.zzk("Failed to set AdListener.", e10);
            }
            return this;
        }

        @NonNull
        public Builder withAdManagerAdViewOptions(@NonNull AdManagerAdViewOptions adManagerAdViewOptions) {
            try {
                this.zzb.zzm(adManagerAdViewOptions);
            } catch (RemoteException e10) {
                zzo.zzk("Failed to specify Ad Manager banner ad options", e10);
            }
            return this;
        }

        @NonNull
        public Builder withNativeAdOptions(@NonNull NativeAdOptions nativeAdOptions) {
            zzgc zzgcVar;
            try {
                zzbt zzbtVar = this.zzb;
                boolean shouldReturnUrlsForImageAssets = nativeAdOptions.shouldReturnUrlsForImageAssets();
                boolean shouldRequestMultipleImages = nativeAdOptions.shouldRequestMultipleImages();
                int adChoicesPlacement = nativeAdOptions.getAdChoicesPlacement();
                if (nativeAdOptions.getVideoOptions() != null) {
                    zzgcVar = new zzgc(nativeAdOptions.getVideoOptions());
                } else {
                    zzgcVar = null;
                }
                zzbtVar.zzo(new zzbge(4, shouldReturnUrlsForImageAssets, -1, shouldRequestMultipleImages, adChoicesPlacement, zzgcVar, nativeAdOptions.zzc(), nativeAdOptions.getMediaAspectRatio(), nativeAdOptions.zza(), nativeAdOptions.zzb(), nativeAdOptions.zzd() - 1));
            } catch (RemoteException e10) {
                zzo.zzk("Failed to specify native ad options", e10);
            }
            return this;
        }

        @Deprecated
        public final Builder zza(String str, com.google.android.gms.ads.formats.zzg zzgVar, @Nullable com.google.android.gms.ads.formats.zzf zzfVar) {
            zzbiq zzbiqVar = new zzbiq(zzgVar, zzfVar);
            try {
                this.zzb.zzh(str, zzbiqVar.zzd(), zzbiqVar.zzc());
            } catch (RemoteException e10) {
                zzo.zzk("Failed to add custom template ad listener", e10);
            }
            return this;
        }

        @Deprecated
        public final Builder zzb(com.google.android.gms.ads.formats.zzi zziVar) {
            try {
                this.zzb.zzk(new zzbit(zziVar));
            } catch (RemoteException e10) {
                zzo.zzk("Failed to add google native ad listener", e10);
            }
            return this;
        }

        @NonNull
        @Deprecated
        public final Builder zzc(@NonNull com.google.android.gms.ads.formats.NativeAdOptions nativeAdOptions) {
            try {
                this.zzb.zzo(new zzbge(nativeAdOptions));
            } catch (RemoteException e10) {
                zzo.zzk("Failed to specify native ad options", e10);
            }
            return this;
        }
    }

    AdLoader(Context context, zzbq zzbqVar, zzq zzqVar) {
        this.zzb = context;
        this.zzc = zzbqVar;
        this.zza = zzqVar;
    }

    public static /* synthetic */ void zza(AdLoader adLoader, zzek zzekVar) {
        try {
            adLoader.zzc.zzg(adLoader.zza.zza(adLoader.zzb, zzekVar));
        } catch (RemoteException e10) {
            zzo.zzh("Failed to load ad.", e10);
        }
    }

    private final void zzb(final zzek zzekVar) {
        Context context = this.zzb;
        zzbde.zza(context);
        if (((Boolean) zzbfc.zzc.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlE)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        AdLoader.zza(AdLoader.this, zzekVar);
                    }
                });
                return;
            }
        }
        try {
            this.zzc.zzg(this.zza.zza(context, zzekVar));
        } catch (RemoteException e10) {
            zzo.zzh("Failed to load ad.", e10);
        }
    }

    public boolean isLoading() {
        try {
            return this.zzc.zzi();
        } catch (RemoteException e10) {
            zzo.zzk("Failed to check if ad is loading.", e10);
            return false;
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(@NonNull AdRequest adRequest) {
        zzb(adRequest.zza);
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAds(@NonNull AdRequest adRequest, int i10) {
        try {
            this.zzc.zzh(this.zza.zza(this.zzb, adRequest.zza), i10);
        } catch (RemoteException e10) {
            zzo.zzh("Failed to load ads.", e10);
        }
    }

    public void loadAd(@NonNull AdManagerAdRequest adManagerAdRequest) {
        zzb(adManagerAdRequest.zza);
    }
}
