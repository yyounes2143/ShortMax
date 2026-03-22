package o5;

import java.util.HashSet;
/* compiled from: ExoPlayerLibraryInfo.java */
/* loaded from: classes4.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    private static final HashSet<String> f63134a = new HashSet<>();

    /* renamed from: b  reason: collision with root package name */
    private static String f63135b = "goog.exo.core";

    public static synchronized void a(String str) {
        synchronized (z.class) {
            if (f63134a.add(str)) {
                f63135b += ", " + str;
            }
        }
    }

    public static synchronized String b() {
        String str;
        synchronized (z.class) {
            str = f63135b;
        }
        return str;
    }
}
