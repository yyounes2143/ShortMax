package com.applovin.sdk;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.MaxMediatedNetworkInfoImpl;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.t3;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxSegmentCollection;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class AppLovinSdk {
    private static final String TAG = "AppLovinSdk";
    private static AppLovinSdk instance;
    private final k coreSdk;
    public static final String VERSION = getVersion();
    public static final int VERSION_CODE = getVersionCode();
    private static final Object instanceLock = new Object();

    /* loaded from: classes2.dex */
    public interface SdkInitializationListener {
        void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration);
    }

    private AppLovinSdk(k kVar) {
        this.coreSdk = kVar;
    }

    public static AppLovinSdk getInstance(Context context) {
        AppLovinSdk appLovinSdk;
        if (context != null) {
            synchronized (instanceLock) {
                try {
                    if (instance == null) {
                        k kVar = new k(new AppLovinSdkSettings(context), context);
                        AppLovinSdk appLovinSdk2 = new AppLovinSdk(kVar);
                        kVar.a(appLovinSdk2);
                        instance = appLovinSdk2;
                    }
                    appLovinSdk = instance;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return appLovinSdk;
        }
        throw new IllegalArgumentException("No context specified");
    }

    private static String getVersion() {
        return "13.4.0";
    }

    private static int getVersionCode() {
        return 13040099;
    }

    public k a() {
        return this.coreSdk;
    }

    public AppLovinAdService getAdService() {
        return this.coreSdk.k();
    }

    public List<MaxMediatedNetworkInfo> getAvailableMediatedNetworks() {
        JSONArray b10 = t3.b(this.coreSdk);
        ArrayList arrayList = new ArrayList(b10.length());
        for (int i10 = 0; i10 < b10.length(); i10++) {
            arrayList.add(new MaxMediatedNetworkInfoImpl(JsonUtils.getJSONObject(b10, i10, (JSONObject) null)));
        }
        return arrayList;
    }

    public AppLovinCmpService getCmpService() {
        return this.coreSdk.t();
    }

    public AppLovinSdkConfiguration getConfiguration() {
        return this.coreSdk.w();
    }

    public AppLovinEventService getEventService() {
        return this.coreSdk.G();
    }

    public String getSdkKey() {
        return this.coreSdk.j0();
    }

    public MaxSegmentCollection getSegmentCollection() {
        return this.coreSdk.k0();
    }

    public AppLovinSdkSettings getSettings() {
        return this.coreSdk.o0();
    }

    public void initialize(AppLovinSdkInitializationConfiguration appLovinSdkInitializationConfiguration, @Nullable SdkInitializationListener sdkInitializationListener) {
        this.coreSdk.a(appLovinSdkInitializationConfiguration, sdkInitializationListener);
    }

    public boolean isInitialized() {
        return this.coreSdk.C0();
    }

    public void processDeepLink(Uri uri) {
        this.coreSdk.a(uri);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reinitialize(Boolean bool, Boolean bool2) {
        if (this.coreSdk.E0()) {
            this.coreSdk.T0();
        }
        this.coreSdk.S0();
        if (bool != null) {
            this.coreSdk.O();
            if (o.a()) {
                o O = this.coreSdk.O();
                O.d(TAG, "Toggled 'huc' to " + bool);
            }
            getEventService().trackEvent("huc", CollectionUtils.map(AppMeasurementSdk.ConditionalUserProperty.VALUE, bool.toString()));
        }
        if (bool2 != null) {
            this.coreSdk.O();
            if (o.a()) {
                o O2 = this.coreSdk.O();
                O2.d(TAG, "Toggled 'dns' to " + bool2);
            }
            getEventService().trackEvent("dns", CollectionUtils.map(AppMeasurementSdk.ConditionalUserProperty.VALUE, bool2.toString()));
        }
    }

    public void showCreativeDebugger() {
        this.coreSdk.X0();
    }

    public void showMediationDebugger() {
        this.coreSdk.Y0();
    }

    public String toString() {
        return "AppLovinSdk{sdkKey='" + getSdkKey() + "', isInitialized=" + isInitialized() + ", isFirstSession=" + this.coreSdk.D0() + '}';
    }

    public void showMediationDebugger(@Nullable Map<String, List<?>> map) {
        this.coreSdk.a(map);
    }
}
