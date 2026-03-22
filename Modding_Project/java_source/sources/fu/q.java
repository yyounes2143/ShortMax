package fu;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
/* compiled from: DefaultMethodSupport.java */
/* loaded from: classes8.dex */
final class q {

    /* renamed from: a  reason: collision with root package name */
    private static Constructor<MethodHandles.Lookup> f52051a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @IgnoreJRERequirement
    public static Object a(Method method, Class<?> cls, Object obj, Object[] objArr) throws Throwable {
        MethodHandle unreflectSpecial;
        MethodHandle bindTo;
        Object invokeWithArguments;
        Constructor<MethodHandles.Lookup> constructor = f52051a;
        if (constructor == null) {
            constructor = l.a().getDeclaredConstructor(Class.class, Integer.TYPE);
            constructor.setAccessible(true);
            f52051a = constructor;
        }
        unreflectSpecial = m.a(constructor.newInstance(cls, -1)).unreflectSpecial(method, cls);
        bindTo = unreflectSpecial.bindTo(obj);
        invokeWithArguments = bindTo.invokeWithArguments(objArr);
        return invokeWithArguments;
    }
}
