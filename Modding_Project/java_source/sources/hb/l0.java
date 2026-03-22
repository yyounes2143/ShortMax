package hb;
/* loaded from: classes5.dex */
public class l0 {

    /* renamed from: b  reason: collision with root package name */
    private static l0 f52719b = new l0();

    /* renamed from: a  reason: collision with root package name */
    private a f52720a = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        String f52721a;

        /* renamed from: b  reason: collision with root package name */
        String f52722b;

        /* renamed from: c  reason: collision with root package name */
        long f52723c = 0;

        a() {
        }

        void a(long j10) {
            l0.this.f52720a.f52723c = j10;
        }

        void b(String str) {
            l0.this.f52720a.f52722b = str;
        }

        void c(String str) {
            l0.this.f52720a.f52721a = str;
        }
    }

    public static l0 f() {
        return f52719b;
    }

    public String b() {
        return this.f52720a.f52722b;
    }

    public void c(String str, String str2) {
        long d10 = d();
        String d11 = g1.d(str, str2);
        if (d11 != null && !d11.isEmpty()) {
            if (d10 == 0) {
                d10 = System.currentTimeMillis();
            } else if (System.currentTimeMillis() - d10 <= 43200000) {
                return;
            }
            String d12 = mb.a.d(16);
            String a10 = v.a(d11, d12);
            this.f52720a.a(d10);
            this.f52720a.c(d12);
            this.f52720a.b(a10);
            return;
        }
        f1.l("WorkKeyHandler", "get rsa pubkey config error");
    }

    public long d() {
        return this.f52720a.f52723c;
    }

    public String e() {
        return this.f52720a.f52721a;
    }
}
