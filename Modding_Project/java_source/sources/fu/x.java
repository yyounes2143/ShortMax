package fu;

import android.annotation.TargetApi;
import android.os.Build;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* compiled from: Reflection.java */
/* loaded from: classes8.dex */
class x {

    /* compiled from: Reflection.java */
    @TargetApi(24)
    @IgnoreJRERequirement
    /* loaded from: classes8.dex */
    static final class a extends x {
        @Override // fu.x
        Object b(Method method, Class<?> cls, Object obj, Object[] objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 26) {
                return q.a(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }

        @Override // fu.x
        boolean c(Method method) {
            return method.isDefault();
        }
    }

    /* compiled from: Reflection.java */
    @IgnoreJRERequirement
    /* loaded from: classes8.dex */
    static class b extends x {
        @Override // fu.x
        String a(Method method, int i10) {
            Parameter[] parameters;
            boolean isNamePresent;
            String name;
            parameters = method.getParameters();
            Parameter parameter = parameters[i10];
            isNamePresent = parameter.isNamePresent();
            if (isNamePresent) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("parameter '");
                name = parameter.getName();
                sb2.append(name);
                sb2.append('\'');
                return sb2.toString();
            }
            return super.a(method, i10);
        }

        @Override // fu.x
        Object b(Method method, Class<?> cls, Object obj, Object[] objArr) throws Throwable {
            return q.a(method, cls, obj, objArr);
        }

        @Override // fu.x
        boolean c(Method method) {
            return method.isDefault();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a(Method method, int i10) {
        return "parameter #" + (i10 + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object b(Method method, Class<?> cls, Object obj, Object[] objArr) throws Throwable {
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(Method method) {
        return false;
    }
}
