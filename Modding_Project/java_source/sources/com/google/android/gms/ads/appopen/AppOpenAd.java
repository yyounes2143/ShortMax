package com.google.android.gms.ads.appopen;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdLoadCallback;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbas;
import com.google.android.gms.internal.ads.zzbaw;
import com.google.android.gms.internal.ads.zzbbe;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbfc;
import com.google.android.gms.internal.ads.zzbun;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class AppOpenAd {

    /* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
    /* loaded from: classes4.dex */
    public static abstract class AppOpenAdLoadCallback extends AdLoadCallback<AppOpenAd> {
    }

    @Deprecated
    public static boolean isAdAvailable(@NonNull Context context, @NonNull String str) {
        try {
            return zzb.zza(context).zzs(str);
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
            return false;
        }
    }

    public static void load(@NonNull final Context context, @NonNull final String str, @NonNull final AdRequest adRequest, @NonNull final AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "adUnitId cannot be null.");
        Preconditions.checkNotNull(adRequest, "AdRequest cannot be null.");
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzbde.zza(context);
        if (((Boolean) zzbfc.zzd.zze()).booleanValue()) {
            if (((Boolean) zzbd.zzc().zzb(zzbde.zzlE)).booleanValue()) {
                com.google.android.gms.ads.internal.util.client.zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.appopen.zza
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context2 = context;
                        String str2 = str;
                        AdRequest adRequest2 = adRequest;
                        try {
                            new zzbbe(context2, str2, adRequest2.zza(), appOpenAdLoadCallback).zza();
                        } catch (IllegalStateException e10) {
                            zzbun.zza(context2).zzh(e10, "AppOpenAd.load");
                        }
                    }
                });
                return;
            }
        }
        new zzbbe(context, str, adRequest.zza(), appOpenAdLoadCallback).zza();
    }

    @Nullable
    @Deprecated
    public static AppOpenAd pollAd(@NonNull Context context, @NonNull String str) {
        try {
            zzbaw zzh = zzb.zza(context).zzh(str);
            if (zzh == null) {
                zzo.zzl("Failed to obtain an App Open ad from the preloader.", null);
                return null;
            }
            return new zzbas(zzh, str);
        } catch (RemoteException e10) {
            zzo.zzl("#007 Could not call remote method.", e10);
            return null;
        }
    }

    @NonNull
    public abstract String getAdUnitId();

    @Nullable
    public abstract FullScreenContentCallback getFullScreenContentCallback();

    @Nullable
    public abstract OnPaidEventListener getOnPaidEventListener();

    public abstract long getPlacementId();

    @NonNull
    public abstract ResponseInfo getResponseInfo();

    public abstract void setFullScreenContentCallback(@Nullable FullScreenContentCallback fullScreenContentCallback);

    public abstract void setImmersiveMode(boolean z10);

    public abstract void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener);

    public abstract void setPlacementId(long j10);

    public abstract void show(@NonNull Activity activity);
}
