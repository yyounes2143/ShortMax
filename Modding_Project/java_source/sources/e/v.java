package e;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f50697a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f50698b;

    public v(ArrayList cachedAds, ArrayList unCachedAdLoadParam) {
        Intrinsics.checkNotNullParameter(cachedAds, "cachedAds");
        Intrinsics.checkNotNullParameter(unCachedAdLoadParam, "unCachedAdLoadParam");
        this.f50697a = cachedAds;
        this.f50698b = unCachedAdLoadParam;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (Intrinsics.areEqual(this.f50697a, vVar.f50697a) && Intrinsics.areEqual(this.f50698b, vVar.f50698b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f50698b.hashCode() + (this.f50697a.hashCode() * 31);
    }

    public final String toString() {
        return "cached[" + this.f50697a.size() + "]=" + this.f50697a + "\nunCached=" + this.f50698b + '\n';
    }
}
