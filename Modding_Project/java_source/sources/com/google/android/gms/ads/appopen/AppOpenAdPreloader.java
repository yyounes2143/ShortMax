package com.google.android.gms.ads.appopen;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzeo;
import com.google.android.gms.ads.internal.client.zzey;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.preload.PreloadCallbackV2;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class AppOpenAdPreloader {
    private AppOpenAdPreloader() {
    }

    public static boolean destroy(@NonNull String str) {
        zzeo zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzg(str);
    }

    public static void destroyAll() {
        zzeo zza = zza();
        if (zza != null) {
            zza.zzf();
        }
    }

    @Nullable
    public static PreloadConfiguration getConfiguration(@NonNull String str) {
        zzeo zza = zza();
        if (zza == null) {
            return null;
        }
        return zza.zzd(str);
    }

    @NonNull
    public static Map<String, PreloadConfiguration> getConfigurations() {
        zzeo zza = zza();
        if (zza == null) {
            return new HashMap();
        }
        return zza.zze();
    }

    public static int getNumAdsAvailable(@NonNull String str) {
        zzeo zza = zza();
        if (zza == null) {
            return 0;
        }
        return zza.zzb(str);
    }

    public static boolean isAdAvailable(@NonNull String str) {
        zzeo zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzh(str);
    }

    @Nullable
    public static AppOpenAd pollAd(@NonNull String str) {
        zzeo zza = zza();
        if (zza == null) {
            return null;
        }
        return zza.zza(str);
    }

    public static boolean start(@NonNull String str, @NonNull PreloadConfiguration preloadConfiguration) {
        zzeo zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzi(str, preloadConfiguration);
    }

    @Nullable
    private static zzeo zza() {
        zzeo zzeoVar = (zzeo) zzey.zzf().zzg(AdFormat.APP_OPEN_AD);
        if (zzeoVar == null) {
            zzo.zzj("Failed to get a preloader. Call MobileAds.initialize() prior to calling preload APIs.");
        }
        return zzeoVar;
    }

    public static boolean start(@NonNull String str, @NonNull PreloadConfiguration preloadConfiguration, @NonNull PreloadCallbackV2 preloadCallbackV2) {
        zzeo zza = zza();
        if (zza == null) {
            return false;
        }
        return zza.zzj(str, preloadConfiguration, preloadCallbackV2);
    }
}
