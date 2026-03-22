package e8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e8.f0;
import java.util.List;
/* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java */
/* loaded from: classes5.dex */
final class n extends f0.e.d.a.b {

    /* renamed from: a  reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0728e> f51163a;

    /* renamed from: b  reason: collision with root package name */
    private final f0.e.d.a.b.c f51164b;

    /* renamed from: c  reason: collision with root package name */
    private final f0.a f51165c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.e.d.a.b.AbstractC0726d f51166d;

    /* renamed from: e  reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0722a> f51167e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java */
    /* loaded from: classes5.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0724b {

        /* renamed from: a  reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0728e> f51168a;

        /* renamed from: b  reason: collision with root package name */
        private f0.e.d.a.b.c f51169b;

        /* renamed from: c  reason: collision with root package name */
        private f0.a f51170c;

        /* renamed from: d  reason: collision with root package name */
        private f0.e.d.a.b.AbstractC0726d f51171d;

        /* renamed from: e  reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0722a> f51172e;

        @Override // e8.f0.e.d.a.b.AbstractC0724b
        public f0.e.d.a.b a() {
            List<f0.e.d.a.b.AbstractC0722a> list;
            f0.e.d.a.b.AbstractC0726d abstractC0726d = this.f51171d;
            if (abstractC0726d != null && (list = this.f51172e) != null) {
                return new n(this.f51168a, this.f51169b, this.f51170c, abstractC0726d, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f51171d == null) {
                sb2.append(" signal");
            }
            if (this.f51172e == null) {
                sb2.append(" binaries");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // e8.f0.e.d.a.b.AbstractC0724b
        public f0.e.d.a.b.AbstractC0724b b(f0.a aVar) {
            this.f51170c = aVar;
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0724b
        public f0.e.d.a.b.AbstractC0724b c(List<f0.e.d.a.b.AbstractC0722a> list) {
            if (list != null) {
                this.f51172e = list;
                return this;
            }
            throw new NullPointerException("Null binaries");
        }

        @Override // e8.f0.e.d.a.b.AbstractC0724b
        public f0.e.d.a.b.AbstractC0724b d(f0.e.d.a.b.c cVar) {
            this.f51169b = cVar;
            return this;
        }

        @Override // e8.f0.e.d.a.b.AbstractC0724b
        public f0.e.d.a.b.AbstractC0724b e(f0.e.d.a.b.AbstractC0726d abstractC0726d) {
            if (abstractC0726d != null) {
                this.f51171d = abstractC0726d;
                return this;
            }
            throw new NullPointerException("Null signal");
        }

        @Override // e8.f0.e.d.a.b.AbstractC0724b
        public f0.e.d.a.b.AbstractC0724b f(List<f0.e.d.a.b.AbstractC0728e> list) {
            this.f51168a = list;
            return this;
        }
    }

    @Override // e8.f0.e.d.a.b
    @Nullable
    public f0.a b() {
        return this.f51165c;
    }

    @Override // e8.f0.e.d.a.b
    @NonNull
    public List<f0.e.d.a.b.AbstractC0722a> c() {
        return this.f51167e;
    }

    @Override // e8.f0.e.d.a.b
    @Nullable
    public f0.e.d.a.b.c d() {
        return this.f51164b;
    }

    @Override // e8.f0.e.d.a.b
    @NonNull
    public f0.e.d.a.b.AbstractC0726d e() {
        return this.f51166d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b)) {
            return false;
        }
        f0.e.d.a.b bVar = (f0.e.d.a.b) obj;
        List<f0.e.d.a.b.AbstractC0728e> list = this.f51163a;
        if (list != null ? list.equals(bVar.f()) : bVar.f() == null) {
            f0.e.d.a.b.c cVar = this.f51164b;
            if (cVar != null ? cVar.equals(bVar.d()) : bVar.d() == null) {
                f0.a aVar = this.f51165c;
                if (aVar != null ? aVar.equals(bVar.b()) : bVar.b() == null) {
                    if (this.f51166d.equals(bVar.e()) && this.f51167e.equals(bVar.c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // e8.f0.e.d.a.b
    @Nullable
    public List<f0.e.d.a.b.AbstractC0728e> f() {
        return this.f51163a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        List<f0.e.d.a.b.AbstractC0728e> list = this.f51163a;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        f0.e.d.a.b.c cVar = this.f51164b;
        if (cVar == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = cVar.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        f0.a aVar = this.f51165c;
        if (aVar != null) {
            i10 = aVar.hashCode();
        }
        return ((((i12 ^ i10) * 1000003) ^ this.f51166d.hashCode()) * 1000003) ^ this.f51167e.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f51163a + ", exception=" + this.f51164b + ", appExitInfo=" + this.f51165c + ", signal=" + this.f51166d + ", binaries=" + this.f51167e + "}";
    }

    private n(@Nullable List<f0.e.d.a.b.AbstractC0728e> list, @Nullable f0.e.d.a.b.c cVar, @Nullable f0.a aVar, f0.e.d.a.b.AbstractC0726d abstractC0726d, List<f0.e.d.a.b.AbstractC0722a> list2) {
        this.f51163a = list;
        this.f51164b = cVar;
        this.f51165c = aVar;
        this.f51166d = abstractC0726d;
        this.f51167e = list2;
    }
}
