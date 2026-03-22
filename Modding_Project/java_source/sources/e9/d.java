package e9;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: GlobalLibraryVersionRegistrar.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static volatile d f51270b;

    /* renamed from: a  reason: collision with root package name */
    private final Set<f> f51271a = new HashSet();

    d() {
    }

    public static d a() {
        d dVar = f51270b;
        if (dVar == null) {
            synchronized (d.class) {
                try {
                    dVar = f51270b;
                    if (dVar == null) {
                        dVar = new d();
                        f51270b = dVar;
                    }
                } finally {
                }
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<f> b() {
        Set<f> unmodifiableSet;
        synchronized (this.f51271a) {
            unmodifiableSet = Collections.unmodifiableSet(this.f51271a);
        }
        return unmodifiableSet;
    }
}
