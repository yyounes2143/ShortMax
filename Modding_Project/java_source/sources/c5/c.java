package c5;

import c5.o;
/* compiled from: AutoValue_SendRequest.java */
/* loaded from: classes4.dex */
final class c extends o {

    /* renamed from: a  reason: collision with root package name */
    private final p f3093a;

    /* renamed from: b  reason: collision with root package name */
    private final String f3094b;

    /* renamed from: c  reason: collision with root package name */
    private final a5.d<?> f3095c;

    /* renamed from: d  reason: collision with root package name */
    private final a5.g<?, byte[]> f3096d;

    /* renamed from: e  reason: collision with root package name */
    private final a5.c f3097e;

    /* compiled from: AutoValue_SendRequest.java */
    /* loaded from: classes4.dex */
    static final class b extends o.a {

        /* renamed from: a  reason: collision with root package name */
        private p f3098a;

        /* renamed from: b  reason: collision with root package name */
        private String f3099b;

        /* renamed from: c  reason: collision with root package name */
        private a5.d<?> f3100c;

        /* renamed from: d  reason: collision with root package name */
        private a5.g<?, byte[]> f3101d;

        /* renamed from: e  reason: collision with root package name */
        private a5.c f3102e;

        @Override // c5.o.a
        public o a() {
            String str = "";
            if (this.f3098a == null) {
                str = " transportContext";
            }
            if (this.f3099b == null) {
                str = str + " transportName";
            }
            if (this.f3100c == null) {
                str = str + " event";
            }
            if (this.f3101d == null) {
                str = str + " transformer";
            }
            if (this.f3102e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new c(this.f3098a, this.f3099b, this.f3100c, this.f3101d, this.f3102e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // c5.o.a
        o.a b(a5.c cVar) {
            if (cVar != null) {
                this.f3102e = cVar;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // c5.o.a
        o.a c(a5.d<?> dVar) {
            if (dVar != null) {
                this.f3100c = dVar;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // c5.o.a
        o.a d(a5.g<?, byte[]> gVar) {
            if (gVar != null) {
                this.f3101d = gVar;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // c5.o.a
        public o.a e(p pVar) {
            if (pVar != null) {
                this.f3098a = pVar;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // c5.o.a
        public o.a f(String str) {
            if (str != null) {
                this.f3099b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }
    }

    @Override // c5.o
    public a5.c b() {
        return this.f3097e;
    }

    @Override // c5.o
    a5.d<?> c() {
        return this.f3095c;
    }

    @Override // c5.o
    a5.g<?, byte[]> e() {
        return this.f3096d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f3093a.equals(oVar.f()) && this.f3094b.equals(oVar.g()) && this.f3095c.equals(oVar.c()) && this.f3096d.equals(oVar.e()) && this.f3097e.equals(oVar.b())) {
            return true;
        }
        return false;
    }

    @Override // c5.o
    public p f() {
        return this.f3093a;
    }

    @Override // c5.o
    public String g() {
        return this.f3094b;
    }

    public int hashCode() {
        return ((((((((this.f3093a.hashCode() ^ 1000003) * 1000003) ^ this.f3094b.hashCode()) * 1000003) ^ this.f3095c.hashCode()) * 1000003) ^ this.f3096d.hashCode()) * 1000003) ^ this.f3097e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f3093a + ", transportName=" + this.f3094b + ", event=" + this.f3095c + ", transformer=" + this.f3096d + ", encoding=" + this.f3097e + "}";
    }

    private c(p pVar, String str, a5.d<?> dVar, a5.g<?, byte[]> gVar, a5.c cVar) {
        this.f3093a = pVar;
        this.f3094b = str;
        this.f3095c = dVar;
        this.f3096d = gVar;
        this.f3097e = cVar;
    }
}
