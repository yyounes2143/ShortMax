package com.vungle.ads.internal.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import androidx.core.util.Consumer;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.appset.AppSet;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdvertisingInfo;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.Logger;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidPlatform.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidPlatform implements Platform {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String PREF_KEY_SDK_INSTALL_TIME = "sit";
    @NotNull
    private static final String TAG = "AndroidPlatform";
    @Nullable
    private AdvertisingInfo advertisingInfo;
    @Nullable
    private String appSetId;
    @Nullable
    private Integer appSetIdScope;
    @NotNull
    private final AudioManager audioManager;
    @NotNull
    private final Context context;
    private final boolean isSideLoaded;
    @NotNull
    private final PowerManager powerManager;
    @Nullable
    private Long sdkInstallationTime;
    @NotNull
    private final VungleThreadPoolExecutor uaExecutor;
    @Nullable
    private String userAgent;

    /* compiled from: AndroidPlatform.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getCarrierName$vungle_ads_release(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Object systemService = context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            return ((TelephonyManager) systemService).getNetworkOperatorName();
        }

        private Companion() {
        }
    }

    public AndroidPlatform(@NotNull Context context, @NotNull VungleThreadPoolExecutor uaExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uaExecutor, "uaExecutor");
        this.context = context;
        this.uaExecutor = uaExecutor;
        updateAppSetID();
        Object systemService = context.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        this.powerManager = (PowerManager) systemService;
        Object systemService2 = context.getSystemService("audio");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.media.AudioManager");
        this.audioManager = (AudioManager) systemService2;
    }

    private final AdvertisingInfo getAmazonAdvertisingInfo() {
        AdvertisingInfo advertisingInfo = new AdvertisingInfo();
        try {
            ContentResolver contentResolver = this.context.getContentResolver();
            boolean z10 = true;
            if (Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 1) {
                z10 = false;
            }
            advertisingInfo.setLimitAdTracking(z10);
            advertisingInfo.setAdvertisingId(Settings.Secure.getString(contentResolver, "advertising_id"));
        } catch (Settings.SettingNotFoundException e10) {
            Logger.Companion.w(TAG, "Error getting Amazon advertising info: Setting not found.", e10);
        } catch (Exception e11) {
            Logger.Companion.w(TAG, "Error getting Amazon advertising info", e11);
        }
        return advertisingInfo;
    }

    private final AdvertisingInfo getGoogleAdvertisingInfo() {
        AdvertisingInfo advertisingInfo = new AdvertisingInfo();
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.context);
            Intrinsics.checkNotNullExpressionValue(advertisingIdInfo, "getAdvertisingIdInfo(context)");
            advertisingInfo.setAdvertisingId(advertisingIdInfo.getId());
            advertisingInfo.setLimitAdTracking(advertisingIdInfo.isLimitAdTrackingEnabled());
        } catch (GooglePlayServicesNotAvailableException e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Play services Not available: " + e10.getLocalizedMessage());
        } catch (Exception e11) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "Error getting Google advertising info: " + e11.getLocalizedMessage());
        } catch (NoClassDefFoundError e12) {
            Logger.Companion companion3 = Logger.Companion;
            companion3.e(TAG, "Play services Not available: " + e12.getLocalizedMessage());
            advertisingInfo.setAdvertisingId(Settings.Secure.getString(this.context.getContentResolver(), "advertising_id"));
        }
        return advertisingInfo;
    }

    /* renamed from: getSDKInstallationTime$lambda-4  reason: not valid java name */
    private static final FilePreferences m4817getSDKInstallationTime$lambda4(i<FilePreferences> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getUserAgentLazy$lambda-0  reason: not valid java name */
    public static final void m4818getUserAgentLazy$lambda0(AndroidPlatform this$0, Consumer consumer) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(consumer, "$consumer");
        WebViewUtil.INSTANCE.getUserAgent(this$0.context, consumer);
    }

    private final void updateAppSetID() {
        String str = this.appSetId;
        if (str != null && str.length() != 0) {
            return;
        }
        try {
            AppSetIdClient client = AppSet.getClient(this.context);
            Intrinsics.checkNotNullExpressionValue(client, "getClient(context)");
            Task<AppSetIdInfo> appSetIdInfo = client.getAppSetIdInfo();
            Intrinsics.checkNotNullExpressionValue(appSetIdInfo, "client.appSetIdInfo");
            appSetIdInfo.addOnSuccessListener(new OnSuccessListener() { // from class: com.vungle.ads.internal.platform.b
                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final void onSuccess(Object obj) {
                    AndroidPlatform.m4819updateAppSetID$lambda6(AndroidPlatform.this, (AppSetIdInfo) obj);
                }
            });
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Error getting AppSetID: " + e10.getLocalizedMessage());
        } catch (NoClassDefFoundError e11) {
            Logger.Companion companion2 = Logger.Companion;
            companion2.e(TAG, "Required libs to get AppSetID Not available: " + e11.getLocalizedMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateAppSetID$lambda-6  reason: not valid java name */
    public static final void m4819updateAppSetID$lambda6(AndroidPlatform this$0, AppSetIdInfo appSetIdInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (appSetIdInfo != null) {
            this$0.appSetId = appSetIdInfo.getId();
            this$0.appSetIdScope = Integer.valueOf(appSetIdInfo.getScope());
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @NotNull
    public AdvertisingInfo getAdvertisingInfo() {
        AdvertisingInfo googleAdvertisingInfo;
        String advertisingId;
        AdvertisingInfo advertisingInfo = this.advertisingInfo;
        if (advertisingInfo != null && (advertisingId = advertisingInfo.getAdvertisingId()) != null && advertisingId.length() != 0) {
            return advertisingInfo;
        }
        if (StringsKt.G(Build.MANUFACTURER, "Amazon", true)) {
            googleAdvertisingInfo = getAmazonAdvertisingInfo();
        } else {
            googleAdvertisingInfo = getGoogleAdvertisingInfo();
        }
        this.advertisingInfo = googleAdvertisingInfo;
        return googleAdvertisingInfo;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @Nullable
    public String getAppSetId() {
        return this.appSetId;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @Nullable
    public Integer getAppSetIdScope() {
        return this.appSetIdScope;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public long getBuildTime() {
        return Build.TIME;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @NotNull
    public String getCarrierName() {
        String carrierName$vungle_ads_release = Companion.getCarrierName$vungle_ads_release(this.context);
        Intrinsics.checkNotNullExpressionValue(carrierName$vungle_ads_release, "getCarrierName(context)");
        return carrierName$vungle_ads_release;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public long getLastBootTime() {
        return System.currentTimeMillis() - SystemClock.elapsedRealtime();
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public long getOSInstallationTime() {
        long d10;
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of2;
        try {
            Result.a aVar = Result.f60901b;
            if (Build.VERSION.SDK_INT >= 33) {
                PackageManager packageManager = this.context.getPackageManager();
                of2 = PackageManager.PackageInfoFlags.of(0L);
                packageInfo = packageManager.getPackageInfo("android", of2);
            } else {
                packageInfo = this.context.getPackageManager().getPackageInfo("android", 0);
            }
            d10 = Result.d(Long.valueOf(packageInfo.firstInstallTime));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        Throwable g10 = Result.g(d10);
        if (g10 != null) {
            if (g10 instanceof PackageManager.NameNotFoundException) {
                Logger.Companion companion = Logger.Companion;
                companion.e(TAG, "Error getting OS installation time: " + ((PackageManager.NameNotFoundException) g10).getLocalizedMessage());
            }
            d10 = -1L;
        }
        return ((Number) d10).longValue();
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public long getSDKInstallationTime() {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        i a10 = c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<FilePreferences>() { // from class: com.vungle.ads.internal.platform.AndroidPlatform$getSDKInstallationTime$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FilePreferences invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(FilePreferences.class);
            }
        });
        Long l10 = this.sdkInstallationTime;
        if (l10 != null) {
            return l10.longValue();
        }
        long j10 = m4817getSDKInstallationTime$lambda4(a10).getLong(PREF_KEY_SDK_INSTALL_TIME, 0L);
        if (j10 == 0) {
            j10 = System.currentTimeMillis();
            m4817getSDKInstallationTime$lambda4(a10).put(PREF_KEY_SDK_INSTALL_TIME, j10).apply();
        }
        this.sdkInstallationTime = Long.valueOf(j10);
        return j10;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    @Nullable
    public String getUserAgent() {
        String str = this.userAgent;
        if (str == null) {
            return System.getProperty("http.agent");
        }
        return str;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public void getUserAgentLazy(@NotNull final Consumer<String> consumer) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        this.uaExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.platform.a
            @Override // java.lang.Runnable
            public final void run() {
                AndroidPlatform.m4818getUserAgentLazy$lambda0(AndroidPlatform.this, consumer);
            }
        });
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public float getVolumeLevel() {
        try {
            return this.audioManager.getStreamVolume(3) / this.audioManager.getStreamMaxVolume(3);
        } catch (Exception unused) {
            return 0.0f;
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isBatterySaverEnabled() {
        return this.powerManager.isPowerSaveMode();
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSdCardPresent() {
        try {
            return Intrinsics.areEqual(Environment.getExternalStorageState(), "mounted");
        } catch (Exception e10) {
            Logger.Companion.e(TAG, "Acquiring external storage state failed", e10);
            return false;
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSideLoaded() {
        return this.isSideLoaded;
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSilentModeEnabled() {
        try {
            if (this.audioManager.getRingerMode() != 0) {
                if (this.audioManager.getRingerMode() != 1) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.vungle.ads.internal.platform.Platform
    public boolean isSoundEnabled() {
        try {
            if (this.audioManager.getStreamVolume(3) > 0) {
                return true;
            }
            return false;
        } catch (Exception unused) {
            return true;
        }
    }

    public void setUserAgent(@Nullable String str) {
        this.userAgent = str;
    }
}
