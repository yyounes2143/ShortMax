package zm;

import java.util.HashSet;
/* compiled from: MediaLibraryInfo.java */
/* loaded from: classes8.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f72124a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private static String f72125b = "media3.common";

    public static synchronized void a(String str) {
        synchronized (r.class) {
            if (f72124a.add(str)) {
                f72125b += ", " + str;
            }
        }
    }

    public static synchronized String b() {
        String str;
        synchronized (r.class) {
            str = f72125b;
        }
        return str;
    }
}
