package bu;

import au.f;
import au.g;
/* compiled from: AndroidComponents.java */
/* loaded from: classes8.dex */
public abstract class a {

    /* renamed from: c  reason: collision with root package name */
    private static final a f2821c;

    /* renamed from: a  reason: collision with root package name */
    public final f f2822a;

    /* renamed from: b  reason: collision with root package name */
    public final g f2823b;

    static {
        a aVar;
        if (b.c()) {
            aVar = b.b();
        } else {
            aVar = null;
        }
        f2821c = aVar;
    }

    public a(f fVar, g gVar) {
        this.f2822a = fVar;
        this.f2823b = gVar;
    }

    public static boolean a() {
        if (f2821c != null) {
            return true;
        }
        return false;
    }

    public static a b() {
        return f2821c;
    }
}
