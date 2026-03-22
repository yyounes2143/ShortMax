package fu;

import com.applovin.shadow.okhttp3.HttpUrl;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.Objects;
import kotlin.Unit;
import okhttp3.ResponseBody;
import okio.Buffer;
/* compiled from: Utils.java */
/* loaded from: classes8.dex */
final class h0 {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f52029a = new Type[0];

    /* renamed from: b  reason: collision with root package name */
    private static boolean f52030b = true;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Utils.java */
    /* loaded from: classes8.dex */
    public static final class a implements GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f52031a;

        a(Type type) {
            this.f52031a = type;
        }

        public boolean equals(Object obj) {
            if ((obj instanceof GenericArrayType) && h0.d(this, (GenericArrayType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f52031a;
        }

        public int hashCode() {
            return this.f52031a.hashCode();
        }

        public String toString() {
            return h0.u(this.f52031a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Utils.java */
    /* loaded from: classes8.dex */
    public static final class b implements ParameterizedType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f52032a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f52033b;

        /* renamed from: c  reason: collision with root package name */
        private final Type[] f52034c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(Type type, Type type2, Type... typeArr) {
            boolean z10;
            if (type2 instanceof Class) {
                if (type == null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10 != (((Class) type2).getEnclosingClass() == null)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                Objects.requireNonNull(type3, "typeArgument == null");
                h0.b(type3);
            }
            this.f52032a = type;
            this.f52033b = type2;
            this.f52034c = (Type[]) typeArr.clone();
        }

        public boolean equals(Object obj) {
            if ((obj instanceof ParameterizedType) && h0.d(this, (ParameterizedType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f52034c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f52032a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f52033b;
        }

        public int hashCode() {
            int i10;
            int hashCode = Arrays.hashCode(this.f52034c) ^ this.f52033b.hashCode();
            Type type = this.f52032a;
            if (type != null) {
                i10 = type.hashCode();
            } else {
                i10 = 0;
            }
            return hashCode ^ i10;
        }

        public String toString() {
            Type[] typeArr = this.f52034c;
            if (typeArr.length == 0) {
                return h0.u(this.f52033b);
            }
            StringBuilder sb2 = new StringBuilder((typeArr.length + 1) * 30);
            sb2.append(h0.u(this.f52033b));
            sb2.append("<");
            sb2.append(h0.u(this.f52034c[0]));
            for (int i10 = 1; i10 < this.f52034c.length; i10++) {
                sb2.append(", ");
                sb2.append(h0.u(this.f52034c[i10]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Utils.java */
    /* loaded from: classes8.dex */
    public static final class c implements WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f52035a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f52036b;

        c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length <= 1) {
                if (typeArr.length == 1) {
                    if (typeArr2.length == 1) {
                        typeArr2[0].getClass();
                        h0.b(typeArr2[0]);
                        if (typeArr[0] == Object.class) {
                            this.f52036b = typeArr2[0];
                            this.f52035a = Object.class;
                            return;
                        }
                        throw new IllegalArgumentException();
                    }
                    typeArr[0].getClass();
                    h0.b(typeArr[0]);
                    this.f52036b = null;
                    this.f52035a = typeArr[0];
                    return;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException();
        }

        public boolean equals(Object obj) {
            if ((obj instanceof WildcardType) && h0.d(this, (WildcardType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f52036b;
            return type != null ? new Type[]{type} : h0.f52029a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f52035a};
        }

        public int hashCode() {
            int i10;
            Type type = this.f52036b;
            if (type != null) {
                i10 = type.hashCode() + 31;
            } else {
                i10 = 1;
            }
            return i10 ^ (this.f52035a.hashCode() + 31);
        }

        public String toString() {
            if (this.f52036b != null) {
                return "? super " + h0.u(this.f52036b);
            } else if (this.f52035a == Object.class) {
                return "?";
            } else {
                return "? extends " + h0.u(this.f52035a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ResponseBody a(ResponseBody responseBody) throws IOException {
        Buffer buffer = new Buffer();
        responseBody.source().readAll(buffer);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), buffer);
    }

    static void b(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    private static Class<?> c(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    static boolean d(Type type, Type type2) {
        boolean z10;
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            if (ownerType != ownerType2 && (ownerType == null || !ownerType.equals(ownerType2))) {
                z10 = false;
            } else {
                z10 = true;
            }
            boolean equals = parameterizedType.getRawType().equals(parameterizedType2.getRawType());
            boolean equals2 = Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            if (z10 && equals && equals2) {
                return true;
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return d(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                return true;
            }
            return false;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName())) {
                return true;
            }
            return false;
        }
    }

    static Type e(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                Class<?> cls3 = interfaces[i10];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i10];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return e(cls.getGenericInterfaces()[i10], interfaces[i10], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return e(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type f(int i10, ParameterizedType parameterizedType) {
        Type type = parameterizedType.getActualTypeArguments()[i10];
        if (type instanceof WildcardType) {
            return ((WildcardType) type).getLowerBounds()[0];
        }
        return type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type g(int i10, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i10 >= 0 && i10 < actualTypeArguments.length) {
            Type type = actualTypeArguments[i10];
            if (type instanceof WildcardType) {
                return ((WildcardType) type).getUpperBounds()[0];
            }
            return type;
        }
        throw new IllegalArgumentException("Index " + i10 + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> h(Type type) {
        Objects.requireNonNull(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(h(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return h(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type i(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return r(type, cls, e(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean j(Type type) {
        String name;
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (j(type2)) {
                    return true;
                }
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return j(((GenericArrayType) type).getGenericComponentType());
        } else {
            if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
                return true;
            }
            if (type == null) {
                name = "null";
            } else {
                name = type.getClass().getName();
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
        }
    }

    private static int k(Object[] objArr, Object obj) {
        for (int i10 = 0; i10 < objArr.length; i10++) {
            if (obj.equals(objArr[i10])) {
                return i10;
            }
        }
        throw new NoSuchElementException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean l(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean m(Type type) {
        if (!f52030b || type != Unit.class) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException n(Method method, String str, Object... objArr) {
        return o(method, null, str, objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException o(Method method, Throwable th2, String str, Object... objArr) {
        String format = String.format(str, objArr);
        return new IllegalArgumentException(format + "\n    for method " + method.getDeclaringClass().getSimpleName() + "." + method.getName(), th2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException p(Method method, int i10, String str, Object... objArr) {
        String a10 = w.f52130b.a(method, i10);
        return n(method, str + " (" + a10 + ")", objArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RuntimeException q(Method method, Throwable th2, int i10, String str, Object... objArr) {
        String a10 = w.f52130b.a(method, i10);
        return o(method, th2, str + " (" + a10 + ")", objArr);
    }

    static Type r(Type type, Class<?> cls, Type type2) {
        boolean z10;
        Type type3 = type2;
        while (type3 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type3;
            Type s10 = s(type, cls, typeVariable);
            if (s10 == typeVariable) {
                return s10;
            }
            type3 = s10;
        }
        if (type3 instanceof Class) {
            Class cls2 = (Class) type3;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type r10 = r(type, cls, componentType);
                if (componentType != r10) {
                    return new a(r10);
                }
                return cls2;
            }
        }
        if (type3 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type3;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type r11 = r(type, cls, genericComponentType);
            if (genericComponentType != r11) {
                return new a(r11);
            }
            return genericArrayType;
        } else if (type3 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type3;
            Type ownerType = parameterizedType.getOwnerType();
            Type r12 = r(type, cls, ownerType);
            if (r12 != ownerType) {
                z10 = true;
            } else {
                z10 = false;
            }
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                Type r13 = r(type, cls, actualTypeArguments[i10]);
                if (r13 != actualTypeArguments[i10]) {
                    if (!z10) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z10 = true;
                    }
                    actualTypeArguments[i10] = r13;
                }
            }
            if (z10) {
                return new b(r12, parameterizedType.getRawType(), actualTypeArguments);
            }
            return parameterizedType;
        } else {
            boolean z11 = type3 instanceof WildcardType;
            WildcardType wildcardType = type3;
            if (z11) {
                WildcardType wildcardType2 = (WildcardType) type3;
                Type[] lowerBounds = wildcardType2.getLowerBounds();
                Type[] upperBounds = wildcardType2.getUpperBounds();
                if (lowerBounds.length == 1) {
                    Type r14 = r(type, cls, lowerBounds[0]);
                    wildcardType = wildcardType2;
                    if (r14 != lowerBounds[0]) {
                        return new c(new Type[]{Object.class}, new Type[]{r14});
                    }
                } else {
                    wildcardType = wildcardType2;
                    if (upperBounds.length == 1) {
                        Type r15 = r(type, cls, upperBounds[0]);
                        wildcardType = wildcardType2;
                        if (r15 != upperBounds[0]) {
                            return new c(new Type[]{r15}, f52029a);
                        }
                    }
                }
            }
            return wildcardType;
        }
    }

    private static Type s(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> c10 = c(typeVariable);
        if (c10 == null) {
            return typeVariable;
        }
        Type e10 = e(type, cls, c10);
        if (e10 instanceof ParameterizedType) {
            return ((ParameterizedType) e10).getActualTypeArguments()[k(c10.getTypeParameters(), typeVariable)];
        }
        return typeVariable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void t(Throwable th2) {
        if (!(th2 instanceof VirtualMachineError)) {
            if (!(th2 instanceof ThreadDeath)) {
                if (!(th2 instanceof LinkageError)) {
                    return;
                }
                throw ((LinkageError) th2);
            }
            throw ((ThreadDeath) th2);
        }
        throw ((VirtualMachineError) th2);
    }

    static String u(Type type) {
        if (type instanceof Class) {
            return ((Class) type).getName();
        }
        return type.toString();
    }
}
