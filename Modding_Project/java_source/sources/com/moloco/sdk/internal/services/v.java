package com.moloco.sdk.internal.services;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.net.ConnectivityManagerCompat;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class v implements g0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33531a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f33532b;

    @d(c = "com.moloco.sdk.internal.services.ConnectivityServiceImpl", f = "ConnectivityService.kt", l = {40}, m = "waitForNetwork")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f33533h;

        /* renamed from: j  reason: collision with root package name */
        public int f33535j;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33533h = obj;
            this.f33535j |= Integer.MIN_VALUE;
            return v.this.a(0L, this);
        }
    }

    @d(c = "com.moloco.sdk.internal.services.ConnectivityServiceImpl$waitForNetwork$hasConnectivity$1", f = "ConnectivityService.kt", l = {46}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33536h;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Boolean> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33536h;
            if (i10 != 0 && i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            while (!v.this.d()) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, v.this.f33532b, "waiting because of no network connection", null, false, 12, null);
                this.f33536h = 1;
                if (DelayKt.b(100L, this) == f10) {
                    return f10;
                }
            }
            return kotlin.coroutines.jvm.internal.a.a(true);
        }
    }

    public v(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33531a = context;
        this.f33532b = "ConnectivityServiceImpl";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    @Override // com.moloco.sdk.internal.services.g0
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(long r5, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.moloco.sdk.internal.services.v.a
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.internal.services.v$a r0 = (com.moloco.sdk.internal.services.v.a) r0
            int r1 = r0.f33535j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f33535j = r1
            goto L18
        L13:
            com.moloco.sdk.internal.services.v$a r0 = new com.moloco.sdk.internal.services.v$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f33533h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f33535j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)
            goto L43
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r7)
            com.moloco.sdk.internal.services.v$b r7 = new com.moloco.sdk.internal.services.v$b
            r2 = 0
            r7.<init>(r2)
            r0.f33535j = r3
            java.lang.Object r7 = kotlinx.coroutines.TimeoutKt.e(r5, r7, r0)
            if (r7 != r1) goto L43
            return r1
        L43:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            if (r7 == 0) goto L4c
            boolean r5 = r7.booleanValue()
            goto L4d
        L4c:
            r5 = 0
        L4d:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.v.a(long, rs.c):java.lang.Object");
    }

    @Override // com.moloco.sdk.internal.services.g0
    public boolean b() {
        try {
            return ConnectivityManagerCompat.isActiveNetworkMetered(b(this.f33531a));
        } catch (Exception e10) {
            MolocoLogger.error$default(MolocoLogger.INSTANCE, "isNetworkMetered", e10.toString(), e10, false, 8, null);
            return false;
        }
    }

    public boolean d() {
        NetworkCapabilities networkCapabilities;
        Object systemService = this.f33531a.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        if (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(3)) {
            return false;
        }
        return true;
    }

    public final ConnectivityManager b(Context context) {
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        return (ConnectivityManager) systemService;
    }
}
