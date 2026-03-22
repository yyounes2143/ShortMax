package com.applovin.impl;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class p3 {

    /* renamed from: c  reason: collision with root package name */
    private static final Set f9200c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private static final Map f9201d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public static final p3 f9202e;

    /* renamed from: f  reason: collision with root package name */
    public static final p3 f9203f;

    /* renamed from: g  reason: collision with root package name */
    public static final p3 f9204g;

    /* renamed from: a  reason: collision with root package name */
    private String f9205a;

    /* renamed from: b  reason: collision with root package name */
    private Set f9206b;

    /* loaded from: classes2.dex */
    public enum a {
        SESSION("session"),
        INSTALL("install");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f9210a;

        a(String str) {
            this.f9210a = str;
        }

        public String b() {
            return this.f9210a;
        }
    }

    /* loaded from: classes2.dex */
    public interface b {
        Object a(Object obj);
    }

    static {
        a aVar = a.SESSION;
        f9202e = a("ars", aVar, a.INSTALL);
        f9203f = a("ar", aVar);
        f9204g = a("ttdasi_ms", aVar);
    }

    private p3(String str, Set set) {
        this.f9205a = str;
        this.f9206b = set;
    }

    protected boolean a(Object obj) {
        return obj instanceof p3;
    }

    public Set b() {
        return this.f9206b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p3)) {
            return false;
        }
        p3 p3Var = (p3) obj;
        if (!p3Var.a(this)) {
            return false;
        }
        String a10 = a();
        String a11 = p3Var.a();
        if (a10 != null ? !a10.equals(a11) : a11 != null) {
            return false;
        }
        Set b10 = b();
        Set b11 = p3Var.b();
        if (b10 != null ? b10.equals(b11) : b11 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String a10 = a();
        int i10 = 43;
        if (a10 == null) {
            hashCode = 43;
        } else {
            hashCode = a10.hashCode();
        }
        Set b10 = b();
        int i11 = (hashCode + 59) * 59;
        if (b10 != null) {
            i10 = b10.hashCode();
        }
        return i11 + i10;
    }

    public String toString() {
        return this.f9205a;
    }

    public String a() {
        return this.f9205a;
    }

    private static p3 a(String str, a... aVarArr) {
        Set set = f9200c;
        if (!set.contains(str)) {
            p3 p3Var = new p3(str, new HashSet(Arrays.asList(aVarArr)));
            set.add(str);
            f9201d.put(str, p3Var);
            return p3Var;
        }
        throw new IllegalArgumentException("Key has already been used: " + str);
    }

    public boolean a(a aVar) {
        return this.f9206b.contains(aVar);
    }

    public static p3 a(String str) {
        return (p3) f9201d.get(str);
    }
}
