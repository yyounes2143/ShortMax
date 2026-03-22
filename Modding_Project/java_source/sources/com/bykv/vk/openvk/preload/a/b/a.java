package com.bykv.vk.openvk.preload.a.b;

import com.applovin.shadow.okhttp3.HttpUrl;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
/* compiled from: $Gson$Types.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final Type[] f11032a = new Type[0];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: $Gson$Types.java */
    /* renamed from: com.bykv.vk.openvk.preload.a.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0136a implements Serializable, GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f11036a;

        public C0136a(Type type) {
            this.f11036a = a.a(type);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof GenericArrayType) && a.a(this, (GenericArrayType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f11036a;
        }

        public final int hashCode() {
            return this.f11036a.hashCode();
        }

        public final String toString() {
            return a.c(this.f11036a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: $Gson$Types.java */
    /* loaded from: classes3.dex */
    public static final class b implements Serializable, ParameterizedType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f11039a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f11040b;

        /* renamed from: c  reason: collision with root package name */
        private final Type[] f11041c;

        public b(Type type, Type type2, Type... typeArr) {
            Type a10;
            boolean z10;
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                boolean z11 = true;
                if (!Modifier.isStatic(cls.getModifiers()) && cls.getEnclosingClass() != null) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (type == null && !z10) {
                    z11 = false;
                }
                com.bykv.vk.openvk.preload.falconx.a.a.a(z11);
            }
            if (type == null) {
                a10 = null;
            } else {
                a10 = a.a(type);
            }
            this.f11039a = a10;
            this.f11040b = a.a(type2);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.f11041c = typeArr2;
            int length = typeArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                com.bykv.vk.openvk.preload.falconx.a.a.a(this.f11041c[i10]);
                a.e(this.f11041c[i10]);
                Type[] typeArr3 = this.f11041c;
                typeArr3[i10] = a.a(typeArr3[i10]);
            }
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof ParameterizedType) && a.a(this, (ParameterizedType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f11041c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f11039a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f11040b;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.f11041c) ^ this.f11040b.hashCode()) ^ a.a((Object) this.f11039a);
        }

        public final String toString() {
            int length = this.f11041c.length;
            if (length == 0) {
                return a.c(this.f11040b);
            }
            StringBuilder sb2 = new StringBuilder((length + 1) * 30);
            sb2.append(a.c(this.f11040b));
            sb2.append("<");
            sb2.append(a.c(this.f11041c[0]));
            for (int i10 = 1; i10 < length; i10++) {
                sb2.append(", ");
                sb2.append(a.c(this.f11041c[i10]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: $Gson$Types.java */
    /* loaded from: classes3.dex */
    public static final class c implements Serializable, WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f11046a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f11047b;

        public c(Type[] typeArr, Type[] typeArr2) {
            boolean z10;
            boolean z11;
            if (typeArr2.length <= 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            com.bykv.vk.openvk.preload.falconx.a.a.a(z10);
            if (typeArr.length == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            com.bykv.vk.openvk.preload.falconx.a.a.a(z11);
            if (typeArr2.length == 1) {
                com.bykv.vk.openvk.preload.falconx.a.a.a(typeArr2[0]);
                a.e(typeArr2[0]);
                com.bykv.vk.openvk.preload.falconx.a.a.a(typeArr[0] == Object.class);
                this.f11047b = a.a(typeArr2[0]);
                this.f11046a = Object.class;
                return;
            }
            com.bykv.vk.openvk.preload.falconx.a.a.a(typeArr[0]);
            a.e(typeArr[0]);
            this.f11047b = null;
            this.f11046a = a.a(typeArr[0]);
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof WildcardType) && a.a(this, (WildcardType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f11047b;
            return type != null ? new Type[]{type} : a.f11032a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f11046a};
        }

        public final int hashCode() {
            int i10;
            Type type = this.f11047b;
            if (type != null) {
                i10 = type.hashCode() + 31;
            } else {
                i10 = 1;
            }
            return i10 ^ (this.f11046a.hashCode() + 31);
        }

        public final String toString() {
            if (this.f11047b != null) {
                return "? super " + a.c(this.f11047b);
            } else if (this.f11046a == Object.class) {
                return "?";
            } else {
                return "? extends " + a.c(this.f11046a);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.bykv.vk.openvk.preload.a.b.a$a] */
    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                cls = new C0136a(a((Type) cls.getComponentType()));
            }
            return cls;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new C0136a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return new c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
            }
            return type;
        }
    }

    public static Class<?> b(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                com.bykv.vk.openvk.preload.falconx.a.a.a(rawType instanceof Class);
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(b(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            } else {
                if (type instanceof TypeVariable) {
                    return Object.class;
                }
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                } else {
                    String name = type == null ? "null" : type.getClass().getName();
                    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
                }
            }
        }
        return (Class) type;
    }

    public static String c(Type type) {
        if (type instanceof Class) {
            return ((Class) type).getName();
        }
        return type.toString();
    }

    public static Type d(Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return ((Class) type).getComponentType();
    }

    static void e(Type type) {
        boolean z10;
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            z10 = false;
        } else {
            z10 = true;
        }
        com.bykv.vk.openvk.preload.falconx.a.a.a(z10);
    }

    private static GenericArrayType f(Type type) {
        return new C0136a(type);
    }

    public static boolean a(Type type, Type type2) {
        while (type != type2) {
            if (type instanceof Class) {
                return type.equals(type2);
            }
            if (type instanceof ParameterizedType) {
                if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    ParameterizedType parameterizedType2 = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type ownerType2 = parameterizedType2.getOwnerType();
                    return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
                }
                return false;
            } else if (type instanceof GenericArrayType) {
                if (!(type2 instanceof GenericArrayType)) {
                    return false;
                }
                type = ((GenericArrayType) type).getGenericComponentType();
                type2 = ((GenericArrayType) type2).getGenericComponentType();
            } else if (type instanceof WildcardType) {
                if (type2 instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type;
                    WildcardType wildcardType2 = (WildcardType) type2;
                    return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
                }
                return false;
            } else if ((type instanceof TypeVariable) && (type2 instanceof TypeVariable)) {
                TypeVariable typeVariable = (TypeVariable) type;
                TypeVariable typeVariable2 = (TypeVariable) type2;
                return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
            } else {
                return false;
            }
        }
        return true;
    }

    private static Type b(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        com.bykv.vk.openvk.preload.falconx.a.a.a(cls2.isAssignableFrom(cls));
        return a(type, cls, a(type, cls, cls2));
    }

    public static Type[] b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type b10 = b(type, cls, Map.class);
        return b10 instanceof ParameterizedType ? ((ParameterizedType) b10).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    static int a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    private static Type a(Type type, Class<?> cls, Class<?> cls2) {
        Class<?> superclass;
        Type genericSuperclass;
        while (cls2 != cls) {
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                for (int i10 = 0; i10 < length; i10++) {
                    Class<?> cls3 = interfaces[i10];
                    if (cls3 == cls2) {
                        return cls.getGenericInterfaces()[i10];
                    }
                    if (cls2.isAssignableFrom(cls3)) {
                        genericSuperclass = cls.getGenericInterfaces()[i10];
                        superclass = interfaces[i10];
                        break;
                    }
                }
            }
            if (!cls.isInterface()) {
                while (cls != Object.class) {
                    superclass = cls.getSuperclass();
                    if (superclass == cls2) {
                        return cls.getGenericSuperclass();
                    }
                    if (cls2.isAssignableFrom(superclass)) {
                        genericSuperclass = cls.getGenericSuperclass();
                        Type type2 = genericSuperclass;
                        cls = superclass;
                        type = type2;
                    } else {
                        cls = superclass;
                    }
                }
            }
            return cls2;
        }
        return type;
    }

    public static Type a(Type type, Class<?> cls) {
        Type b10 = b(type, cls, Collection.class);
        if (b10 instanceof WildcardType) {
            b10 = ((WildcardType) b10).getUpperBounds()[0];
        }
        if (b10 instanceof ParameterizedType) {
            return ((ParameterizedType) b10).getActualTypeArguments()[0];
        }
        return Object.class;
    }

    public static Type a(Type type, Class<?> cls, Type type2) {
        return a(type, cls, type2, new HashSet());
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x004d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Type a(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10, java.util.Collection<java.lang.reflect.TypeVariable> r11) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.b.a.a(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.Collection):java.lang.reflect.Type");
    }
}
