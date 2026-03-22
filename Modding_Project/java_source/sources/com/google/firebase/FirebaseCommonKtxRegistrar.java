package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import gt.c0;
import gt.d1;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.q;
/* compiled from: Firebase.kt */
@Keep
@Metadata
@SourceDebugExtension({"SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/FirebaseKt\n*L\n1#1,82:1\n76#2,6:83\n76#2,6:89\n76#2,6:95\n76#2,6:101\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/FirebaseCommonKtxRegistrar\n*L\n67#1:83,6\n68#1:89,6\n69#1:95,6\n70#1:101,6\n*E\n"})
/* loaded from: classes5.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    /* compiled from: Firebase.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a<T> implements w7.g {

        /* renamed from: a  reason: collision with root package name */
        public static final a<T> f20314a = new a<>();

        @Override // w7.g
        /* renamed from: b */
        public final c0 a(w7.d dVar) {
            Object h10 = dVar.h(a0.a(o7.a.class, Executor.class));
            Intrinsics.checkNotNullExpressionValue(h10, "get(...)");
            return d1.b((Executor) h10);
        }
    }

    /* compiled from: Firebase.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class b<T> implements w7.g {

        /* renamed from: a  reason: collision with root package name */
        public static final b<T> f20315a = new b<>();

        @Override // w7.g
        /* renamed from: b */
        public final c0 a(w7.d dVar) {
            Object h10 = dVar.h(a0.a(o7.c.class, Executor.class));
            Intrinsics.checkNotNullExpressionValue(h10, "get(...)");
            return d1.b((Executor) h10);
        }
    }

    /* compiled from: Firebase.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class c<T> implements w7.g {

        /* renamed from: a  reason: collision with root package name */
        public static final c<T> f20316a = new c<>();

        @Override // w7.g
        /* renamed from: b */
        public final c0 a(w7.d dVar) {
            Object h10 = dVar.h(a0.a(o7.b.class, Executor.class));
            Intrinsics.checkNotNullExpressionValue(h10, "get(...)");
            return d1.b((Executor) h10);
        }
    }

    /* compiled from: Firebase.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class d<T> implements w7.g {

        /* renamed from: a  reason: collision with root package name */
        public static final d<T> f20317a = new d<>();

        @Override // w7.g
        /* renamed from: b */
        public final c0 a(w7.d dVar) {
            Object h10 = dVar.h(a0.a(o7.d.class, Executor.class));
            Intrinsics.checkNotNullExpressionValue(h10, "get(...)");
            return d1.b((Executor) h10);
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<w7.c<?>> getComponents() {
        w7.c d10 = w7.c.e(a0.a(o7.a.class, c0.class)).b(q.l(a0.a(o7.a.class, Executor.class))).f(a.f20314a).d();
        Intrinsics.checkNotNullExpressionValue(d10, "build(...)");
        w7.c d11 = w7.c.e(a0.a(o7.c.class, c0.class)).b(q.l(a0.a(o7.c.class, Executor.class))).f(b.f20315a).d();
        Intrinsics.checkNotNullExpressionValue(d11, "build(...)");
        w7.c d12 = w7.c.e(a0.a(o7.b.class, c0.class)).b(q.l(a0.a(o7.b.class, Executor.class))).f(c.f20316a).d();
        Intrinsics.checkNotNullExpressionValue(d12, "build(...)");
        w7.c d13 = w7.c.e(a0.a(o7.d.class, c0.class)).b(q.l(a0.a(o7.d.class, Executor.class))).f(d.f20317a).d();
        Intrinsics.checkNotNullExpressionValue(d13, "build(...)");
        return CollectionsKt.q(d10, d11, d12, d13);
    }
}
