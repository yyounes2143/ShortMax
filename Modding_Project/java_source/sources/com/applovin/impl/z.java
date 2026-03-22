package com.applovin.impl;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final Map f10666a;

    /* renamed from: b  reason: collision with root package name */
    private final List f10667b;

    public z(Map map, List list) {
        this.f10666a = map;
        this.f10667b = list;
    }

    protected boolean a(Object obj) {
        return obj instanceof z;
    }

    public List b() {
        return this.f10667b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        if (!zVar.a(this)) {
            return false;
        }
        Map a10 = a();
        Map a11 = zVar.a();
        if (a10 != null ? !a10.equals(a11) : a11 != null) {
            return false;
        }
        List b10 = b();
        List b11 = zVar.b();
        if (b10 != null ? b10.equals(b11) : b11 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        Map a10 = a();
        int i10 = 43;
        if (a10 == null) {
            hashCode = 43;
        } else {
            hashCode = a10.hashCode();
        }
        List b10 = b();
        int i11 = (hashCode + 59) * 59;
        if (b10 != null) {
            i10 = b10.hashCode();
        }
        return i11 + i10;
    }

    public String toString() {
        return "AppAdsTxt(domainEntries=" + a() + ", invalidEntries=" + b() + ")";
    }

    public Map a() {
        return this.f10666a;
    }
}
