package com.bytedance.applog;

import com.bytedance.applog.util.UriConstants;
/* loaded from: classes3.dex */
public class UriConfig {
    public static final String DOMAIN_BUSINESS = "https://log-api.oceanengine.com";
    public static final String PATH_AB = "/service/2/abtest_config/";
    public static final String PATH_ACTIVE = "/service/2/app_alert_check/";
    public static final String PATH_ALINK_ATTRIBUTION = "/service/2/attribution_data";
    public static final String PATH_ALINK_QUERY = "/service/2/alink_data";
    public static final String PATH_CONFIG = "/service/2/log_settings/";
    public static final String PATH_DEVICE_UPDATE = "/service/2/device_update";
    public static final String PATH_ID_BIND = "/service/2/id_bind";
    public static final String PATH_PROFILE = "/service/2/profile/";
    public static final String PATH_REGISTER = "/service/2/device_register/";
    public static final String PATH_SEND = "/service/2/app_log/";

    /* renamed from: a  reason: collision with root package name */
    public String f11796a;

    /* renamed from: b  reason: collision with root package name */
    public String f11797b;

    /* renamed from: c  reason: collision with root package name */
    public String f11798c;

    /* renamed from: d  reason: collision with root package name */
    public String[] f11799d;

    /* renamed from: e  reason: collision with root package name */
    public String f11800e;

    /* renamed from: f  reason: collision with root package name */
    public String f11801f;

    /* renamed from: g  reason: collision with root package name */
    public String f11802g;

    /* renamed from: h  reason: collision with root package name */
    public String f11803h;

    /* renamed from: i  reason: collision with root package name */
    public String f11804i;

    /* renamed from: j  reason: collision with root package name */
    public String f11805j;

    /* renamed from: k  reason: collision with root package name */
    public String f11806k;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public String f11807a;

        /* renamed from: b  reason: collision with root package name */
        public String f11808b;

        /* renamed from: c  reason: collision with root package name */
        public String f11809c;

        /* renamed from: d  reason: collision with root package name */
        public String[] f11810d;

        /* renamed from: e  reason: collision with root package name */
        public String f11811e;

        /* renamed from: f  reason: collision with root package name */
        public String f11812f;

        /* renamed from: g  reason: collision with root package name */
        public String f11813g;

        /* renamed from: h  reason: collision with root package name */
        public String f11814h;

        /* renamed from: i  reason: collision with root package name */
        public String f11815i;

        /* renamed from: j  reason: collision with root package name */
        public String f11816j;

        /* renamed from: k  reason: collision with root package name */
        public String f11817k;

        public UriConfig build() {
            return new UriConfig(this, null);
        }

        public Builder setALinkAttributionUri(String str) {
            this.f11816j = str;
            return this;
        }

        public Builder setALinkQueryUri(String str) {
            this.f11815i = str;
            return this;
        }

        public Builder setAbUri(String str) {
            this.f11812f = str;
            return this;
        }

        public Builder setActiveUri(String str) {
            this.f11809c = str;
            return this;
        }

        public Builder setBusinessUri(String str) {
            this.f11814h = str;
            return this;
        }

        public Builder setIDBindUri(String str) {
            this.f11817k = str;
            return this;
        }

        public Builder setProfileUri(String str) {
            this.f11813g = str;
            return this;
        }

        public Builder setRegisterUri(String str) {
            this.f11807a = str;
            return this;
        }

        public Builder setReportOaidUri(String str) {
            this.f11808b = str;
            return this;
        }

        public Builder setSendUris(String[] strArr) {
            this.f11810d = strArr;
            return this;
        }

        public Builder setSettingUri(String str) {
            this.f11811e = str;
            return this;
        }
    }

    public /* synthetic */ UriConfig(Builder builder, a aVar) {
        this.f11796a = builder.f11807a;
        this.f11797b = builder.f11808b;
        this.f11798c = builder.f11809c;
        this.f11799d = builder.f11810d;
        this.f11800e = builder.f11811e;
        this.f11801f = builder.f11812f;
        this.f11802g = builder.f11813g;
        this.f11803h = builder.f11814h;
        this.f11804i = builder.f11815i;
        this.f11805j = builder.f11816j;
        this.f11806k = builder.f11817k;
    }

    public static UriConfig createByDomain(String str, String[] strArr) {
        Builder builder = new Builder();
        Builder registerUri = builder.setRegisterUri(str + PATH_REGISTER);
        Builder reportOaidUri = registerUri.setReportOaidUri(str + PATH_DEVICE_UPDATE);
        Builder activeUri = reportOaidUri.setActiveUri(str + PATH_ACTIVE);
        Builder aLinkAttributionUri = activeUri.setALinkAttributionUri(str + PATH_ALINK_ATTRIBUTION);
        aLinkAttributionUri.setALinkQueryUri(str + PATH_ALINK_QUERY);
        if (strArr != null && strArr.length != 0) {
            int length = strArr.length + 1;
            String[] strArr2 = new String[length];
            strArr2[0] = str + PATH_SEND;
            for (int i10 = 1; i10 < length; i10++) {
                strArr2[i10] = strArr[i10 - 1] + PATH_SEND;
            }
            builder.setSendUris(strArr2);
        } else {
            builder.setSendUris(new String[]{str + PATH_SEND});
        }
        Builder settingUri = builder.setSettingUri(str + PATH_CONFIG);
        Builder abUri = settingUri.setAbUri(str + PATH_AB);
        Builder profileUri = abUri.setProfileUri(str + PATH_PROFILE);
        profileUri.setIDBindUri(str + PATH_ID_BIND);
        return builder.build();
    }

    public static UriConfig createUriConfig(int i10) {
        return UriConstants.createUriConfig(i10);
    }

    public String getAbUri() {
        return this.f11801f;
    }

    public String getActiveUri() {
        return this.f11798c;
    }

    public String getAlinkAttributionUri() {
        return this.f11805j;
    }

    public String getAlinkQueryUri() {
        return this.f11804i;
    }

    public String getBusinessUri() {
        return this.f11803h;
    }

    public String getIDBindUri() {
        return this.f11806k;
    }

    public String getProfileUri() {
        return this.f11802g;
    }

    public String getRegisterUri() {
        return this.f11796a;
    }

    public String getReportOaidUri() {
        return this.f11797b;
    }

    public String[] getSendUris() {
        return this.f11799d;
    }

    public String getSettingUri() {
        return this.f11800e;
    }

    public void setALinkAttributionUri(String str) {
        this.f11805j = str;
    }

    public void setALinkQueryUri(String str) {
        this.f11804i = str;
    }

    public void setAbUri(String str) {
        this.f11801f = str;
    }

    public void setActiveUri(String str) {
        this.f11798c = str;
    }

    public void setBusinessUri(String str) {
        this.f11803h = str;
    }

    public void setProfileUri(String str) {
        this.f11802g = str;
    }

    public void setRegisterUri(String str) {
        this.f11796a = str;
    }

    public void setReportOaidUri(String str) {
        this.f11797b = str;
    }

    public void setSendUris(String[] strArr) {
        this.f11799d = strArr;
    }

    public void setSettingUri(String str) {
        this.f11800e = str;
    }
}
