package fu;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
/* compiled from: Invocation.java */
/* loaded from: classes8.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f52060a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f52061b;

    /* renamed from: c  reason: collision with root package name */
    private final Method f52062c;

    /* renamed from: d  reason: collision with root package name */
    private final List<?> f52063d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Class<?> cls, Object obj, Method method, List<?> list) {
        this.f52060a = cls;
        this.f52061b = obj;
        this.f52062c = method;
        this.f52063d = Collections.unmodifiableList(list);
    }

    public Method a() {
        return this.f52062c;
    }

    public Class<?> b() {
        return this.f52060a;
    }

    public String toString() {
        return String.format("%s.%s() %s", this.f52060a.getName(), this.f52062c.getName(), this.f52063d);
    }
}
