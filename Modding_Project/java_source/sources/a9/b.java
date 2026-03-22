package a9;
/* compiled from: SystemClock.java */
/* loaded from: classes5.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private static b f320a;

    private b() {
    }

    public static b a() {
        if (f320a == null) {
            f320a = new b();
        }
        return f320a;
    }

    @Override // a9.a
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
