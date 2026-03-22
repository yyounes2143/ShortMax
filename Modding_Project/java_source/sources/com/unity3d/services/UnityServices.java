package com.unity3d.services;

import android.content.Context;
import com.unity3d.ads.IUnityAdsInitializationListener;
import com.unity3d.services.core.lifecycle.CachedLifecycle;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.properties.SdkProperties;
import com.unity3d.services.core.properties.Session;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnityServices.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UnityServices {
    @NotNull
    public static final UnityServices INSTANCE = new UnityServices();
    private static final boolean isSupported = true;

    /* compiled from: UnityServices.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public enum UnityServicesError {
        INVALID_ARGUMENT,
        INIT_SANITY_CHECK_FAIL
    }

    private UnityServices() {
    }

    public static final boolean getDebugMode() {
        return SdkProperties.getDebugMode();
    }

    @NotNull
    public static final String getVersion() {
        String versionName = SdkProperties.getVersionName();
        Intrinsics.checkNotNullExpressionValue(versionName, "getVersionName()");
        return versionName;
    }

    public static final synchronized void initialize(@Nullable Context context, @Nullable String str, boolean z10, @Nullable IUnityAdsInitializationListener iUnityAdsInitializationListener) {
        String str2;
        synchronized (UnityServices.class) {
            try {
                DeviceLog.entered();
                SdkProperties.addInitializationListener(iUnityAdsInitializationListener);
                SdkProperties.setTestMode(z10);
                SdkProperties.setDebugMode(SdkProperties.getDebugMode());
                if (z10) {
                    str2 = "test mode";
                } else {
                    str2 = "production mode";
                }
                DeviceLog.info("Initializing Unity Services " + SdkProperties.getVersionName() + " (" + SdkProperties.getVersionCode() + ") with game id " + str + " in " + str2 + ", session " + Session.Default.getId());
                CachedLifecycle.register();
                UnityAdsSDK.initialize$default(new UnityAdsSDK(null, 1, null), str, null, 2, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final boolean isInitialized() {
        return SdkProperties.isInitialized();
    }

    public static final boolean isSupported() {
        return isSupported;
    }

    public static final void setDebugMode(boolean z10) {
        SdkProperties.setDebugMode(z10);
    }

    public static /* synthetic */ void getDebugMode$annotations() {
    }

    public static /* synthetic */ void getVersion$annotations() {
    }

    public static /* synthetic */ void isInitialized$annotations() {
    }

    public static /* synthetic */ void isSupported$annotations() {
    }
}
