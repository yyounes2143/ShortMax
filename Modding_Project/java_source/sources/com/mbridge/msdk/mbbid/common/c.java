package com.mbridge.msdk.mbbid.common;
/* compiled from: BidRequestParams.java */
/* loaded from: classes5.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    private String f27897a;

    /* renamed from: b  reason: collision with root package name */
    private String f27898b;

    /* renamed from: c  reason: collision with root package name */
    private String f27899c;

    public c(String str, String str2) {
        this.f27897a = str;
        this.f27898b = str2;
    }

    public String getmFloorPrice() {
        return this.f27899c;
    }

    public String getmPlacementId() {
        return this.f27897a;
    }

    public String getmUnitId() {
        return this.f27898b;
    }

    public void setmFloorPrice(String str) {
        this.f27899c = str;
    }

    public void setmPlacementId(String str) {
        this.f27897a = str;
    }

    public void setmUnitId(String str) {
        this.f27898b = str;
    }

    public c(String str, String str2, String str3) {
        this.f27897a = str;
        this.f27898b = str2;
        this.f27899c = str3;
    }
}
