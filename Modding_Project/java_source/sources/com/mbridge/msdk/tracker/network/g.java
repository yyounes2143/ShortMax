package com.mbridge.msdk.tracker.network;

import android.text.TextUtils;
/* compiled from: Header.java */
/* loaded from: classes6.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final String f30276a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30277b;

    public g(String str, String str2) {
        this.f30276a = str;
        this.f30277b = str2;
    }

    public final String a() {
        return this.f30276a;
    }

    public final String b() {
        return this.f30277b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (TextUtils.equals(this.f30276a, gVar.f30276a) && TextUtils.equals(this.f30277b, gVar.f30277b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f30276a.hashCode() * 31) + this.f30277b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f30276a + ",value=" + this.f30277b + "]";
    }
}
