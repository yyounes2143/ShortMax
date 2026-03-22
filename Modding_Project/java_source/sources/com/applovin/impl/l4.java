package com.applovin.impl;

import java.util.Map;
/* loaded from: classes2.dex */
public class l4 {

    /* renamed from: a  reason: collision with root package name */
    private final String f8363a;

    /* renamed from: b  reason: collision with root package name */
    private Map f8364b;

    private l4(String str, Map map) {
        this.f8363a = str;
        this.f8364b = map;
    }

    public static l4 a(String str) {
        return a(str, null);
    }

    public String b() {
        return this.f8363a;
    }

    public String toString() {
        return "PendingReward{result='" + this.f8363a + "'params='" + this.f8364b + "'}";
    }

    public static l4 a(String str, Map map) {
        return new l4(str, map);
    }

    public Map a() {
        return this.f8364b;
    }
}
