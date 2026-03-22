package com.applovin.sdk;

import java.util.Locale;
/* loaded from: classes2.dex */
public class AppLovinAdSize {
    public static final int SPAN = -1;

    /* renamed from: a  reason: collision with root package name */
    private final String f10879a;

    /* renamed from: b  reason: collision with root package name */
    private final int f10880b;

    /* renamed from: c  reason: collision with root package name */
    private final int f10881c;
    public static final AppLovinAdSize BANNER = new AppLovinAdSize(-1, 50, "BANNER");
    public static final AppLovinAdSize LEADER = new AppLovinAdSize(-1, 90, "LEADER");
    public static final AppLovinAdSize MREC = new AppLovinAdSize(300, 250, "MREC");
    public static final AppLovinAdSize INTERSTITIAL = new AppLovinAdSize(-1, -1, "INTER");
    public static final AppLovinAdSize NATIVE = new AppLovinAdSize(-1, -1, "NATIVE");

    private AppLovinAdSize(int i10, int i11, String str) {
        this.f10880b = i10;
        this.f10881c = i11;
        this.f10879a = str;
    }

    public static AppLovinAdSize fromString(String str) {
        if ("BANNER".equalsIgnoreCase(str)) {
            return BANNER;
        }
        if ("MREC".equalsIgnoreCase(str)) {
            return MREC;
        }
        if ("LEADER".equalsIgnoreCase(str)) {
            return LEADER;
        }
        if (!"INTERSTITIAL".equalsIgnoreCase(str) && !"INTER".equalsIgnoreCase(str)) {
            if ("NATIVE".equalsIgnoreCase(str)) {
                return NATIVE;
            }
            throw new IllegalArgumentException("Unknown Ad Size: " + str);
        }
        return INTERSTITIAL;
    }

    public int getHeight() {
        return this.f10881c;
    }

    public String getLabel() {
        return this.f10879a.toUpperCase(Locale.ENGLISH);
    }

    public int getWidth() {
        return this.f10880b;
    }

    public String toString() {
        return getLabel();
    }
}
