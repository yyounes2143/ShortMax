package fu;

import fu.c;
import fu.x;
import java.util.concurrent.Executor;
/* compiled from: Platform.java */
/* loaded from: classes8.dex */
final class w {

    /* renamed from: a  reason: collision with root package name */
    static final Executor f52129a;

    /* renamed from: b  reason: collision with root package name */
    static final x f52130b;

    /* renamed from: c  reason: collision with root package name */
    static final c f52131c;

    static {
        String property = System.getProperty("java.vm.name");
        property.hashCode();
        if (!property.equals("RoboVM")) {
            if (!property.equals("Dalvik")) {
                f52129a = null;
                f52130b = new x.b();
                f52131c = new c.a();
                return;
            }
            f52129a = new a();
            f52130b = new x.a();
            f52131c = new c.a();
            return;
        }
        f52129a = null;
        f52130b = new x();
        f52131c = new c();
    }
}
