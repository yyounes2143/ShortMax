package com.inmobi.commons.core.configs;

import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import com.inmobi.media.Bc;
import com.inmobi.media.C3127q6;
import com.inmobi.media.D4;
import com.inmobi.media.Dc;
import com.inmobi.media.Ec;
import com.inmobi.media.U6;
import com.inmobi.media.U9;
import com.inmobi.media.Z4;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Keep
@Metadata
@SourceDebugExtension({"SMAP\nRootConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RootConfig.kt\ncom/inmobi/commons/core/configs/RootConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n1855#2,2:217\n1855#2,2:219\n1855#2,2:221\n1855#2,2:223\n*S KotlinDebug\n*F\n+ 1 RootConfig.kt\ncom/inmobi/commons/core/configs/RootConfig\n*L\n95#1:217,2\n106#1:219,2\n139#1:221,2\n151#1:223,2\n*E\n"})
/* loaded from: classes5.dex */
public final class RootConfig extends Config {
    public static final long DEFAULT_EXPIRY = 86400;
    @NotNull
    public static final String DEFAULT_FALLBACK_URL = "https://config.inmobi.com/config-server/v1/config/secure.cfg";
    public static final int DEFAULT_MAX_RETRIES = 3;
    public static final int DEFAULT_RETRY_INTERVAL = 60;
    @NotNull
    public static final String DEFAULT_URL = "";
    public static final int DEFAULT_WAIT_TIME = 3;
    @NotNull
    public static final String IP_ADDRESS_TP_SUPPORT_KEY = "ipAddrTPSupport";
    @Z4
    private final String TAG;
    @Nullable
    private List<ComponentConfig> components;
    @U9
    @Nullable
    private GDPR gdpr;
    @NotNull
    private final List<String> ipAddrTPSupport;
    private int maxRetries;
    private boolean monetizationDisabled;
    private int retryInterval;
    private int waitTime;
    @NotNull
    public static final e Companion = new e();
    @NotNull
    private static final Object sAcquisitionLock = new Object();

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class ComponentConfig {
        @NotNull
        private String type = "";
        private long expiry = Long.MAX_VALUE;
        @NotNull
        private String url = "";
        @NotNull
        private String fallbackUrl = RootConfig.DEFAULT_FALLBACK_URL;

        public final long getExpiry() {
            return this.expiry;
        }

        @NotNull
        public final String getFallbackUrl() {
            return this.fallbackUrl;
        }

        @NotNull
        public final String getType() {
            return this.type;
        }

        @NotNull
        public final String getUrl() {
            return this.url;
        }

        public final boolean isValid() {
            if (StringsKt.v1(getType()).toString().length() == 0 || getExpiry() < 0 || getExpiry() > 864000 || D4.a(this.url)) {
                return false;
            }
            if (Intrinsics.areEqual("root", getType()) && D4.a(this.fallbackUrl)) {
                return false;
            }
            return true;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class GDPR {
        @U9
        @Nullable
        private Boolean transmitRequest = Boolean.TRUE;

        @Nullable
        public final Boolean getTransmitRequest() {
            return this.transmitRequest;
        }

        public final boolean isValid() {
            if (this.transmitRequest != null) {
                return true;
            }
            return false;
        }
    }

    public RootConfig(@Nullable String str) {
        super(str);
        this.TAG = "RootConfig";
        this.maxRetries = 3;
        this.retryInterval = 60;
        this.waitTime = 3;
        this.gdpr = new GDPR();
        this.components = CollectionsKt.n();
        this.ipAddrTPSupport = CollectionsKt.n();
    }

    public final long getExpiryForType(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        synchronized (sAcquisitionLock) {
            List<ComponentConfig> list = this.components;
            if (list != null) {
                for (ComponentConfig componentConfig : list) {
                    if (Intrinsics.areEqual(type, componentConfig.getType())) {
                        return componentConfig.getExpiry();
                    }
                }
            }
            return 86400L;
        }
    }

    @NotNull
    public final String getFallbackUrlForRootType() {
        synchronized (sAcquisitionLock) {
            List<ComponentConfig> list = this.components;
            if (list != null) {
                for (ComponentConfig componentConfig : list) {
                    if (Intrinsics.areEqual("root", componentConfig.getType())) {
                        return componentConfig.getFallbackUrl();
                    }
                }
            }
            return DEFAULT_FALLBACK_URL;
        }
    }

    @NotNull
    public final List<String> getIpAddrTPSupport() {
        return this.ipAddrTPSupport;
    }

    public final int getMaxRetries() {
        return this.maxRetries;
    }

    public final int getRetryInterval() {
        return this.retryInterval;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public String getType() {
        return "root";
    }

    @NotNull
    public final String getUrlForType(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        synchronized (sAcquisitionLock) {
            List<ComponentConfig> list = this.components;
            if (list != null) {
                for (ComponentConfig componentConfig : list) {
                    if (Intrinsics.areEqual(type, componentConfig.getType())) {
                        return componentConfig.getUrl();
                    }
                }
            }
            return "";
        }
    }

    public final int getWaitTime() {
        return this.waitTime;
    }

    public final boolean isMonetizationDisabled() {
        return this.monetizationDisabled;
    }

    @VisibleForTesting
    public final boolean isSameAs(@NotNull RootConfig config) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (((getAccountId$media_release() != null || config.getAccountId$media_release() != null) && (getAccountId$media_release() == null || !StringsKt.H(getAccountId$media_release(), config.getAccountId$media_release(), false, 2, null))) || config.maxRetries != this.maxRetries || config.retryInterval != this.retryInterval || config.waitTime != this.waitTime || config.monetizationDisabled != this.monetizationDisabled) {
            return false;
        }
        return true;
    }

    @Override // com.inmobi.commons.core.configs.Config
    public boolean isValid() {
        Unit unit;
        String TAG = this.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        Objects.toString(this.gdpr);
        if (this.maxRetries < 0 || this.retryInterval < 0 || this.waitTime < 0) {
            return false;
        }
        synchronized (sAcquisitionLock) {
            List<ComponentConfig> list = this.components;
            if (list != null) {
                for (ComponentConfig componentConfig : list) {
                    if (!componentConfig.isValid()) {
                        return false;
                    }
                }
                unit = Unit.f60915a;
            } else {
                unit = null;
            }
            if (unit == null) {
                return false;
            }
            Unit unit2 = Unit.f60915a;
            GDPR gdpr = this.gdpr;
            if (gdpr == null || !gdpr.isValid()) {
                return false;
            }
            return true;
        }
    }

    public final boolean shouldTransmitRequest() {
        Boolean transmitRequest;
        GDPR gdpr = this.gdpr;
        if (gdpr != null && (transmitRequest = gdpr.getTransmitRequest()) != null) {
            return transmitRequest.booleanValue();
        }
        return true;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public JSONObject toJson() {
        Companion.getClass();
        JSONObject a10 = new C3127q6().a(new Ec("components", RootConfig.class), (Dc) new U6(new d(), ComponentConfig.class)).a(new Ec(IP_ADDRESS_TP_SUPPORT_KEY, RootConfig.class), (Dc) new U6(new Bc(), String.class)).a(this);
        if (a10 == null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return new JSONObject();
        }
        return a10;
    }
}
