package st;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.a2;
import vt.s2;
import vt.z1;
/* compiled from: SerializersCache.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSerializersCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n+ 2 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,79:1\n78#1:81\n78#1:82\n78#2:80\n78#2:83\n78#2:84\n*S KotlinDebug\n*F\n+ 1 SerializersCache.kt\nkotlinx/serialization/SerializersCacheKt\n*L\n22#1:81\n28#1:82\n54#1:80\n28#1:83\n45#1:84\n*E\n"})
/* loaded from: classes8.dex */
public final class s {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final s2<? extends Object> f66639a = vt.o.a(new Function1() { // from class: st.m
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            KSerializer k10;
            k10 = s.k((KClass) obj);
            return k10;
        }
    });
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final s2<Object> f66640b = vt.o.a(new Function1() { // from class: st.n
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            KSerializer l10;
            l10 = s.l((KClass) obj);
            return l10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final z1<? extends Object> f66641c = vt.o.b(new Function2() { // from class: st.o
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            KSerializer g10;
            g10 = s.g((KClass) obj, (List) obj2);
            return g10;
        }
    });
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final z1<Object> f66642d = vt.o.b(new Function2() { // from class: st.p
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            KSerializer i10;
            i10 = s.i((KClass) obj, (List) obj2);
            return i10;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer g(KClass clazz, final List types) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(types, "types");
        List<KSerializer<Object>> f10 = t.f(xt.b.a(), types, true);
        Intrinsics.checkNotNull(f10);
        return t.a(clazz, f10, new Function0() { // from class: st.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KClassifier h10;
                h10 = s.h(types);
                return h10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KClassifier h(List list) {
        return ((KType) list.get(0)).getClassifier();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer i(KClass clazz, final List types) {
        KSerializer t10;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(types, "types");
        List<KSerializer<Object>> f10 = t.f(xt.b.a(), types, true);
        Intrinsics.checkNotNull(f10);
        KSerializer<? extends Object> a10 = t.a(clazz, f10, new Function0() { // from class: st.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KClassifier j10;
                j10 = s.j(types);
                return j10;
            }
        });
        if (a10 == null || (t10 = tt.a.t(a10)) == null) {
            return null;
        }
        return t10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KClassifier j(List list) {
        return ((KType) list.get(0)).getClassifier();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer k(KClass it) {
        Intrinsics.checkNotNullParameter(it, "it");
        KSerializer d10 = t.d(it);
        if (d10 == null) {
            if (a2.l(it)) {
                return new g(it);
            }
            return null;
        }
        return d10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final KSerializer l(KClass it) {
        KSerializer t10;
        Intrinsics.checkNotNullParameter(it, "it");
        KSerializer d10 = t.d(it);
        if (d10 == null) {
            if (a2.l(it)) {
                d10 = new g(it);
            } else {
                d10 = null;
            }
        }
        if (d10 == null || (t10 = tt.a.t(d10)) == null) {
            return null;
        }
        return t10;
    }

    @Nullable
    public static final KSerializer<Object> m(@NotNull KClass<Object> clazz, boolean z10) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (!z10) {
            KSerializer<? extends Object> a10 = f66639a.a(clazz);
            if (a10 == null) {
                return null;
            }
            return a10;
        }
        return f66640b.a(clazz);
    }

    @NotNull
    public static final Object n(@NotNull KClass<Object> clazz, @NotNull List<? extends KType> types, boolean z10) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(types, "types");
        if (!z10) {
            return f66641c.a(clazz, types);
        }
        return f66642d.a(clazz, types);
    }
}
