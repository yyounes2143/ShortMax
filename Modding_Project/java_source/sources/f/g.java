package f;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f51579a;

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f51580b;

    public g(ArrayList cachedAds, ArrayList unCachedAdLoadParam) {
        Intrinsics.checkNotNullParameter(cachedAds, "cachedAds");
        Intrinsics.checkNotNullParameter(unCachedAdLoadParam, "unCachedAdLoadParam");
        this.f51579a = cachedAds;
        this.f51580b = unCachedAdLoadParam;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (Intrinsics.areEqual(this.f51579a, gVar.f51579a) && Intrinsics.areEqual(this.f51580b, gVar.f51580b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f51580b.hashCode() + (this.f51579a.hashCode() * 31);
    }

    public final String toString() {
        return "cached[" + this.f51579a.size() + "]=" + this.f51579a + "\nunCached=" + this.f51580b + '\n';
    }
}
