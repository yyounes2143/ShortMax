package y2;
/* compiled from: RetryManager.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f70602a;

    /* renamed from: b  reason: collision with root package name */
    private int f70603b;

    /* renamed from: c  reason: collision with root package name */
    private int f70604c;

    public c() {
        a();
    }

    public void a() {
        this.f70602a = false;
        this.f70603b = 4;
        c();
    }

    public void b() {
        this.f70604c++;
    }

    public void c() {
        this.f70604c = 0;
    }

    public void d(boolean z10) {
        this.f70602a = z10;
    }

    public boolean e() {
        if (this.f70602a && this.f70604c < this.f70603b) {
            return true;
        }
        return false;
    }
}
