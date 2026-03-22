package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Log.java */
/* loaded from: classes5.dex */
final class v extends f0.e.d.AbstractC0733d {

    /* renamed from: a  reason: collision with root package name */
    private final String f51240a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Log.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.AbstractC0733d.a {

        /* renamed from: a  reason: collision with root package name */
        private String f51241a;

        @Override // e8.f0.e.d.AbstractC0733d.a
        public f0.e.d.AbstractC0733d a() {
            String str = this.f51241a;
            if (str != null) {
                return new v(str);
            }
            throw new IllegalStateException("Missing required properties: content");
        }

        @Override // e8.f0.e.d.AbstractC0733d.a
        public f0.e.d.AbstractC0733d.a b(String str) {
            if (str != null) {
                this.f51241a = str;
                return this;
            }
            throw new NullPointerException("Null content");
        }
    }

    @Override // e8.f0.e.d.AbstractC0733d
    @NonNull
    public String b() {
        return this.f51240a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.AbstractC0733d) {
            return this.f51240a.equals(((f0.e.d.AbstractC0733d) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f51240a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f51240a + "}";
    }

    private v(String str) {
        this.f51240a = str;
    }
}
