package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import gt.g0;
import io.ktor.client.HttpClient;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting(otherwise = 2)
/* loaded from: classes6.dex */
public final class g implements i {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final HttpClient f36647b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final g0 f36648c;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.NonPersistentHttpRequestImpl$send$1", f = "NonPersistentHttpRequest.kt", l = {46, 50}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36649h;

        /* renamed from: i  reason: collision with root package name */
        public int f36650i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f36652k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f36652k = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f36652k, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0089  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0084 -> B:26:0x0087). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r12.f36650i
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L24
                if (r1 == r4) goto L1e
                if (r1 != r3) goto L16
                int r1 = r12.f36649h
                kotlin.f.b(r13)
                goto L87
            L16:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L1e:
                int r1 = r12.f36649h
                kotlin.f.b(r13)
                goto L6d
            L24:
                kotlin.f.b(r13)
                r1 = r2
            L28:
                r13 = 5
                if (r1 >= r13) goto L89
                com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g r13 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.this
                r5 = 0
                android.content.Context r5 = com.moloco.sdk.internal.android_context.b.b(r5, r4, r5)
                boolean r13 = r13.c(r5)
                com.moloco.sdk.internal.MolocoLogger r5 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r7 = "Network available: "
                r6.append(r7)
                r6.append(r13)
                java.lang.String r7 = " for non persistent request"
                r6.append(r7)
                java.lang.String r7 = r6.toString()
                r10 = 12
                r11 = 0
                java.lang.String r6 = "NonPersistentRequest"
                r8 = 0
                r9 = 0
                com.moloco.sdk.internal.MolocoLogger.info$default(r5, r6, r7, r8, r9, r10, r11)
                if (r13 == 0) goto L74
                com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g r13 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.this
                io.ktor.client.HttpClient r13 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.b(r13)
                java.lang.String r5 = r12.f36652k
                r12.f36649h = r1
                r12.f36650i = r4
                java.lang.Object r13 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.a(r13, r5, r12)
                if (r13 != r0) goto L6d
                return r0
            L6d:
                java.lang.Boolean r13 = (java.lang.Boolean) r13
                boolean r13 = r13.booleanValue()
                goto L75
            L74:
                r13 = r2
            L75:
                if (r13 == 0) goto L7a
                kotlin.Unit r13 = kotlin.Unit.f60915a
                return r13
            L7a:
                r12.f36649h = r1
                r12.f36650i = r3
                r5 = 10000(0x2710, double:4.9407E-320)
                java.lang.Object r13 = kotlinx.coroutines.DelayKt.b(r5, r12)
                if (r13 != r0) goto L87
                return r0
            L87:
                int r1 = r1 + r4
                goto L28
            L89:
                kotlin.Unit r13 = kotlin.Unit.f60915a
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.NonPersistentHttpRequestImpl$sendPost$1", f = "NonPersistentHttpRequest.kt", l = {61, 65}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36653h;

        /* renamed from: i  reason: collision with root package name */
        public int f36654i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f36656k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ byte[] f36657l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ io.ktor.http.a f36658m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, byte[] bArr, io.ktor.http.a aVar, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f36656k = str;
            this.f36657l = bArr;
            this.f36658m = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f36656k, this.f36657l, this.f36658m, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0080  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x008d -> B:26:0x0090). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                r13 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r13.f36654i
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L24
                if (r1 == r4) goto L1e
                if (r1 != r3) goto L16
                int r1 = r13.f36653h
                kotlin.f.b(r14)
                goto L90
            L16:
                java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r14.<init>(r0)
                throw r14
            L1e:
                int r1 = r13.f36653h
                kotlin.f.b(r14)
                goto L76
            L24:
                kotlin.f.b(r14)
                r1 = r2
            L28:
                r14 = 5
                if (r1 >= r14) goto L92
                com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g r14 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.this
                r5 = 0
                android.content.Context r5 = com.moloco.sdk.internal.android_context.b.b(r5, r4, r5)
                boolean r14 = r14.c(r5)
                com.moloco.sdk.internal.MolocoLogger r5 = com.moloco.sdk.internal.MolocoLogger.INSTANCE
                java.lang.StringBuilder r6 = new java.lang.StringBuilder
                r6.<init>()
                java.lang.String r7 = "Network available: "
                r6.append(r7)
                r6.append(r14)
                java.lang.String r7 = " for non persistent request"
                r6.append(r7)
                java.lang.String r7 = r6.toString()
                r10 = 12
                r11 = 0
                java.lang.String r6 = "NonPersistentRequest"
                r8 = 0
                r9 = 0
                com.moloco.sdk.internal.MolocoLogger.info$default(r5, r6, r7, r8, r9, r10, r11)
                if (r14 == 0) goto L7d
                com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g r14 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.this
                io.ktor.client.HttpClient r5 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.b(r14)
                java.lang.String r6 = r13.f36656k
                byte[] r7 = r13.f36657l
                io.ktor.http.a r8 = r13.f36658m
                r13.f36653h = r1
                r13.f36654i = r4
                r11 = 8
                r12 = 0
                r9 = 0
                r10 = r13
                java.lang.Object r14 = com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.c(r5, r6, r7, r8, r9, r10, r11, r12)
                if (r14 != r0) goto L76
                return r0
            L76:
                java.lang.Boolean r14 = (java.lang.Boolean) r14
                boolean r14 = r14.booleanValue()
                goto L7e
            L7d:
                r14 = r2
            L7e:
                if (r14 == 0) goto L83
                kotlin.Unit r14 = kotlin.Unit.f60915a
                return r14
            L83:
                r13.f36653h = r1
                r13.f36654i = r3
                r5 = 10000(0x2710, double:4.9407E-320)
                java.lang.Object r14 = kotlinx.coroutines.DelayKt.b(r5, r13)
                if (r14 != r0) goto L90
                return r0
            L90:
                int r1 = r1 + r4
                goto L28
            L92:
                kotlin.Unit r14 = kotlin.Unit.f60915a
                return r14
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.g.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public g(@NotNull HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.f36647b = httpClient;
        this.f36648c = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getDefault());
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f
    public void a(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        gt.g.d(this.f36648c, null, null, new a(url, null), 3, null);
    }

    @VisibleForTesting(otherwise = 2)
    public final boolean c(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        if (networkCapabilities == null) {
            return false;
        }
        if (!networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(3)) {
            return false;
        }
        return true;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f
    public void a(@NotNull String url, @NotNull byte[] body, @NotNull io.ktor.http.a contentType, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        gt.g.d(this.f36648c, null, null, new b(url, body, contentType, null), 3, null);
    }
}
