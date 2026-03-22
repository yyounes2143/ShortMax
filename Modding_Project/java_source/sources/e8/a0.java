package e8;

import androidx.annotation.NonNull;
import e8.f0;
/* compiled from: AutoValue_CrashlyticsReport_Session_User.java */
/* loaded from: classes5.dex */
final class a0 extends f0.e.f {

    /* renamed from: a  reason: collision with root package name */
    private final String f50990a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_User.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.f.a {

        /* renamed from: a  reason: collision with root package name */
        private String f50991a;

        @Override // e8.f0.e.f.a
        public f0.e.f a() {
            String str = this.f50991a;
            if (str != null) {
                return new a0(str);
            }
            throw new IllegalStateException("Missing required properties: identifier");
        }

        @Override // e8.f0.e.f.a
        public f0.e.f.a b(String str) {
            if (str != null) {
                this.f50991a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }
    }

    @Override // e8.f0.e.f
    @NonNull
    public String b() {
        return this.f50990a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.f) {
            return this.f50990a.equals(((f0.e.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f50990a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f50990a + "}";
    }

    private a0(String str) {
        this.f50990a = str;
    }
}
