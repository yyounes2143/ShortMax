package fu;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* compiled from: Converter.java */
/* loaded from: classes8.dex */
public interface h<F, T> {

    /* compiled from: Converter.java */
    /* loaded from: classes8.dex */
    public static abstract class a {
        /* JADX INFO: Access modifiers changed from: protected */
        public static Type a(int i10, ParameterizedType parameterizedType) {
            return h0.g(i10, parameterizedType);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static Class<?> b(Type type) {
            return h0.h(type);
        }

        public h<?, RequestBody> c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, d0 d0Var) {
            return null;
        }

        public h<ResponseBody, ?> d(Type type, Annotation[] annotationArr, d0 d0Var) {
            return null;
        }

        public h<?, String> e(Type type, Annotation[] annotationArr, d0 d0Var) {
            return null;
        }
    }

    T convert(F f10) throws IOException;
}
