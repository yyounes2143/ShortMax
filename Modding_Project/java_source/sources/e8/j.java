package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Application_Organization.java */
/* loaded from: classes5.dex */
final class j extends f0.e.a.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f51115a;

    @Override // e8.f0.e.a.b
    @NonNull
    public String a() {
        return this.f51115a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.a.b) {
            return this.f51115a.equals(((f0.e.a.b) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return this.f51115a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Organization{clsId=" + this.f51115a + "}";
    }
}
