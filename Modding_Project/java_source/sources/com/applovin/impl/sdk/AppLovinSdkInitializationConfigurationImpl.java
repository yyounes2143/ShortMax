package com.applovin.impl.sdk;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxSegmentCollection;
import com.applovin.sdk.AppLovinSdkInitializationConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class AppLovinSdkInitializationConfigurationImpl extends AppLovinSdkInitializationConfiguration {

    /* renamed from: a  reason: collision with root package name */
    private final String f9492a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9493b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9494c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9495d;

    /* renamed from: e  reason: collision with root package name */
    private final MaxSegmentCollection f9496e;

    /* renamed from: f  reason: collision with root package name */
    private final List f9497f;

    /* renamed from: g  reason: collision with root package name */
    private final List f9498g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f9499h;

    /* loaded from: classes2.dex */
    public static class BuilderImpl implements AppLovinSdkInitializationConfiguration.Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f9500a;

        /* renamed from: b  reason: collision with root package name */
        private final String f9501b;

        /* renamed from: c  reason: collision with root package name */
        private String f9502c;

        /* renamed from: d  reason: collision with root package name */
        private String f9503d;

        /* renamed from: e  reason: collision with root package name */
        private MaxSegmentCollection f9504e;

        /* renamed from: f  reason: collision with root package name */
        private List f9505f = Collections.emptyList();

        /* renamed from: g  reason: collision with root package name */
        private List f9506g = Collections.emptyList();

        /* renamed from: h  reason: collision with root package name */
        private boolean f9507h = true;

        public BuilderImpl(String str, @Nullable String str2) {
            this.f9500a = str;
            this.f9501b = str2;
            o.e("AppLovinSdkInitializationConfiguration", "Initializing with key: " + str);
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public AppLovinSdkInitializationConfiguration build() {
            return new AppLovinSdkInitializationConfigurationImpl(this);
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public List<String> getAdUnitIds() {
            return this.f9506g;
        }

        @Nullable
        public String getAxonEventKey() {
            return this.f9501b;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        @Nullable
        public String getMediationProvider() {
            return this.f9502c;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        @Nullable
        public String getPluginVersion() {
            return this.f9503d;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public String getSdkKey() {
            return this.f9500a;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        @Nullable
        public MaxSegmentCollection getSegmentCollection() {
            return this.f9504e;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public List<String> getTestDeviceAdvertisingIds() {
            return this.f9505f;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public boolean isExceptionHandlerEnabled() {
            return this.f9507h;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public AppLovinSdkInitializationConfiguration.Builder setAdUnitIds(List<String> list) {
            o.e("AppLovinSdkInitializationConfiguration", "setAdUnitIds(adUnitIds=" + list + ")");
            if (list == null) {
                return this;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (String str : list) {
                if (StringUtils.isValidString(str) && str.length() > 0) {
                    if (str.length() == 16) {
                        arrayList.add(str);
                    } else {
                        o.h("AppLovinSdkInitializationConfiguration", "Unable to set initialization ad unit id (" + str + ") - please make sure it is in the format of XXXXXXXXXXXXXXXX");
                    }
                }
            }
            this.f9506g = arrayList;
            return this;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public AppLovinSdkInitializationConfiguration.Builder setExceptionHandlerEnabled(boolean z10) {
            o.e("AppLovinSdkInitializationConfiguration", "setExceptionHandlerEnabled(exceptionHandlerEnabled=" + z10 + ")");
            this.f9507h = z10;
            return this;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public AppLovinSdkInitializationConfiguration.Builder setMediationProvider(@Nullable String str) {
            o.e("AppLovinSdkInitializationConfiguration", "setMediationProvider(mediationProvider=" + str + ")");
            if (str != null && (str.isEmpty() || str.length() > 64 || !StringUtils.isAlphaNumeric(str))) {
                o.h("AppLovinSdkInitializationConfiguration", "Mediation provider set to invalid value: " + str + ". Please use a valid mediation provider (e.g., AppLovinMediationProvider.MAX)");
                return this;
            }
            this.f9502c = str;
            return this;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public AppLovinSdkInitializationConfiguration.Builder setPluginVersion(@Nullable String str) {
            o.e("AppLovinSdkInitializationConfiguration", "setPluginVersion(pluginVersion=" + str + ")");
            this.f9503d = str;
            return this;
        }

        public AppLovinSdkInitializationConfiguration.Builder setSdkKey(String str) {
            this.f9500a = str;
            return this;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public AppLovinSdkInitializationConfiguration.Builder setSegmentCollection(MaxSegmentCollection maxSegmentCollection) {
            o.e("AppLovinSdkInitializationConfiguration", "setSegmentCollection(segmentCollection=" + maxSegmentCollection + ")");
            this.f9504e = maxSegmentCollection;
            return this;
        }

        @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration.Builder
        public AppLovinSdkInitializationConfiguration.Builder setTestDeviceAdvertisingIds(List<String> list) {
            o.e("AppLovinSdkInitializationConfiguration", "setTestDeviceAdvertisingIds(testDeviceAdvertisingIds=" + list + ")");
            if (list == null) {
                return this;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (String str : list) {
                if (str != null && str.length() == 36) {
                    arrayList.add(str);
                } else {
                    o.h("AppLovinSdkInitializationConfiguration", "Unable to set test device advertising id (" + str + ") - please make sure it is in the format of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
                }
            }
            this.f9505f = arrayList;
            return this;
        }

        public String toString() {
            return "AppLovinSdkInitializationConfiguration.Builder{ sdkKey=" + this.f9500a + ", axonEventKey=" + this.f9501b + ", mediationProvider=" + this.f9502c + ", pluginVersion=" + this.f9503d + ", testDeviceAdvertisingIdentifiers=" + this.f9505f + ", adUnitIdentifiers=" + this.f9506g + ", isExceptionHandlerEnabled=" + this.f9507h + ", segmentCollection=" + this.f9504e + "}";
        }
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    public List<String> getAdUnitIds() {
        return this.f9498g;
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    @Nullable
    public String getAxonEventKey() {
        return this.f9493b;
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    @Nullable
    public String getMediationProvider() {
        return this.f9494c;
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    @Nullable
    public String getPluginVersion() {
        return this.f9495d;
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    @Nullable
    public String getSdkKey() {
        return this.f9492a;
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    @Nullable
    public MaxSegmentCollection getSegmentCollection() {
        return this.f9496e;
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    public List<String> getTestDeviceAdvertisingIds() {
        return this.f9497f;
    }

    @Override // com.applovin.sdk.AppLovinSdkInitializationConfiguration
    public boolean isExceptionHandlerEnabled() {
        return this.f9499h;
    }

    public String toString() {
        return "AppLovinSdkInitializationConfiguration{ sdkKey=" + this.f9492a + ", axonEventKey=" + this.f9493b + ", mediationProvider=" + this.f9494c + ", pluginVersion=" + this.f9495d + ", testDeviceAdvertisingIds=" + this.f9497f + ", adUnitIdentifiers=" + this.f9498g + ", isExceptionHandlerEnabled=" + this.f9499h + ", segmentCollection=" + this.f9496e + "}";
    }

    private AppLovinSdkInitializationConfigurationImpl(BuilderImpl builderImpl) {
        this.f9492a = builderImpl.f9500a;
        this.f9493b = builderImpl.f9501b;
        this.f9494c = builderImpl.f9502c;
        this.f9495d = builderImpl.f9503d;
        this.f9496e = builderImpl.f9504e;
        this.f9497f = builderImpl.f9505f;
        this.f9498g = builderImpl.f9506g;
        this.f9499h = builderImpl.f9507h;
    }
}
