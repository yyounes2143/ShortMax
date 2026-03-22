package com.amazonaws;

import java.util.EnumMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class RequestClientOptions {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Marker, String> f4882a = new EnumMap(Marker.class);

    /* loaded from: classes2.dex */
    public enum Marker {
        USER_AGENT
    }

    private String b(String str, String str2) {
        if (!str.contains(str2)) {
            return str + " " + str2;
        }
        return str;
    }

    public void a(String str) {
        Map<Marker, String> map = this.f4882a;
        Marker marker = Marker.USER_AGENT;
        String str2 = map.get(marker);
        if (str2 == null) {
            str2 = "";
        }
        d(marker, b(str2, str));
    }

    public String c(Marker marker) {
        return this.f4882a.get(marker);
    }

    public void d(Marker marker, String str) {
        this.f4882a.put(marker, str);
    }
}
