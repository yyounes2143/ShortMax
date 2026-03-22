package com.google.firebase.sessions.settings;

import androidx.datastore.core.DataStore;
import gt.g0;
import j9.m0;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kt.b;
import m9.g;
import ms.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: SettingsCache.kt */
@Metadata
/* loaded from: classes5.dex */
public final class SettingsCacheImpl implements g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f21667a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final m0 f21668b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final DataStore<a> f21669c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<a> f21670d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsCache.kt */
    @Metadata
    @d(c = "com.google.firebase.sessions.settings.SettingsCacheImpl$1", f = "SettingsCache.kt", l = {73}, m = "invokeSuspend")
    /* renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f21671h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SettingsCache.kt */
        @Metadata
        /* renamed from: com.google.firebase.sessions.settings.SettingsCacheImpl$1$a */
        /* loaded from: classes5.dex */
        public /* synthetic */ class a implements kt.c, FunctionAdapter {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ AtomicReference<com.google.firebase.sessions.settings.a> f21673a;

            a(AtomicReference<com.google.firebase.sessions.settings.a> atomicReference) {
                this.f21673a = atomicReference;
            }

            @Override // kt.c
            /* renamed from: a */
            public final Object emit(com.google.firebase.sessions.settings.a aVar, c<? super Unit> cVar) {
                Object j10 = AnonymousClass1.j(this.f21673a, aVar, cVar);
                if (j10 == kotlin.coroutines.intrinsics.a.f()) {
                    return j10;
                }
                return Unit.f60915a;
            }

            public final boolean equals(Object obj) {
                if (!(obj instanceof kt.c) || !(obj instanceof FunctionAdapter)) {
                    return false;
                }
                return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
            }

            @Override // kotlin.jvm.internal.FunctionAdapter
            public final f<?> getFunctionDelegate() {
                return new AdaptedFunctionReference(2, this.f21673a, AtomicReference.class, "set", "set(Ljava/lang/Object;)V", 4);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }
        }

        AnonymousClass1(c<? super AnonymousClass1> cVar) {
            super(2, cVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ Object j(AtomicReference atomicReference, com.google.firebase.sessions.settings.a aVar, c cVar) {
            atomicReference.set(aVar);
            return Unit.f60915a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final c<Unit> create(Object obj, c<?> cVar) {
            return new AnonymousClass1(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f21671h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                b data = SettingsCacheImpl.this.f21669c.getData();
                a aVar = new a(SettingsCacheImpl.this.f21670d);
                this.f21671h = 1;
                if (data.collect(aVar, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public SettingsCacheImpl(@o7.a @NotNull CoroutineContext backgroundDispatcher, @NotNull m0 timeProvider, @NotNull DataStore<a> sessionConfigsDataStore) {
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(sessionConfigsDataStore, "sessionConfigsDataStore");
        this.f21667a = backgroundDispatcher;
        this.f21668b = timeProvider;
        this.f21669c = sessionConfigsDataStore;
        this.f21670d = new AtomicReference<>();
        gt.g.d(i.a(backgroundDispatcher), null, null, new AnonymousClass1(null), 3, null);
    }

    private final a h() {
        Object b10;
        if (this.f21670d.get() == null) {
            AtomicReference<a> atomicReference = this.f21670d;
            b10 = gt.f.b(null, new SettingsCacheImpl$sessionConfigs$1(this, null), 1, null);
            androidx.compose.animation.core.a.a(atomicReference, null, b10);
        }
        a aVar = this.f21670d.get();
        Intrinsics.checkNotNullExpressionValue(aVar, "get(...)");
        return aVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|24|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        android.util.Log.w("FirebaseSessions", "Failed to update config values: " + r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @Override // m9.g
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull com.google.firebase.sessions.settings.a r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1
            if (r0 == 0) goto L13
            r0 = r7
            com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1 r0 = (com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1) r0
            int r1 = r0.f21678j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f21678j = r1
            goto L18
        L13:
            com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1 r0 = new com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f21676h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f21678j
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.f.b(r7)     // Catch: java.io.IOException -> L29
            goto L5d
        L29:
            r6 = move-exception
            goto L47
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            kotlin.f.b(r7)
            androidx.datastore.core.DataStore<com.google.firebase.sessions.settings.a> r7 = r5.f21669c     // Catch: java.io.IOException -> L29
            com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$2 r2 = new com.google.firebase.sessions.settings.SettingsCacheImpl$updateConfigs$2     // Catch: java.io.IOException -> L29
            r4 = 0
            r2.<init>(r6, r4)     // Catch: java.io.IOException -> L29
            r0.f21678j = r3     // Catch: java.io.IOException -> L29
            java.lang.Object r6 = r7.updateData(r2, r0)     // Catch: java.io.IOException -> L29
            if (r6 != r1) goto L5d
            return r1
        L47:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "Failed to update config values: "
            r7.append(r0)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "FirebaseSessions"
            android.util.Log.w(r7, r6)
        L5d:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.SettingsCacheImpl.a(com.google.firebase.sessions.settings.a, rs.c):java.lang.Object");
    }

    @Override // m9.g
    @Nullable
    public Integer b() {
        return h().d();
    }

    @Override // m9.g
    @Nullable
    public Double c() {
        return h().c();
    }

    @Override // m9.g
    public boolean d() {
        Long b10 = h().b();
        Integer a10 = h().a();
        if (b10 != null && a10 != null && this.f21668b.a().a() - b10.longValue() < a10.intValue()) {
            return false;
        }
        return true;
    }

    @Override // m9.g
    @Nullable
    public Boolean e() {
        return h().e();
    }
}
