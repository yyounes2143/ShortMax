package com.pgl.ssdk.ces.out;

import android.text.TextUtils;
import java.util.Map;
/* loaded from: classes6.dex */
public final class PglSSConfig {
    public static final int COLLECT_MODE_DEFAULT = 0;
    public static final int COLLECT_MODE_ML_MINIMIZE = 1;
    public static final String CUSTOMINFO_KEY_ALLOWED_FIELDS = "fields_allowed";
    public static final String CUSTOMINFO_KEY_CHECKCLAZZ = "check_clz";
    public static final String CUSTOMINFO_KEY_IPV6 = "key_ipv6";
    public static final String CUSTOMINFO_KEY_SEC_CONFIG_STR = "sec_config";
    public static final String CUSTOMINFO_KEY_TARGET_IDC = "target-idc";
    public static final String CUSTOMINFO_KEY_TRANSFER_HOST = "key_transfer_host";
    public static final int OVREGION_TYPE_SG = 2;
    public static final int OVREGION_TYPE_UNKNOWN = -1;
    public static final int OVREGION_TYPE_VA = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f36723a;

    /* renamed from: b  reason: collision with root package name */
    private final int f36724b;

    /* renamed from: c  reason: collision with root package name */
    private final int f36725c;

    /* renamed from: d  reason: collision with root package name */
    private String f36726d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Object> f36727e;

    /* renamed from: f  reason: collision with root package name */
    private PglSSCallBack f36728f;

    /* loaded from: classes6.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f36729a;

        /* renamed from: b  reason: collision with root package name */
        private int f36730b = -1;

        /* renamed from: c  reason: collision with root package name */
        private int f36731c = 0;

        /* renamed from: d  reason: collision with root package name */
        private String f36732d;

        public PglSSConfig build() {
            if (TextUtils.isEmpty(this.f36729a)) {
                return null;
            }
            return new PglSSConfig(this.f36729a, this.f36730b, this.f36731c, this.f36732d);
        }

        public Builder setAdsdkVersion(String str) {
            this.f36732d = str;
            return this;
        }

        public Builder setAppId(String str) {
            this.f36729a = str;
            return this;
        }

        public Builder setCollectMode(int i10) {
            this.f36731c = i10;
            return this;
        }

        public Builder setOVRegionType(int i10) {
            this.f36730b = i10;
            return this;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public String getAdSdkVersion() {
        return this.f36726d;
    }

    public String getAppId() {
        return this.f36723a;
    }

    public PglSSCallBack getCallBack() {
        return this.f36728f;
    }

    public int getCollectMode() {
        return this.f36725c;
    }

    public Map<String, Object> getCustomInfo() {
        return this.f36727e;
    }

    public int getOVRegionType() {
        return this.f36724b;
    }

    public void setCallBack(PglSSCallBack pglSSCallBack) {
        this.f36728f = pglSSCallBack;
    }

    public void setCustomInfo(Map<String, Object> map) {
        this.f36727e = map;
    }

    private PglSSConfig(String str, int i10, int i11, String str2) {
        this.f36723a = str;
        this.f36724b = i10;
        this.f36725c = i11;
        this.f36726d = str2;
    }
}
