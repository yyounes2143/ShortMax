package e8;

import androidx.annotation.NonNull;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.java */
/* loaded from: classes5.dex */
final class r extends f0.e.d.a.b.AbstractC0728e {

    /* renamed from: a  reason: collision with root package name */
    private final String f51200a;

    /* renamed from: b  reason: collision with root package name */
    private final int f51201b;

    /* renamed from: c  reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> f51202c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0728e.AbstractC0729a {

        /* renamed from: a  reason: collision with root package name */
        private String f51203a;

        /* renamed from: b  reason: collision with root package name */
        private int f51204b;

        /* renamed from: c  reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> f51205c;

        /* renamed from: d  reason: collision with root package name */
        private byte f51206d;

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0729a
        public f0.e.d.a.b.AbstractC0728e a() {
            String str;
            List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> list;
            if (this.f51206d == 1 && (str = this.f51203a) != null && (list = this.f51205c) != null) {
                return new r(str, this.f51204b, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51203a == null) {
                sb2.append(" name");
            }
            if ((1 & this.f51206d) == 0) {
                sb2.append(" importance");
            }
            if (this.f51205c == null) {
                sb2.append(" frames");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0729a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0729a b(List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> list) {
            if (list != null) {
                this.f51205c = list;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0729a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0729a c(int i10) {
            this.f51204b = i10;
            this.f51206d = (byte) (this.f51206d | 1);
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0728e.AbstractC0729a
        public f0.e.d.a.b.AbstractC0728e.AbstractC0729a d(String str) {
            if (str != null) {
                this.f51203a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e
    @NonNull
    public List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> b() {
        return this.f51202c;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e
    public int c() {
        return this.f51201b;
    }

    @Override // e8.f0.e.d.a.b.AbstractC0728e
    @NonNull
    public String d() {
        return this.f51200a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0728e)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0728e abstractC0728e = (f0.e.d.a.b.AbstractC0728e) obj;
        if (this.f51200a.equals(abstractC0728e.d()) && this.f51201b == abstractC0728e.c() && this.f51202c.equals(abstractC0728e.b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f51200a.hashCode() ^ 1000003) * 1000003) ^ this.f51201b) * 1000003) ^ this.f51202c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f51200a + ", importance=" + this.f51201b + ", frames=" + this.f51202c + "}";
    }

    private r(String str, int i10, List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> list) {
        this.f51200a = str;
        this.f51201b = i10;
        this.f51202c = list;
    }
}
