package rx.exceptions;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import lu.a;
import qu.f;
/* loaded from: classes8.dex */
public final class OnErrorThrowable extends RuntimeException {

    /* loaded from: classes8.dex */
    public static class OnNextValue extends RuntimeException {

        /* renamed from: a  reason: collision with root package name */
        private final Object f66163a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes8.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            static final Set<Class<?>> f66164a = a();

            private static Set<Class<?>> a() {
                HashSet hashSet = new HashSet();
                hashSet.add(Boolean.class);
                hashSet.add(Character.class);
                hashSet.add(Byte.class);
                hashSet.add(Short.class);
                hashSet.add(Integer.class);
                hashSet.add(Long.class);
                hashSet.add(Float.class);
                hashSet.add(Double.class);
                return hashSet;
            }
        }

        public OnNextValue(Object obj) {
            super("OnError while emitting onNext value: " + d(obj));
            if (!(obj instanceof Serializable)) {
                try {
                    obj = String.valueOf(obj);
                } catch (Throwable th2) {
                    obj = th2.getMessage();
                }
            }
            this.f66163a = obj;
        }

        static String d(Object obj) {
            if (obj == null) {
                return "null";
            }
            if (a.f66164a.contains(obj.getClass())) {
                return obj.toString();
            }
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof Enum) {
                return ((Enum) obj).name();
            }
            String b10 = f.c().b().b(obj);
            if (b10 != null) {
                return b10;
            }
            return obj.getClass().getName() + ".class";
        }

        public Object b() {
            return this.f66163a;
        }
    }

    public static Throwable b(Throwable th2, Object obj) {
        if (th2 == null) {
            th2 = new NullPointerException();
        }
        Throwable b10 = a.b(th2);
        if ((b10 instanceof OnNextValue) && ((OnNextValue) b10).b() == obj) {
            return th2;
        }
        a.a(th2, new OnNextValue(obj));
        return th2;
    }
}
