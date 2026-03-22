package c;

import da.b;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f2835a;

    /* renamed from: b  reason: collision with root package name */
    public final List f2836b;

    /* renamed from: c  reason: collision with root package name */
    public final ca.f f2837c;

    /* renamed from: d  reason: collision with root package name */
    public final b.a f2838d;

    public g(String requestId, List formats, ca.f adRequestParam, b.a listener) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(formats, "formats");
        Intrinsics.checkNotNullParameter(adRequestParam, "adRequestParam");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f2835a = requestId;
        this.f2836b = formats;
        this.f2837c = adRequestParam;
        this.f2838d = listener;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (Intrinsics.areEqual(this.f2835a, gVar.f2835a) && Intrinsics.areEqual(this.f2836b, gVar.f2836b) && Intrinsics.areEqual(this.f2837c, gVar.f2837c) && Intrinsics.areEqual(this.f2838d, gVar.f2838d)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f2836b.hashCode();
        int hashCode2 = this.f2837c.hashCode();
        int hashCode3 = Boolean.hashCode(false);
        return this.f2838d.hashCode() + ((hashCode3 + ((hashCode2 + ((hashCode + (this.f2835a.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AdRequest(requestId=" + this.f2835a + ", formats=" + this.f2836b + ", adRequestParam=" + this.f2837c + ", frozen=false, listener=" + this.f2838d + ')';
    }
}
