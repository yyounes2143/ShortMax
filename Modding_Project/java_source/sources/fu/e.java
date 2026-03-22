package fu;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* compiled from: CallAdapter.java */
/* loaded from: classes8.dex */
public interface e<R, T> {

    /* compiled from: CallAdapter.java */
    /* loaded from: classes8.dex */
    public static abstract class a {
        /* JADX INFO: Access modifiers changed from: protected */
        public static Type b(int i10, ParameterizedType parameterizedType) {
            return h0.g(i10, parameterizedType);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static Class<?> c(Type type) {
            return h0.h(type);
        }

        public abstract e<?, ?> a(Type type, Annotation[] annotationArr, d0 d0Var);
    }

    T a(d<R> dVar);

    Type b();
}
