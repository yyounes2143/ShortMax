package hb;
/* loaded from: classes5.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    private y0 f52697a;

    /* renamed from: b  reason: collision with root package name */
    private y0 f52698b;

    /* renamed from: c  reason: collision with root package name */
    private y0 f52699c;

    /* renamed from: d  reason: collision with root package name */
    private y0 f52700d;

    public i0(String str) {
    }

    public y0 a() {
        return this.f52699c;
    }

    public y0 b(String str) {
        if (str.equals("oper")) {
            return f();
        }
        if (str.equals("maint")) {
            return d();
        }
        if (str.equals("diffprivacy")) {
            return a();
        }
        if (str.equals("preins")) {
            return g();
        }
        f1.m("hmsSdk", "HiAnalyticsInstData.getConfig(type): wrong type: " + str);
        return null;
    }

    public void c(y0 y0Var) {
        this.f52697a = y0Var;
    }

    public y0 d() {
        return this.f52697a;
    }

    public void e(y0 y0Var) {
        this.f52698b = y0Var;
    }

    public y0 f() {
        return this.f52698b;
    }

    public y0 g() {
        return this.f52700d;
    }
}
