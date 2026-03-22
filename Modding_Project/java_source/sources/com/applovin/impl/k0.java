package com.applovin.impl;

import com.applovin.sdk.AppLovinSdkConfiguration;
/* loaded from: classes2.dex */
public class k0 {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkConfiguration.ConsentFlowUserGeography f8231a;

    public k0(AppLovinSdkConfiguration.ConsentFlowUserGeography consentFlowUserGeography) {
        this.f8231a = consentFlowUserGeography;
    }

    protected boolean a(Object obj) {
        return obj instanceof k0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        if (!k0Var.a(this)) {
            return false;
        }
        AppLovinSdkConfiguration.ConsentFlowUserGeography a10 = a();
        AppLovinSdkConfiguration.ConsentFlowUserGeography a11 = k0Var.a();
        if (a10 != null ? a10.equals(a11) : a11 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        AppLovinSdkConfiguration.ConsentFlowUserGeography a10 = a();
        if (a10 == null) {
            hashCode = 43;
        } else {
            hashCode = a10.hashCode();
        }
        return hashCode + 59;
    }

    public String toString() {
        return "CmpAdapterParameters(debugUserGeography=" + a() + ")";
    }

    public AppLovinSdkConfiguration.ConsentFlowUserGeography a() {
        return this.f8231a;
    }
}
