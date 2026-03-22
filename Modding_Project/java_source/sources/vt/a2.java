package vt;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.BooleanCompanionObject;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.CharCompanionObject;
import kotlin.jvm.internal.DoubleCompanionObject;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ShortCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import kotlin.uuid.Uuid;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Platform.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPlatform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,214:1\n208#1,6:251\n208#1,6:257\n208#1,6:263\n208#1,6:269\n208#1,6:275\n208#1,6:281\n1#2:215\n3170#3,11:216\n1310#3,2:227\n3170#3,11:229\n3170#3,11:240\n*S KotlinDebug\n*F\n+ 1 Platform.kt\nkotlinx/serialization/internal/PlatformKt\n*L\n193#1:251,6\n197#1:257,6\n198#1:263,6\n199#1:269,6\n200#1:275,6\n203#1:281,6\n73#1:216,11\n81#1:227,2\n151#1:229,11\n156#1:240,11\n*E\n"})
/* loaded from: classes8.dex */
public final class a2 {
    private static final Object a(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public static final <T> KSerializer<T> b(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        return d(kClass, new KSerializer[0]);
    }

    @Nullable
    public static final <T> KSerializer<T> c(@NotNull Class<T> cls, @NotNull KSerializer<Object>... args) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        if (cls.isEnum() && m(cls)) {
            return e(cls);
        }
        KSerializer<T> k10 = k(cls, (KSerializer[]) Arrays.copyOf(args, args.length));
        if (k10 != null) {
            return k10;
        }
        KSerializer<T> h10 = h(cls);
        if (h10 != null) {
            return h10;
        }
        KSerializer<T> f10 = f(cls, (KSerializer[]) Arrays.copyOf(args, args.length));
        if (f10 != null) {
            return f10;
        }
        if (n(cls)) {
            return new st.g(zs.a.d(cls));
        }
        return null;
    }

    @Nullable
    public static final <T> KSerializer<T> d(@NotNull KClass<T> kClass, @NotNull KSerializer<Object>... args) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        Intrinsics.checkNotNullParameter(args, "args");
        return c(zs.a.b(kClass), (KSerializer[]) Arrays.copyOf(args, args.length));
    }

    private static final <T> KSerializer<T> e(Class<T> cls) {
        T[] enumConstants = cls.getEnumConstants();
        String canonicalName = cls.getCanonicalName();
        Intrinsics.checkNotNullExpressionValue(canonicalName, "getCanonicalName(...)");
        Intrinsics.checkNotNull(enumConstants, "null cannot be cast to non-null type kotlin.Array<out kotlin.Enum<*>>");
        return new i0(canonicalName, (Enum[]) enumConstants);
    }

    private static final <T> KSerializer<T> f(Class<T> cls, KSerializer<Object>... kSerializerArr) {
        Object obj;
        Field field;
        KSerializer<T> j10;
        Object g10 = g(cls);
        if (g10 != null && (j10 = j(g10, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length))) != null) {
            return j10;
        }
        try {
            Class<?>[] declaredClasses = cls.getDeclaredClasses();
            Intrinsics.checkNotNullExpressionValue(declaredClasses, "getDeclaredClasses(...)");
            int length = declaredClasses.length;
            int i10 = 0;
            Class<?> cls2 = null;
            boolean z10 = false;
            while (true) {
                if (i10 < length) {
                    Class<?> cls3 = declaredClasses[i10];
                    if (Intrinsics.areEqual(cls3.getSimpleName(), "$serializer")) {
                        if (z10) {
                            break;
                        }
                        z10 = true;
                        cls2 = cls3;
                    }
                    i10++;
                } else if (!z10) {
                }
            }
            cls2 = null;
            if (cls2 != null && (field = cls2.getField("INSTANCE")) != null) {
                obj = field.get(null);
            } else {
                obj = null;
            }
            if (!(obj instanceof KSerializer)) {
                return null;
            }
            return (KSerializer) obj;
        } catch (NoSuchFieldException unused) {
            return null;
        }
    }

    private static final <T> Object g(Class<T> cls) {
        Class<?> cls2;
        Class<?>[] declaredClasses = cls.getDeclaredClasses();
        Intrinsics.checkNotNullExpressionValue(declaredClasses, "getDeclaredClasses(...)");
        int length = declaredClasses.length;
        int i10 = 0;
        while (true) {
            if (i10 < length) {
                cls2 = declaredClasses[i10];
                if (cls2.getAnnotation(m1.class) != null) {
                    break;
                }
                i10++;
            } else {
                cls2 = null;
                break;
            }
        }
        if (cls2 == null) {
            return null;
        }
        String simpleName = cls2.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        return a(cls, simpleName);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
        if (r5 == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009e, code lost:
        if (r5 == false) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final <T> kotlinx.serialization.KSerializer<T> h(java.lang.Class<T> r11) {
        /*
            java.lang.String r0 = r11.getCanonicalName()
            r1 = 0
            if (r0 == 0) goto Lb1
            java.lang.String r2 = "java."
            r3 = 0
            r4 = 2
            boolean r2 = kotlin.text.StringsKt.V(r0, r2, r3, r4, r1)
            if (r2 != 0) goto Lb1
            java.lang.String r2 = "kotlin."
            boolean r0 = kotlin.text.StringsKt.V(r0, r2, r3, r4, r1)
            if (r0 == 0) goto L1b
            goto Lb1
        L1b:
            java.lang.reflect.Field[] r0 = r11.getDeclaredFields()
            java.lang.String r2 = "getDeclaredFields(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            int r2 = r0.length
            r6 = r1
            r4 = r3
            r5 = r4
        L28:
            r7 = 1
            if (r4 >= r2) goto L56
            r8 = r0[r4]
            java.lang.String r9 = r8.getName()
            java.lang.String r10 = "INSTANCE"
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 == 0) goto L53
            java.lang.Class r9 = r8.getType()
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r11)
            if (r9 == 0) goto L53
            int r9 = r8.getModifiers()
            boolean r9 = java.lang.reflect.Modifier.isStatic(r9)
            if (r9 == 0) goto L53
            if (r5 == 0) goto L51
        L4f:
            r6 = r1
            goto L59
        L51:
            r5 = r7
            r6 = r8
        L53:
            int r4 = r4 + 1
            goto L28
        L56:
            if (r5 != 0) goto L59
            goto L4f
        L59:
            if (r6 != 0) goto L5c
            return r1
        L5c:
            java.lang.Object r0 = r6.get(r1)
            java.lang.reflect.Method[] r11 = r11.getMethods()
            java.lang.String r2 = "getMethods(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r11, r2)
            int r2 = r11.length
            r6 = r1
            r4 = r3
            r5 = r4
        L6d:
            if (r4 >= r2) goto L9e
            r8 = r11[r4]
            java.lang.String r9 = r8.getName()
            java.lang.String r10 = "serializer"
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 == 0) goto L9b
            java.lang.Class[] r9 = r8.getParameterTypes()
            java.lang.String r10 = "getParameterTypes(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            int r9 = r9.length
            if (r9 != 0) goto L9b
            java.lang.Class r9 = r8.getReturnType()
            java.lang.Class<kotlinx.serialization.KSerializer> r10 = kotlinx.serialization.KSerializer.class
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r10)
            if (r9 == 0) goto L9b
            if (r5 == 0) goto L99
        L97:
            r6 = r1
            goto La1
        L99:
            r5 = r7
            r6 = r8
        L9b:
            int r4 = r4 + 1
            goto L6d
        L9e:
            if (r5 != 0) goto La1
            goto L97
        La1:
            if (r6 != 0) goto La4
            return r1
        La4:
            java.lang.Object[] r11 = new java.lang.Object[r3]
            java.lang.Object r11 = r6.invoke(r0, r11)
            boolean r0 = r11 instanceof kotlinx.serialization.KSerializer
            if (r0 == 0) goto Lb1
            r1 = r11
            kotlinx.serialization.KSerializer r1 = (kotlinx.serialization.KSerializer) r1
        Lb1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: vt.a2.h(java.lang.Class):kotlinx.serialization.KSerializer");
    }

    @NotNull
    public static final Map<KClass<?>, KSerializer<?>> i() {
        Map c10 = kotlin.collections.p0.c();
        c10.put(Reflection.getOrCreateKotlinClass(String.class), tt.a.D(StringCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(Character.TYPE), tt.a.x(CharCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(char[].class), tt.a.d());
        c10.put(Reflection.getOrCreateKotlinClass(Double.TYPE), tt.a.y(DoubleCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(double[].class), tt.a.e());
        c10.put(Reflection.getOrCreateKotlinClass(Float.TYPE), tt.a.z(FloatCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(float[].class), tt.a.f());
        c10.put(Reflection.getOrCreateKotlinClass(Long.TYPE), tt.a.B(LongCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(long[].class), tt.a.i());
        c10.put(Reflection.getOrCreateKotlinClass(ms.p.class), tt.a.I(ms.p.f62643b));
        c10.put(Reflection.getOrCreateKotlinClass(Integer.TYPE), tt.a.A(IntCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(int[].class), tt.a.g());
        c10.put(Reflection.getOrCreateKotlinClass(ms.n.class), tt.a.H(ms.n.f62638b));
        c10.put(Reflection.getOrCreateKotlinClass(Short.TYPE), tt.a.C(ShortCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(short[].class), tt.a.n());
        c10.put(Reflection.getOrCreateKotlinClass(ms.s.class), tt.a.J(ms.s.f62649b));
        c10.put(Reflection.getOrCreateKotlinClass(Byte.TYPE), tt.a.w(ByteCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(byte[].class), tt.a.c());
        c10.put(Reflection.getOrCreateKotlinClass(ms.l.class), tt.a.G(ms.l.f62633b));
        c10.put(Reflection.getOrCreateKotlinClass(Boolean.TYPE), tt.a.v(BooleanCompanionObject.INSTANCE));
        c10.put(Reflection.getOrCreateKotlinClass(boolean[].class), tt.a.b());
        c10.put(Reflection.getOrCreateKotlinClass(Unit.class), tt.a.u(Unit.f60915a));
        c10.put(Reflection.getOrCreateKotlinClass(Void.class), tt.a.l());
        try {
            c10.put(Reflection.getOrCreateKotlinClass(kotlin.time.b.class), tt.a.E(kotlin.time.b.f61250b));
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        try {
            c10.put(Reflection.getOrCreateKotlinClass(ms.q.class), tt.a.r());
        } catch (ClassNotFoundException | NoClassDefFoundError unused2) {
        }
        try {
            c10.put(Reflection.getOrCreateKotlinClass(ms.o.class), tt.a.q());
        } catch (ClassNotFoundException | NoClassDefFoundError unused3) {
        }
        try {
            c10.put(Reflection.getOrCreateKotlinClass(ms.t.class), tt.a.s());
        } catch (ClassNotFoundException | NoClassDefFoundError unused4) {
        }
        try {
            c10.put(Reflection.getOrCreateKotlinClass(ms.m.class), tt.a.p());
        } catch (ClassNotFoundException | NoClassDefFoundError unused5) {
        }
        try {
            c10.put(Reflection.getOrCreateKotlinClass(Uuid.class), tt.a.F(Uuid.f61259c));
        } catch (ClassNotFoundException | NoClassDefFoundError unused6) {
        }
        return kotlin.collections.p0.b(c10);
    }

    private static final <T> KSerializer<T> j(Object obj, KSerializer<Object>... kSerializerArr) {
        Class[] clsArr;
        try {
            if (kSerializerArr.length == 0) {
                clsArr = new Class[0];
            } else {
                int length = kSerializerArr.length;
                Class[] clsArr2 = new Class[length];
                for (int i10 = 0; i10 < length; i10++) {
                    clsArr2[i10] = KSerializer.class;
                }
                clsArr = clsArr2;
            }
            Object invoke = obj.getClass().getDeclaredMethod("serializer", (Class[]) Arrays.copyOf(clsArr, clsArr.length)).invoke(obj, Arrays.copyOf(kSerializerArr, kSerializerArr.length));
            if (!(invoke instanceof KSerializer)) {
                return null;
            }
            return (KSerializer) invoke;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (InvocationTargetException e10) {
            Throwable cause = e10.getCause();
            if (cause != null) {
                String message = cause.getMessage();
                if (message == null) {
                    message = e10.getMessage();
                }
                throw new InvocationTargetException(cause, message);
            }
            throw e10;
        }
    }

    private static final <T> KSerializer<T> k(Class<?> cls, KSerializer<Object>... kSerializerArr) {
        Object a10 = a(cls, "Companion");
        if (a10 == null) {
            return null;
        }
        return j(a10, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
    }

    public static final <T> boolean l(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        return zs.a.b(kClass).isInterface();
    }

    private static final <T> boolean m(Class<T> cls) {
        if (cls.getAnnotation(st.k.class) == null && cls.getAnnotation(st.d.class) == null) {
            return true;
        }
        return false;
    }

    private static final <T> boolean n(Class<T> cls) {
        if (cls.getAnnotation(st.d.class) != null) {
            return true;
        }
        st.k kVar = (st.k) cls.getAnnotation(st.k.class);
        if (kVar != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(kVar.with()), Reflection.getOrCreateKotlinClass(st.g.class))) {
            return true;
        }
        return false;
    }

    public static final boolean o(@NotNull KClass<Object> rootClass) {
        Intrinsics.checkNotNullParameter(rootClass, "rootClass");
        return zs.a.b(rootClass).isArray();
    }

    @NotNull
    public static final Void p(@NotNull KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        b2.f(kClass);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public static final <T, E extends T> E[] q(@NotNull ArrayList<E> arrayList, @NotNull KClass<T> eClass) {
        Intrinsics.checkNotNullParameter(arrayList, "<this>");
        Intrinsics.checkNotNullParameter(eClass, "eClass");
        Object newInstance = Array.newInstance(zs.a.b(eClass), arrayList.size());
        Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<E of kotlinx.serialization.internal.PlatformKt.toNativeArrayImpl>");
        E[] eArr = (E[]) arrayList.toArray((Object[]) newInstance);
        Intrinsics.checkNotNullExpressionValue(eArr, "toArray(...)");
        return eArr;
    }
}
