package f2;

import java.util.List;
/* compiled from: MultiCacheKey.java */
/* loaded from: classes3.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    final List<a> f51595a;

    public List<a> a() {
        return this.f51595a;
    }

    @Override // f2.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return this.f51595a.equals(((c) obj).f51595a);
        }
        return false;
    }

    @Override // f2.a
    public String getUriString() {
        return this.f51595a.get(0).getUriString();
    }

    @Override // f2.a
    public int hashCode() {
        return this.f51595a.hashCode();
    }

    @Override // f2.a
    public boolean isResourceIdForDebugging() {
        return false;
    }

    public String toString() {
        return "MultiCacheKey:" + this.f51595a.toString();
    }
}
