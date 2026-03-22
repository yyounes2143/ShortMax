package iu;

import fu.d0;
import fu.h;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
/* compiled from: ScalarsConverterFactory.java */
/* loaded from: classes8.dex */
public final class k extends h.a {
    private k() {
    }

    public static k f() {
        return new k();
    }

    @Override // fu.h.a
    public fu.h<?, RequestBody> c(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, d0 d0Var) {
        if (type != String.class && type != Boolean.TYPE && type != Boolean.class && type != Byte.TYPE && type != Byte.class && type != Character.TYPE && type != Character.class && type != Double.TYPE && type != Double.class && type != Float.TYPE && type != Float.class && type != Integer.TYPE && type != Integer.class && type != Long.TYPE && type != Long.class && type != Short.TYPE && type != Short.class) {
            return null;
        }
        return a.f60082a;
    }

    @Override // fu.h.a
    public fu.h<ResponseBody, ?> d(Type type, Annotation[] annotationArr, d0 d0Var) {
        if (type == String.class) {
            return j.f60092a;
        }
        if (type != Boolean.class && type != Boolean.TYPE) {
            if (type != Byte.class && type != Byte.TYPE) {
                if (type != Character.class && type != Character.TYPE) {
                    if (type != Double.class && type != Double.TYPE) {
                        if (type != Float.class && type != Float.TYPE) {
                            if (type != Integer.class && type != Integer.TYPE) {
                                if (type != Long.class && type != Long.TYPE) {
                                    if (type != Short.class && type != Short.TYPE) {
                                        return null;
                                    }
                                    return i.f60091a;
                                }
                                return h.f60090a;
                            }
                            return g.f60089a;
                        }
                        return f.f60088a;
                    }
                    return e.f60087a;
                }
                return d.f60086a;
            }
            return c.f60085a;
        }
        return b.f60084a;
    }
}
