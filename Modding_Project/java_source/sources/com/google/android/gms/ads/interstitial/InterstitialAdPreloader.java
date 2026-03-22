package com.google.android.gms.ads.interstitial;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzep;
import com.google.android.gms.ads.internal.client.zzey;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.preload.PreloadCallbackV2;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class InterstitialAdPreloader {
    private InterstitialAdPreloader() {
    }

    public static boolean destroy(@NonNull String str) {
        zzep zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzg(str);
    }

    public static void destroyAll() {
        zzep zza = zza();
        if (zza != null) {
            zza.zzf();
        }
    }

    @Nullable
    public static PreloadConfiguration getConfiguration(@NonNull String str) {
        zzep zza = zza();
        if (zza == null) {
            return null;
        }
        return zza.zzd(str);
    }

    @NonNull
    public static Map<String, PreloadConfiguration> getConfigurations() {
        zzep zza = zza();
        if (zza == null) {
            return new HashMap();
        }
        return zza.zze();
    }

    public static int getNumAdsAvailable(@NonNull String str) {
        zzep zza = zza();
        if (zza == null) {
            return 0;
        }
        return zza.zzb(str);
    }

    public static boolean isAdAvailable(@NonNull String str) {
        zzep zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzh(str);
    }

    @Nullable
    public static InterstitialAd pollAd(@NonNull String str) {
        zzep zza = zza();
        if (zza == null) {
            return null;
        }
        return zza.zza(str);
    }

    public static boolean start(@NonNull String str, @NonNull PreloadConfiguration preloadConfiguration) {
        zzep zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzi(str, preloadConfiguration);
    }

    @Nullable
    private static zzep zza() {
        zzep zzepVar = (zzep) zzey.zzf().zzg(AdFormat.INTERSTITIAL);
        if (zzepVar == null) {
            zzo.zzj("Failed to get a preloader. Call MobileAds.initialize() prior to calling preload APIs.");
        }
        return zzepVar;
    }

    public static boolean start(@NonNull String str, @NonNull PreloadConfiguration preloadConfiguration, @NonNull PreloadCallbackV2 preloadCallbackV2) {
        zzep zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzj(str, preloadConfiguration, preloadCallbackV2);
    }
}
