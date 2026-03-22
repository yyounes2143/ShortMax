package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application.java */
/* loaded from: classes5.dex */
final class m extends f0.e.d.a {

    /* renamed from: a  reason: collision with root package name */
    private final f0.e.d.a.b f51148a;

    /* renamed from: b  reason: collision with root package name */
    private final List<f0.c> f51149b;

    /* renamed from: c  reason: collision with root package name */
    private final List<f0.c> f51150c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f51151d;

    /* renamed from: e  reason: collision with root package name */
    private final f0.e.d.a.c f51152e;

    /* renamed from: f  reason: collision with root package name */
    private final List<f0.e.d.a.c> f51153f;

    /* renamed from: g  reason: collision with root package name */
    private final int f51154g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.AbstractC0721a {

        /* renamed from: a  reason: collision with root package name */
        private f0.e.d.a.b f51155a;

        /* renamed from: b  reason: collision with root package name */
        private List<f0.c> f51156b;

        /* renamed from: c  reason: collision with root package name */
        private List<f0.c> f51157c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f51158d;

        /* renamed from: e  reason: collision with root package name */
        private f0.e.d.a.c f51159e;

        /* renamed from: f  reason: collision with root package name */
        private List<f0.e.d.a.c> f51160f;

        /* renamed from: g  reason: collision with root package name */
        private int f51161g;

        /* renamed from: h  reason: collision with root package name */
        private byte f51162h;

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a a() {
            f0.e.d.a.b bVar;
            if (this.f51162h == 1 && (bVar = this.f51155a) != null) {
                return new m(bVar, this.f51156b, this.f51157c, this.f51158d, this.f51159e, this.f51160f, this.f51161g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51155a == null) {
                sb2.append(" execution");
            }
            if ((1 & this.f51162h) == 0) {
                sb2.append(" uiOrientation");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a.AbstractC0721a b(@Nullable List<f0.e.d.a.c> list) {
            this.f51160f = list;
            return this;
        }

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a.AbstractC0721a c(@Nullable Boolean bool) {
            this.f51158d = bool;
            return this;
        }

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a.AbstractC0721a d(@Nullable f0.e.d.a.c cVar) {
            this.f51159e = cVar;
            return this;
        }

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a.AbstractC0721a e(List<f0.c> list) {
            this.f51156b = list;
            return this;
        }

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a.AbstractC0721a f(f0.e.d.a.b bVar) {
            if (bVar != null) {
                this.f51155a = bVar;
                return this;
            }
            throw new NullPointerException("Null execution");
        }

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a.AbstractC0721a g(List<f0.c> list) {
            this.f51157c = list;
            return this;
        }

        @Override // e8.f0.e.d.a.AbstractC0721a
        public f0.e.d.a.AbstractC0721a h(int i10) {
            this.f51161g = i10;
            this.f51162h = (byte) (this.f51162h | 1);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(f0.e.d.a aVar) {
            this.f51155a = aVar.f();
            this.f51156b = aVar.e();
            this.f51157c = aVar.g();
            this.f51158d = aVar.c();
            this.f51159e = aVar.d();
            this.f51160f = aVar.b();
            this.f51161g = aVar.h();
            this.f51162h = (byte) 1;
        }
    }

    @Override // e8.f0.e.d.a
    @Nullable
    public List<f0.e.d.a.c> b() {
        return this.f51153f;
    }

    @Override // e8.f0.e.d.a
    @Nullable
    public Boolean c() {
        return this.f51151d;
    }

    @Override // e8.f0.e.d.a
    @Nullable
    public f0.e.d.a.c d() {
        return this.f51152e;
    }

    @Override // e8.f0.e.d.a
    @Nullable
    public List<f0.c> e() {
        return this.f51149b;
    }

    public boolean equals(Object obj) {
        List<f0.c> list;
        List<f0.c> list2;
        Boolean bool;
        f0.e.d.a.c cVar;
        List<f0.e.d.a.c> list3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a)) {
            return false;
        }
        f0.e.d.a aVar = (f0.e.d.a) obj;
        if (this.f51148a.equals(aVar.f()) && ((list = this.f51149b) != null ? list.equals(aVar.e()) : aVar.e() == null) && ((list2 = this.f51150c) != null ? list2.equals(aVar.g()) : aVar.g() == null) && ((bool = this.f51151d) != null ? bool.equals(aVar.c()) : aVar.c() == null) && ((cVar = this.f51152e) != null ? cVar.equals(aVar.d()) : aVar.d() == null) && ((list3 = this.f51153f) != null ? list3.equals(aVar.b()) : aVar.b() == null) && this.f51154g == aVar.h()) {
            return true;
        }
        return false;
    }

    @Override // e8.f0.e.d.a
    @NonNull
    public f0.e.d.a.b f() {
        return this.f51148a;
    }

    @Override // e8.f0.e.d.a
    @Nullable
    public List<f0.c> g() {
        return this.f51150c;
    }

    @Override // e8.f0.e.d.a
    public int h() {
        return this.f51154g;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5 = (this.f51148a.hashCode() ^ 1000003) * 1000003;
        List<f0.c> list = this.f51149b;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = (hashCode5 ^ hashCode) * 1000003;
        List<f0.c> list2 = this.f51150c;
        if (list2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        Boolean bool = this.f51151d;
        if (bool == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool.hashCode();
        }
        int i13 = (i12 ^ hashCode3) * 1000003;
        f0.e.d.a.c cVar = this.f51152e;
        if (cVar == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = cVar.hashCode();
        }
        int i14 = (i13 ^ hashCode4) * 1000003;
        List<f0.e.d.a.c> list3 = this.f51153f;
        if (list3 != null) {
            i10 = list3.hashCode();
        }
        return ((i14 ^ i10) * 1000003) ^ this.f51154g;
    }

    @Override // e8.f0.e.d.a
    public f0.e.d.a.AbstractC0721a i() {
        return new b(this);
    }

    public String toString() {
        return "Application{execution=" + this.f51148a + ", customAttributes=" + this.f51149b + ", internalKeys=" + this.f51150c + ", background=" + this.f51151d + ", currentProcessDetails=" + this.f51152e + ", appProcessDetails=" + this.f51153f + ", uiOrientation=" + this.f51154g + "}";
    }

    private m(f0.e.d.a.b bVar, @Nullable List<f0.c> list, @Nullable List<f0.c> list2, @Nullable Boolean bool, @Nullable f0.e.d.a.c cVar, @Nullable List<f0.e.d.a.c> list3, int i10) {
        this.f51148a = bVar;
        this.f51149b = list;
        this.f51150c = list2;
        this.f51151d = bool;
        this.f51152e = cVar;
        this.f51153f = list3;
        this.f51154g = i10;
    }
}
