package st;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.a1;
import vt.a2;
import vt.b2;
import vt.c1;
import vt.o0;
import vt.o2;
import vt.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Serializers.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 2 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,421:1\n78#2:422\n78#2:423\n78#2:430\n78#2:431\n1557#3:424\n1628#3,3:425\n1557#3:432\n1628#3,3:433\n1557#3:436\n1628#3,3:437\n78#4:428\n78#4:429\n37#5,2:440\n*S KotlinDebug\n*F\n+ 1 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n*L\n35#1:422\n54#1:423\n232#1:430\n256#1:431\n190#1:424\n190#1:425,3\n267#1:432\n267#1:433,3\n269#1:436\n269#1:437,3\n223#1:428\n230#1:429\n334#1:440,2\n*E\n"})
/* loaded from: classes8.dex */
public final /* synthetic */ class v {
    private static final KSerializer<? extends Object> b(KClass<Object> kClass, List<? extends KSerializer<Object>> list, Function0<? extends KClassifier> function0) {
        if (!Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Collection.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(List.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(ArrayList.class))) {
            if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashSet.class))) {
                return new q0(list.get(0));
            }
            if (!Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Set.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashSet.class))) {
                if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(HashMap.class))) {
                    return new o0(list.get(0), list.get(1));
                }
                if (!Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.class)) && !Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(LinkedHashMap.class))) {
                    if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Map.Entry.class))) {
                        return tt.a.j(list.get(0), list.get(1));
                    }
                    if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Pair.class))) {
                        return tt.a.m(list.get(0), list.get(1));
                    }
                    if (Intrinsics.areEqual(kClass, Reflection.getOrCreateKotlinClass(Triple.class))) {
                        return tt.a.o(list.get(0), list.get(1), list.get(2));
                    }
                    if (a2.o(kClass)) {
                        KClassifier invoke = function0.invoke();
                        Intrinsics.checkNotNull(invoke, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                        return tt.a.a((KClass) invoke, list.get(0));
                    }
                    return null;
                }
                return new a1(list.get(0), list.get(1));
            }
            return new c1(list.get(0));
        }
        return new vt.f(list.get(0));
    }

    private static final KSerializer<? extends Object> c(KClass<Object> kClass, List<? extends KSerializer<Object>> list) {
        KSerializer[] kSerializerArr = (KSerializer[]) list.toArray(new KSerializer[0]);
        return a2.d(kClass, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
    }

    private static final <T> KSerializer<T> d(KSerializer<T> kSerializer, boolean z10) {
        if (z10) {
            return tt.a.t(kSerializer);
        }
        Intrinsics.checkNotNull(kSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>");
        return kSerializer;
    }

    @Nullable
    public static final KSerializer<? extends Object> e(@NotNull KClass<Object> kClass, @NotNull List<? extends KSerializer<Object>> serializers, @NotNull Function0<? extends KClassifier> elementClassifierIfArray) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        Intrinsics.checkNotNullParameter(serializers, "serializers");
        Intrinsics.checkNotNullParameter(elementClassifierIfArray, "elementClassifierIfArray");
        KSerializer<? extends Object> b10 = b(kClass, serializers, elementClassifierIfArray);
        if (b10 == null) {
            return c(kClass, serializers);
        }
        return b10;
    }

    @NotNull
    public static final KSerializer<Object> f(@NotNull KType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return t.c(xt.b.a(), type);
    }

    @NotNull
    public static final KSerializer<Object> g(@NotNull xt.a aVar, @NotNull KType type) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        KSerializer<Object> h10 = h(aVar, type, true);
        if (h10 != null) {
            return h10;
        }
        a2.p(b2.c(type));
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final kotlinx.serialization.KSerializer<java.lang.Object> h(xt.a r6, kotlin.reflect.KType r7, boolean r8) {
        /*
            kotlin.reflect.KClass r0 = vt.b2.c(r7)
            boolean r1 = r7.isMarkedNullable()
            java.util.List r7 = r7.getArguments()
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 10
            int r3 = kotlin.collections.CollectionsKt.z(r7, r3)
            r2.<init>(r3)
            java.util.Iterator r7 = r7.iterator()
        L1d:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L31
            java.lang.Object r3 = r7.next()
            kotlin.reflect.KTypeProjection r3 = (kotlin.reflect.KTypeProjection) r3
            kotlin.reflect.KType r3 = vt.b2.g(r3)
            r2.add(r3)
            goto L1d
        L31:
            boolean r7 = r2.isEmpty()
            r3 = 2
            r4 = 0
            if (r7 == 0) goto L4c
            boolean r7 = vt.a2.l(r0)
            if (r7 == 0) goto L47
            kotlinx.serialization.KSerializer r7 = xt.a.c(r6, r0, r4, r3, r4)
            if (r7 == 0) goto L47
        L45:
            r7 = r4
            goto L60
        L47:
            kotlinx.serialization.KSerializer r7 = st.s.m(r0, r1)
            goto L60
        L4c:
            boolean r7 = r6.d()
            if (r7 == 0) goto L53
            goto L45
        L53:
            java.lang.Object r7 = st.s.n(r0, r2, r1)
            boolean r5 = kotlin.Result.i(r7)
            if (r5 == 0) goto L5e
            r7 = r4
        L5e:
            kotlinx.serialization.KSerializer r7 = (kotlinx.serialization.KSerializer) r7
        L60:
            if (r7 == 0) goto L63
            return r7
        L63:
            boolean r7 = r2.isEmpty()
            if (r7 == 0) goto L84
            kotlinx.serialization.KSerializer r7 = st.t.d(r0)
            if (r7 != 0) goto La9
            kotlinx.serialization.KSerializer r7 = xt.a.c(r6, r0, r4, r3, r4)
            if (r7 != 0) goto La9
            boolean r6 = vt.a2.l(r0)
            if (r6 == 0) goto L82
            st.g r6 = new st.g
            r6.<init>(r0)
        L80:
            r7 = r6
            goto La9
        L82:
            r7 = r4
            goto La9
        L84:
            java.util.List r7 = st.t.f(r6, r2, r8)
            if (r7 != 0) goto L8b
            return r4
        L8b:
            st.u r8 = new st.u
            r8.<init>()
            kotlinx.serialization.KSerializer r8 = st.t.a(r0, r7, r8)
            if (r8 != 0) goto La8
            kotlinx.serialization.KSerializer r7 = r6.b(r0, r7)
            if (r7 != 0) goto La9
            boolean r6 = vt.a2.l(r0)
            if (r6 == 0) goto L82
            st.g r6 = new st.g
            r6.<init>(r0)
            goto L80
        La8:
            r7 = r8
        La9:
            if (r7 == 0) goto Laf
            kotlinx.serialization.KSerializer r4 = d(r7, r1)
        Laf:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: st.v.h(xt.a, kotlin.reflect.KType, boolean):kotlinx.serialization.KSerializer");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KClassifier i(List list) {
        return ((KType) list.get(0)).getClassifier();
    }

    @Nullable
    public static final <T> KSerializer<T> j(@NotNull KClass<T> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        KSerializer<T> b10 = a2.b(kClass);
        if (b10 == null) {
            return o2.b(kClass);
        }
        return b10;
    }

    @Nullable
    public static final KSerializer<Object> k(@NotNull xt.a aVar, @NotNull KType type) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(type, "type");
        return h(aVar, type, false);
    }

    @Nullable
    public static final List<KSerializer<Object>> l(@NotNull xt.a aVar, @NotNull List<? extends KType> typeArguments, boolean z10) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(typeArguments, "typeArguments");
        if (z10) {
            List<? extends KType> list = typeArguments;
            arrayList = new ArrayList(CollectionsKt.z(list, 10));
            for (KType kType : list) {
                arrayList.add(t.c(aVar, kType));
            }
        } else {
            List<? extends KType> list2 = typeArguments;
            arrayList = new ArrayList(CollectionsKt.z(list2, 10));
            for (KType kType2 : list2) {
                KSerializer<Object> e10 = t.e(aVar, kType2);
                if (e10 == null) {
                    return null;
                }
                arrayList.add(e10);
            }
        }
        return arrayList;
    }
}
