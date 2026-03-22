package pu;
/* compiled from: PlatformDependent.java */
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f65007a;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f65008b;

    static {
        boolean z10;
        int b10 = b();
        f65007a = b10;
        if (b10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        f65008b = z10;
    }

    public static int a() {
        return f65007a;
    }

    private static int b() {
        try {
            return ((Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null)).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }
}
