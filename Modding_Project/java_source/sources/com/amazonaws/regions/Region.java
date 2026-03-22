package com.amazonaws.regions;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Region {

    /* renamed from: a  reason: collision with root package name */
    private final String f5772a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5773b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f5774c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Boolean> f5775d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Boolean> f5776e = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Region(String str, String str2) {
        this.f5772a = str;
        if (str2 != null && !str2.isEmpty()) {
            this.f5773b = str2;
        } else {
            this.f5773b = "amazonaws.com";
        }
    }

    public static Region e(Regions regions) {
        return RegionUtils.a(regions.getName());
    }

    public static Region f(String str) {
        return RegionUtils.a(str);
    }

    public String a() {
        return this.f5773b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Boolean> b() {
        return this.f5775d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Boolean> c() {
        return this.f5776e;
    }

    public String d() {
        return this.f5772a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Region)) {
            return false;
        }
        return d().equals(((Region) obj).d());
    }

    public String g(String str) {
        return this.f5774c.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> h() {
        return this.f5774c;
    }

    public int hashCode() {
        return d().hashCode();
    }

    public boolean i(String str) {
        return this.f5774c.containsKey(str);
    }

    public String toString() {
        return d();
    }
}
