package fu;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ServiceMethod.java */
/* loaded from: classes8.dex */
public abstract class e0<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> e0<T> b(d0 d0Var, Class<?> cls, Method method) {
        b0 b10 = b0.b(d0Var, cls, method);
        Type genericReturnType = method.getGenericReturnType();
        if (!h0.j(genericReturnType)) {
            if (genericReturnType != Void.TYPE) {
                return r.f(d0Var, method, b10);
            }
            throw h0.n(method, "Service methods cannot return void.", new Object[0]);
        }
        throw h0.n(method, "Method return type must not include a type variable or wildcard: %s", genericReturnType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T a(Object obj, Object[] objArr);
}
