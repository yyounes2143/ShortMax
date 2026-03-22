package com.google.gson.internal;

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
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Properties;
/* loaded from: classes5.dex */
public final class GsonTypes {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type componentType;

        GenericArrayTypeImpl(Type type) {
            Objects.requireNonNull(type);
            this.componentType = GsonTypes.canonicalize(type);
        }

        public boolean equals(Object obj) {
            if ((obj instanceof GenericArrayType) && GsonTypes.equals(this, (GenericArrayType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return GsonTypes.typeToString(this.componentType) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;

        ParameterizedTypeImpl(Type type, Class<?> cls, Type... typeArr) {
            Type canonicalize;
            Objects.requireNonNull(cls);
            if (type == null && GsonTypes.requiresOwnerType(cls)) {
                throw new IllegalArgumentException("Must specify owner type for " + cls);
            }
            if (type == null) {
                canonicalize = null;
            } else {
                canonicalize = GsonTypes.canonicalize(type);
            }
            this.ownerType = canonicalize;
            this.rawType = GsonTypes.canonicalize(cls);
            Type[] typeArr2 = (Type[]) typeArr.clone();
            this.typeArguments = typeArr2;
            int length = typeArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                Objects.requireNonNull(this.typeArguments[i10]);
                GsonTypes.checkNotPrimitive(this.typeArguments[i10]);
                Type[] typeArr3 = this.typeArguments;
                typeArr3[i10] = GsonTypes.canonicalize(typeArr3[i10]);
            }
        }

        private static int hashCodeOrZero(Object obj) {
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public boolean equals(Object obj) {
            if ((obj instanceof ParameterizedType) && GsonTypes.equals(this, (ParameterizedType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.ownerType;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.rawType;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode()) ^ hashCodeOrZero(this.ownerType);
        }

        public String toString() {
            int length = this.typeArguments.length;
            if (length == 0) {
                return GsonTypes.typeToString(this.rawType);
            }
            StringBuilder sb2 = new StringBuilder((length + 1) * 30);
            sb2.append(GsonTypes.typeToString(this.rawType));
            sb2.append("<");
            sb2.append(GsonTypes.typeToString(this.typeArguments[0]));
            for (int i10 = 1; i10 < length; i10++) {
                sb2.append(", ");
                sb2.append(GsonTypes.typeToString(this.typeArguments[i10]));
            }
            sb2.append(">");
            return sb2.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        private static final long serialVersionUID = 0;
        private final Type lowerBound;
        private final Type upperBound;

        WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length <= 1) {
                if (typeArr.length == 1) {
                    if (typeArr2.length == 1) {
                        Objects.requireNonNull(typeArr2[0]);
                        GsonTypes.checkNotPrimitive(typeArr2[0]);
                        if (typeArr[0] == Object.class) {
                            this.lowerBound = GsonTypes.canonicalize(typeArr2[0]);
                            this.upperBound = Object.class;
                            return;
                        }
                        throw new IllegalArgumentException("When lower bound is specified, upper bound must be Object");
                    }
                    Objects.requireNonNull(typeArr[0]);
                    GsonTypes.checkNotPrimitive(typeArr[0]);
                    this.lowerBound = null;
                    this.upperBound = GsonTypes.canonicalize(typeArr[0]);
                    return;
                }
                throw new IllegalArgumentException("Exactly one upper bound must be specified");
            }
            throw new IllegalArgumentException("At most one lower bound is supported");
        }

        public boolean equals(Object obj) {
            if ((obj instanceof WildcardType) && GsonTypes.equals(this, (WildcardType) obj)) {
                return true;
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.lowerBound;
            return type != null ? new Type[]{type} : GsonTypes.EMPTY_TYPE_ARRAY;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        public int hashCode() {
            int i10;
            Type type = this.lowerBound;
            if (type != null) {
                i10 = type.hashCode() + 31;
            } else {
                i10 = 1;
            }
            return i10 ^ (this.upperBound.hashCode() + 31);
        }

        public String toString() {
            if (this.lowerBound != null) {
                return "? super " + GsonTypes.typeToString(this.lowerBound);
            } else if (this.upperBound == Object.class) {
                return "?";
            } else {
                return "? extends " + GsonTypes.typeToString(this.upperBound);
            }
        }
    }

    private GsonTypes() {
        throw new UnsupportedOperationException();
    }

    public static GenericArrayType arrayOf(Type type) {
        return new GenericArrayTypeImpl(type);
    }

    public static Type canonicalize(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                return new GenericArrayTypeImpl(canonicalize(cls.getComponentType()));
            }
            return cls;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new ParameterizedTypeImpl(parameterizedType.getOwnerType(), (Class) parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new GenericArrayTypeImpl(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return new WildcardTypeImpl(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
            }
            return type;
        }
    }

    static void checkNotPrimitive(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException("Primitive type is not allowed");
        }
    }

    private static Class<?> declaringClassOf(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    private static boolean equal(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    public static boolean equals(Type type, Type type2) {
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
            if (equal(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                return true;
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return equals(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
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
            if (Objects.equals(typeVariable.getGenericDeclaration(), typeVariable2.getGenericDeclaration()) && typeVariable.getName().equals(typeVariable2.getName())) {
                return true;
            }
            return false;
        }
    }

    public static Type getArrayComponentType(Type type) {
        if (type instanceof GenericArrayType) {
            return ((GenericArrayType) type).getGenericComponentType();
        }
        return ((Class) type).getComponentType();
    }

    public static Type getCollectionElementType(Type type, Class<?> cls) {
        Type supertype = getSupertype(type, cls, Collection.class);
        if (supertype instanceof ParameterizedType) {
            return ((ParameterizedType) supertype).getActualTypeArguments()[0];
        }
        return Object.class;
    }

    private static Type getGenericSupertype(Type type, Class<?> cls, Class<?> cls2) {
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
                    return getGenericSupertype(cls.getGenericInterfaces()[i10], interfaces[i10], cls2);
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
                    return getGenericSupertype(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    public static Type[] getMapKeyAndValueTypes(Type type, Class<?> cls) {
        if (Properties.class.isAssignableFrom(cls)) {
            return new Type[]{String.class, String.class};
        }
        Type supertype = getSupertype(type, cls, Map.class);
        return supertype instanceof ParameterizedType ? ((ParameterizedType) supertype).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    public static Class<?> getRawType(Type type) {
        String name;
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance(getRawType(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return getRawType(((WildcardType) type).getUpperBounds()[0]);
        }
        if (type == null) {
            name = "null";
        } else {
            name = type.getClass().getName();
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
    }

    private static Type getSupertype(Type type, Class<?> cls, Class<?> cls2) {
        if (type instanceof WildcardType) {
            type = ((WildcardType) type).getUpperBounds()[0];
        }
        if (cls2.isAssignableFrom(cls)) {
            return resolve(type, cls, getGenericSupertype(type, cls, cls2));
        }
        throw new IllegalArgumentException(cls + " is not the same as or a subtype of " + cls2);
    }

    private static int indexOf(Object[] objArr, Object obj) {
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (obj.equals(objArr[i10])) {
                return i10;
            }
        }
        throw new NoSuchElementException();
    }

    public static ParameterizedType newParameterizedTypeWithOwner(Type type, Class<?> cls, Type... typeArr) {
        return new ParameterizedTypeImpl(type, cls, typeArr);
    }

    public static boolean requiresOwnerType(Type type) {
        if (!(type instanceof Class)) {
            return false;
        }
        Class cls = (Class) type;
        if (Modifier.isStatic(cls.getModifiers()) || cls.getDeclaringClass() == null) {
            return false;
        }
        return true;
    }

    public static Type resolve(Type type, Class<?> cls, Type type2) {
        return resolve(type, cls, type2, new HashMap());
    }

    private static Type resolveTypeVariable(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> declaringClassOf = declaringClassOf(typeVariable);
        if (declaringClassOf == null) {
            return typeVariable;
        }
        Type genericSupertype = getGenericSupertype(type, cls, declaringClassOf);
        if (genericSupertype instanceof ParameterizedType) {
            return ((ParameterizedType) genericSupertype).getActualTypeArguments()[indexOf(declaringClassOf.getTypeParameters(), typeVariable)];
        }
        return typeVariable;
    }

    public static WildcardType subtypeOf(Type type) {
        Type[] typeArr;
        if (type instanceof WildcardType) {
            typeArr = ((WildcardType) type).getUpperBounds();
        } else {
            typeArr = new Type[]{type};
        }
        return new WildcardTypeImpl(typeArr, EMPTY_TYPE_ARRAY);
    }

    public static WildcardType supertypeOf(Type type) {
        Type[] typeArr;
        if (type instanceof WildcardType) {
            typeArr = ((WildcardType) type).getLowerBounds();
        } else {
            typeArr = new Type[]{type};
        }
        return new WildcardTypeImpl(new Type[]{Object.class}, typeArr);
    }

    public static String typeToString(Type type) {
        if (type instanceof Class) {
            return ((Class) type).getName();
        }
        return type.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e1, code lost:
        if (r0 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e3, code lost:
        r13.put(r0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e6, code lost:
        return r12;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.lang.reflect.Type, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v13, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.util.Map<java.lang.reflect.TypeVariable<?>, java.lang.reflect.Type>, java.util.Map] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.reflect.Type resolve(java.lang.reflect.Type r10, java.lang.Class<?> r11, java.lang.reflect.Type r12, java.util.Map<java.lang.reflect.TypeVariable<?>, java.lang.reflect.Type> r13) {
        /*
            r0 = 0
        L1:
            boolean r1 = r12 instanceof java.lang.reflect.TypeVariable
            if (r1 == 0) goto L27
            r1 = r12
            java.lang.reflect.TypeVariable r1 = (java.lang.reflect.TypeVariable) r1
            java.lang.Object r2 = r13.get(r1)
            java.lang.reflect.Type r2 = (java.lang.reflect.Type) r2
            if (r2 == 0) goto L17
            java.lang.Class r10 = java.lang.Void.TYPE
            if (r2 != r10) goto L15
            goto L16
        L15:
            r12 = r2
        L16:
            return r12
        L17:
            java.lang.Class r12 = java.lang.Void.TYPE
            r13.put(r1, r12)
            if (r0 != 0) goto L1f
            r0 = r1
        L1f:
            java.lang.reflect.Type r12 = resolveTypeVariable(r10, r11, r1)
            if (r12 != r1) goto L1
            goto Le1
        L27:
            boolean r1 = r12 instanceof java.lang.Class
            if (r1 == 0) goto L4c
            r1 = r12
            java.lang.Class r1 = (java.lang.Class) r1
            boolean r2 = r1.isArray()
            if (r2 == 0) goto L4c
            java.lang.Class r12 = r1.getComponentType()
            java.lang.reflect.Type r10 = resolve(r10, r11, r12, r13)
            boolean r11 = equal(r12, r10)
            if (r11 == 0) goto L45
            r12 = r1
            goto Le1
        L45:
            java.lang.reflect.GenericArrayType r10 = arrayOf(r10)
        L49:
            r12 = r10
            goto Le1
        L4c:
            boolean r1 = r12 instanceof java.lang.reflect.GenericArrayType
            if (r1 == 0) goto L67
            java.lang.reflect.GenericArrayType r12 = (java.lang.reflect.GenericArrayType) r12
            java.lang.reflect.Type r1 = r12.getGenericComponentType()
            java.lang.reflect.Type r10 = resolve(r10, r11, r1, r13)
            boolean r11 = equal(r1, r10)
            if (r11 == 0) goto L62
            goto Le1
        L62:
            java.lang.reflect.GenericArrayType r10 = arrayOf(r10)
            goto L49
        L67:
            boolean r1 = r12 instanceof java.lang.reflect.ParameterizedType
            r2 = 1
            r3 = 0
            if (r1 == 0) goto Lb0
            java.lang.reflect.ParameterizedType r12 = (java.lang.reflect.ParameterizedType) r12
            java.lang.reflect.Type r1 = r12.getOwnerType()
            java.lang.reflect.Type r4 = resolve(r10, r11, r1, r13)
            boolean r1 = equal(r4, r1)
            java.lang.reflect.Type[] r5 = r12.getActualTypeArguments()
            int r6 = r5.length
            r7 = r5
            r5 = r3
        L82:
            if (r3 >= r6) goto La1
            r8 = r7[r3]
            java.lang.reflect.Type r8 = resolve(r10, r11, r8, r13)
            r9 = r7[r3]
            boolean r9 = equal(r8, r9)
            if (r9 != 0) goto L9e
            if (r5 != 0) goto L9c
            java.lang.Object r5 = r7.clone()
            r7 = r5
            java.lang.reflect.Type[] r7 = (java.lang.reflect.Type[]) r7
            r5 = r2
        L9c:
            r7[r3] = r8
        L9e:
            int r3 = r3 + 1
            goto L82
        La1:
            if (r1 == 0) goto La5
            if (r5 == 0) goto Le1
        La5:
            java.lang.reflect.Type r10 = r12.getRawType()
            java.lang.Class r10 = (java.lang.Class) r10
            java.lang.reflect.ParameterizedType r10 = newParameterizedTypeWithOwner(r4, r10, r7)
            goto L49
        Lb0:
            boolean r1 = r12 instanceof java.lang.reflect.WildcardType
            if (r1 == 0) goto Le1
            java.lang.reflect.WildcardType r12 = (java.lang.reflect.WildcardType) r12
            java.lang.reflect.Type[] r1 = r12.getLowerBounds()
            java.lang.reflect.Type[] r4 = r12.getUpperBounds()
            int r5 = r1.length
            if (r5 != r2) goto Ld0
            r2 = r1[r3]
            java.lang.reflect.Type r10 = resolve(r10, r11, r2, r13)
            r11 = r1[r3]
            if (r10 == r11) goto Le1
            java.lang.reflect.WildcardType r12 = supertypeOf(r10)
            goto Le1
        Ld0:
            int r1 = r4.length
            if (r1 != r2) goto Le1
            r1 = r4[r3]
            java.lang.reflect.Type r10 = resolve(r10, r11, r1, r13)
            r11 = r4[r3]
            if (r10 == r11) goto Le1
            java.lang.reflect.WildcardType r12 = subtypeOf(r10)
        Le1:
            if (r0 == 0) goto Le6
            r13.put(r0, r12)
        Le6:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.GsonTypes.resolve(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.Map):java.lang.reflect.Type");
    }
}
