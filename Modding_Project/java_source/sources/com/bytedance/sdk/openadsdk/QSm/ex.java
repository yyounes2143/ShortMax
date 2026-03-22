package com.bytedance.sdk.openadsdk.QSm;
/* loaded from: classes3.dex */
public enum ex {
    TYPE_2G("2g"),
    TYPE_3G("3g"),
    TYPE_4G("4g"),
    TYPE_5G("5g"),
    TYPE_WIFI("wifi"),
    TYPE_MOBILE("mobile"),
    TYPE_UNKNOWN("unknown");
    

    /* renamed from: so  reason: collision with root package name */
    private String f12833so;

    ex(String str) {
        this.f12833so = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f12833so;
    }
}
