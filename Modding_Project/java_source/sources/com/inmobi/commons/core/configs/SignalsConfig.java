package com.inmobi.commons.core.configs;

import android.webkit.URLUtil;
import androidx.annotation.Keep;
import com.inmobi.media.Z4;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class SignalsConfig extends Config {
    @NotNull
    public static final f Companion = new f();
    @Z4
    private final String TAG;
    @Nullable
    private JSONObject ext;
    @NotNull
    private IceConfig ice;
    @NotNull
    private String kA;
    @NotNull
    private NovatiqConfig novatiqConfig;
    @NotNull
    private PublisherConfig publisher;
    @NotNull
    private Purchases purchases;
    @NotNull
    private SessionConfig session;
    @NotNull
    private UnifiedIdServiceConfig unifiedIdServiceConfig;
    private int vAK;

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class CellIceConfig {
        private boolean cce;
        private int cof;
        private boolean vce;

        public final boolean getCce() {
            return this.cce;
        }

        public final int getCof() {
            return this.cof;
        }

        public final boolean getVce() {
            return this.vce;
        }

        public final void setCce(boolean z10) {
            this.cce = z10;
        }

        public final void setCof(int i10) {
            this.cof = i10;
        }

        public final void setVce(boolean z10) {
            this.vce = z10;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class IceConfig {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private CellIceConfig f23442c = new CellIceConfig();
        private boolean locationEnabled;
        private boolean sessionEnabled;

        public final int getCellOperatorFlag() {
            return this.f23442c.getCof();
        }

        public final boolean isConnectedCellTowerEnabled() {
            return this.f23442c.getCce();
        }

        public final boolean isLocationEnabled() {
            return this.locationEnabled;
        }

        public final boolean isSessionEnabled() {
            return this.sessionEnabled;
        }

        public final boolean isValid() {
            if (getCellOperatorFlag() >= 0) {
                return true;
            }
            return false;
        }

        public final boolean isVisibleCellTowerEnabled() {
            return this.f23442c.getVce();
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class NovatiqConfig {
        private boolean isNovatiqEnabled = true;
        @NotNull
        private List<String> carrierNames = CollectionsKt.n();
        @NotNull
        private String beaconUrl = "https://spadsync.com/sync";

        @NotNull
        public final String getBeaconUrl() {
            return this.beaconUrl;
        }

        @NotNull
        public final List<String> getCarrierNames() {
            return this.carrierNames;
        }

        public final boolean isNovatiqEnabled() {
            return this.isNovatiqEnabled;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class PublisherConfig {
        private final boolean enableAB;
        private final boolean enableMCO;
        @NotNull
        private final Map<String, String> generalKeys = new LinkedHashMap();
        @NotNull
        private final Map<String, String> adSpecificKeys = new LinkedHashMap();
        private final int payloadSize = 1500;

        @NotNull
        public final Map<String, String> getAdSpecificKeys() {
            return this.adSpecificKeys;
        }

        public final boolean getEnableAB() {
            return this.enableAB;
        }

        public final boolean getEnableMCO() {
            return this.enableMCO;
        }

        @NotNull
        public final Map<String, String> getGeneralKeys() {
            return this.generalKeys;
        }

        public final int getPayloadSize() {
            return this.payloadSize;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class Purchases {
        private boolean inapp;
        @NotNull
        private List<String> versionList = CollectionsKt.q("7.0.0", "7.1.0", "7.1.1");

        public final boolean getInapp() {
            return this.inapp;
        }

        @NotNull
        public final List<String> getVersionList() {
            return this.versionList;
        }

        public final void setInapp(boolean z10) {
            this.inapp = z10;
        }

        public final void setVersionList(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            this.versionList = list;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class SessionConfig {
        @NotNull
        private List<Integer> control = CollectionsKt.q(0, 1, 2, 3, 4, 5, 6);

        @NotNull
        public final List<Integer> getSigControlList() {
            return this.control;
        }
    }

    @Keep
    @Metadata
    /* loaded from: classes5.dex */
    public static final class UnifiedIdServiceConfig {
        private boolean enabled;
        private int maxRetries;
        private int retryInterval;
        @NotNull
        private String url = "https://unif-id.ssp.inmobi.com/fetch";
        private int timeout = 10;

        public final int getMaxRetries() {
            return this.maxRetries;
        }

        public final int getRetryInterval() {
            return this.retryInterval;
        }

        public final int getTimeout() {
            return this.timeout;
        }

        @NotNull
        public final String getUrl() {
            return this.url;
        }

        public final boolean isEnabled() {
            return this.enabled;
        }

        public final boolean isValid() {
            if (URLUtil.isValidUrl(this.url) && this.maxRetries >= 0 && this.timeout >= 0 && this.retryInterval >= 0) {
                return true;
            }
            return false;
        }

        public final void setMaxRetries(int i10) {
            this.maxRetries = i10;
        }

        public final void setRetryInterval(int i10) {
            this.retryInterval = i10;
        }

        public final void setTimeout(int i10) {
            this.timeout = i10;
        }

        public final void setUrl(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.url = str;
        }
    }

    public SignalsConfig(@Nullable String str) {
        super(str);
        this.TAG = "SignalsConfig";
        this.ice = new IceConfig();
        this.unifiedIdServiceConfig = new UnifiedIdServiceConfig();
        this.novatiqConfig = new NovatiqConfig();
        this.session = new SessionConfig();
        this.publisher = new PublisherConfig();
        this.kA = "wWFMAWbSEtvl5VxZbQGMK7";
        this.vAK = 1;
        this.purchases = new Purchases();
    }

    @NotNull
    public final String getAK() {
        return this.kA;
    }

    public final int getAKV() {
        return this.vAK;
    }

    @Nullable
    public final JSONObject getExt() {
        return this.ext;
    }

    @NotNull
    public final IceConfig getIceConfig() {
        return this.ice;
    }

    @NotNull
    public final NovatiqConfig getNovatiqConfig() {
        return this.novatiqConfig;
    }

    @NotNull
    public final PublisherConfig getPublisherConfig() {
        return this.publisher;
    }

    @NotNull
    public final Purchases getPurchases() {
        return this.purchases;
    }

    @NotNull
    public final SessionConfig getSessionConfig() {
        return this.session;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public String getType() {
        return "signals";
    }

    @NotNull
    public final UnifiedIdServiceConfig getUnifiedIdServiceConfig() {
        return this.unifiedIdServiceConfig;
    }

    @Override // com.inmobi.commons.core.configs.Config
    public boolean isValid() {
        if (this.ice.isValid() && this.unifiedIdServiceConfig.isValid()) {
            return true;
        }
        return false;
    }

    public final void setPurchases(@NotNull Purchases purchases) {
        Intrinsics.checkNotNullParameter(purchases, "<set-?>");
        this.purchases = purchases;
    }

    @Override // com.inmobi.commons.core.configs.Config
    @NotNull
    public JSONObject toJson() {
        Companion.getClass();
        JSONObject a10 = f.a().a(this);
        if (a10 == null) {
            String TAG = this.TAG;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            return new JSONObject();
        }
        return a10;
    }
}
