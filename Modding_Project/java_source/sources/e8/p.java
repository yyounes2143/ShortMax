package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.java */
/* loaded from: classes5.dex */
final class p extends f0.e.d.a.b.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f51182a;

    /* renamed from: b  reason: collision with root package name */
    private final String f51183b;

    /* renamed from: c  reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> f51184c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.e.d.a.b.c f51185d;

    /* renamed from: e  reason: collision with root package name */
    private final int f51186e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.b.c.AbstractC0725a {

        /* renamed from: a  reason: collision with root package name */
        private String f51187a;

        /* renamed from: b  reason: collision with root package name */
        private String f51188b;

        /* renamed from: c  reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> f51189c;

        /* renamed from: d  reason: collision with root package name */
        private f0.e.d.a.b.c f51190d;

        /* renamed from: e  reason: collision with root package name */
        private int f51191e;

        /* renamed from: f  reason: collision with root package name */
        private byte f51192f;

        @Override // e8.f0.e.d.a.b.c.AbstractC0725a
        public f0.e.d.a.b.c a() {
            String str;
            List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> list;
            if (this.f51192f == 1 && (str = this.f51187a) != null && (list = this.f51189c) != null) {
                return new p(str, this.f51188b, list, this.f51190d, this.f51191e);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51187a == null) {
                sb2.append(" type");
            }
            if (this.f51189c == null) {
                sb2.append(" frames");
            }
            if ((1 & this.f51192f) == 0) {
                sb2.append(" overflowCount");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.b.c.AbstractC0725a
        public f0.e.d.a.b.c.AbstractC0725a b(f0.e.d.a.b.c cVar) {
            this.f51190d = cVar;
            return this;
        }

        @Override // e8.f0.e.d.a.b.c.AbstractC0725a
        public f0.e.d.a.b.c.AbstractC0725a c(List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> list) {
            if (list != null) {
                this.f51189c = list;
                return this;
            }
            throw new NullPointerException("Null frames");
        }

        @Override // e8.f0.e.d.a.b.c.AbstractC0725a
        public f0.e.d.a.b.c.AbstractC0725a d(int i10) {
            this.f51191e = i10;
            this.f51192f = (byte) (this.f51192f | 1);
            return this;
        }

        @Override // e8.f0.e.d.a.b.c.AbstractC0725a
        public f0.e.d.a.b.c.AbstractC0725a e(String str) {
            this.f51188b = str;
            return this;
        }

        @Override // e8.f0.e.d.a.b.c.AbstractC0725a
        public f0.e.d.a.b.c.AbstractC0725a f(String str) {
            if (str != null) {
                this.f51187a = str;
                return this;
            }
            throw new NullPointerException("Null type");
        }
    }

    @Override // e8.f0.e.d.a.b.c
    @Nullable
    public f0.e.d.a.b.c b() {
        return this.f51185d;
    }

    @Override // e8.f0.e.d.a.b.c
    @NonNull
    public List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> c() {
        return this.f51184c;
    }

    @Override // e8.f0.e.d.a.b.c
    public int d() {
        return this.f51186e;
    }

    @Override // e8.f0.e.d.a.b.c
    @Nullable
    public String e() {
        return this.f51183b;
    }

    public boolean equals(Object obj) {
        String str;
        f0.e.d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.c)) {
            return false;
        }
        f0.e.d.a.b.c cVar2 = (f0.e.d.a.b.c) obj;
        if (this.f51182a.equals(cVar2.f()) && ((str = this.f51183b) != null ? str.equals(cVar2.e()) : cVar2.e() == null) && this.f51184c.equals(cVar2.c()) && ((cVar = this.f51185d) != null ? cVar.equals(cVar2.b()) : cVar2.b() == null) && this.f51186e == cVar2.d()) {
            return true;
        }
        return false;
    }

    @Override // e8.f0.e.d.a.b.c
    @NonNull
    public String f() {
        return this.f51182a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f51182a.hashCode() ^ 1000003) * 1000003;
        String str = this.f51183b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int hashCode3 = (((hashCode2 ^ hashCode) * 1000003) ^ this.f51184c.hashCode()) * 1000003;
        f0.e.d.a.b.c cVar = this.f51185d;
        if (cVar != null) {
            i10 = cVar.hashCode();
        }
        return ((hashCode3 ^ i10) * 1000003) ^ this.f51186e;
    }

    public String toString() {
        return "Exception{type=" + this.f51182a + ", reason=" + this.f51183b + ", frames=" + this.f51184c + ", causedBy=" + this.f51185d + ", overflowCount=" + this.f51186e + "}";
    }

    private p(String str, @Nullable String str2, List<f0.e.d.a.b.AbstractC0728e.AbstractC0730b> list, @Nullable f0.e.d.a.b.c cVar, int i10) {
        this.f51182a = str;
        this.f51183b = str2;
        this.f51184c = list;
        this.f51185d = cVar;
        this.f51186e = i10;
    }
}
