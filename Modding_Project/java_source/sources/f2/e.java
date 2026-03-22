package f2;

import k2.h;
/* compiled from: SimpleCacheKey.java */
/* loaded from: classes3.dex */
public class e implements a {

    /* renamed from: a  reason: collision with root package name */
    final String f51597a;

    /* renamed from: b  reason: collision with root package name */
    final boolean f51598b;

    public e(String str) {
        this(str, false);
    }

    @Override // f2.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            return this.f51597a.equals(((e) obj).f51597a);
        }
        return false;
    }

    @Override // f2.a
    public String getUriString() {
        return this.f51597a;
    }

    @Override // f2.a
    public int hashCode() {
        return this.f51597a.hashCode();
    }

    @Override // f2.a
    public boolean isResourceIdForDebugging() {
        return this.f51598b;
    }

    public String toString() {
        return this.f51597a;
    }

    public e(String str, boolean z10) {
        this.f51597a = (String) h.g(str);
        this.f51598b = z10;
    }
}
