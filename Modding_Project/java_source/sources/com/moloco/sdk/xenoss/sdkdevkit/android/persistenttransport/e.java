package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import android.util.Patterns;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e;
import gt.g0;
import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpStatement;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.o;
/* loaded from: classes6.dex */
public final class e {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.HttpRequestClientKt", f = "HttpRequestClient.kt", l = {36}, m = "sendGetRequest")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f36634h;

        /* renamed from: i  reason: collision with root package name */
        public int f36635i;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36634h = obj;
            this.f36635i |= Integer.MIN_VALUE;
            return e.a(null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.HttpRequestClientKt$sendGetRequest$2", f = "HttpRequestClient.kt", l = {72}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nHttpRequestClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendGetRequest$2\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,67:1\n332#2:68\n225#2:69\n99#2,2:70\n22#2:72\n*S KotlinDebug\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendGetRequest$2\n*L\n37#1:68\n37#1:69\n37#1:70,2\n37#1:72\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36636h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ HttpClient f36637i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f36638j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(HttpClient httpClient, String str, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f36637i = httpClient;
            this.f36638j = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Boolean> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f36637i, this.f36638j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36636h;
            boolean z10 = true;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                HttpClient httpClient = this.f36637i;
                String str = this.f36638j;
                HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
                io.ktor.client.request.a.b(httpRequestBuilder, str);
                com.moloco.sdk.xenoss.sdkdevkit.android.core.c.b(httpRequestBuilder, 5000L);
                httpRequestBuilder.n(wr.m.f70193b.a());
                HttpStatement httpStatement = new HttpStatement(httpRequestBuilder, httpClient);
                this.f36636h = 1;
                obj = httpStatement.d(this);
                if (obj == f10) {
                    return f10;
                }
            }
            wr.o e10 = ((tr.c) obj).e();
            o.a aVar = wr.o.f70214c;
            if (!Intrinsics.areEqual(e10, aVar.B()) && !Intrinsics.areEqual(e10, aVar.v())) {
                z10 = false;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.HttpRequestClientKt", f = "HttpRequestClient.kt", l = {48}, m = "sendPostRequest")
    /* loaded from: classes6.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f36639h;

        /* renamed from: i  reason: collision with root package name */
        public int f36640i;

        public c(rs.c<? super c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36639h = obj;
            this.f36640i |= Integer.MIN_VALUE;
            return e.b(null, null, null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.HttpRequestClientKt$sendPostRequest$2", f = "HttpRequestClient.kt", l = {89}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nHttpRequestClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendPostRequest$2\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,67:1\n343#2:68\n233#2:69\n109#2,2:87\n22#2:89\n16#3,4:70\n21#3,10:77\n17#4,3:74\n*S KotlinDebug\n*F\n+ 1 HttpRequestClient.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/HttpRequestClientKt$sendPostRequest$2\n*L\n49#1:68\n49#1:69\n49#1:87,2\n49#1:89\n55#1:70,4\n55#1:77,10\n55#1:74,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d extends SuspendLambda implements Function2<g0, rs.c<? super Boolean>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f36641h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ HttpClient f36642i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f36643j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f36644k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ byte[] f36645l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ io.ktor.http.a f36646m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(HttpClient httpClient, String str, String str2, byte[] bArr, io.ktor.http.a aVar, rs.c<? super d> cVar) {
            super(2, cVar);
            this.f36642i = httpClient;
            this.f36643j = str;
            this.f36644k = str2;
            this.f36645l = bArr;
            this.f36646m = aVar;
        }

        public static final Unit i(String str, wr.g gVar) {
            gVar.f(wr.i.f70141a.f(), str);
            return Unit.f60915a;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Boolean> cVar) {
            return ((d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new d(this.f36642i, this.f36643j, this.f36644k, this.f36645l, this.f36646m, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f36641h;
            boolean z10 = true;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                HttpClient httpClient = this.f36642i;
                String str = this.f36643j;
                final String str2 = this.f36644k;
                byte[] bArr = this.f36645l;
                io.ktor.http.a aVar = this.f36646m;
                HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
                io.ktor.client.request.a.b(httpRequestBuilder, str);
                if (str2 != null && (!StringsKt.t0(str2))) {
                    io.ktor.client.request.a.a(httpRequestBuilder, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.h
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return e.d.i(str2, (wr.g) obj2);
                        }
                    });
                }
                if (bArr == null) {
                    httpRequestBuilder.j(xr.a.f70524a);
                    KType typeOf = Reflection.typeOf(byte[].class);
                    httpRequestBuilder.k(es.b.b(TypesJVMKt.getJavaType(typeOf), Reflection.getOrCreateKotlinClass(byte[].class), typeOf));
                } else if (bArr instanceof xr.b) {
                    httpRequestBuilder.j(bArr);
                    httpRequestBuilder.k(null);
                } else {
                    httpRequestBuilder.j(bArr);
                    KType typeOf2 = Reflection.typeOf(byte[].class);
                    httpRequestBuilder.k(es.b.b(TypesJVMKt.getJavaType(typeOf2), Reflection.getOrCreateKotlinClass(byte[].class), typeOf2));
                }
                io.ktor.http.d.e(httpRequestBuilder, aVar);
                com.moloco.sdk.xenoss.sdkdevkit.android.core.c.b(httpRequestBuilder, 5000L);
                httpRequestBuilder.n(wr.m.f70193b.c());
                HttpStatement httpStatement = new HttpStatement(httpRequestBuilder, httpClient);
                this.f36641h = 1;
                obj = httpStatement.d(this);
                if (obj == f10) {
                    return f10;
                }
            }
            wr.o e10 = ((tr.c) obj).e();
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.debugBuildLog$default(molocoLogger, "HttpClient", "Response status: " + e10 + " for url: " + this.f36643j, false, 4, null);
            o.a aVar2 = wr.o.f70214c;
            if (!Intrinsics.areEqual(e10, aVar2.B()) && !Intrinsics.areEqual(e10, aVar2.v())) {
                z10 = false;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0052, code lost:
        r5 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull io.ktor.client.HttpClient r5, @org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.a
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$a r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.a) r0
            int r1 = r0.f36635i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f36635i = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$a r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f36634h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f36635i
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)     // Catch: java.lang.Exception -> L52
            goto L4b
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r7)
            com.moloco.sdk.internal.scheduling.a r7 = com.moloco.sdk.internal.scheduling.c.a()     // Catch: java.lang.Exception -> L52
            kotlin.coroutines.CoroutineContext r7 = r7.getIo()     // Catch: java.lang.Exception -> L52
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$b r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$b     // Catch: java.lang.Exception -> L52
            r4 = 0
            r2.<init>(r5, r6, r4)     // Catch: java.lang.Exception -> L52
            r0.f36635i = r3     // Catch: java.lang.Exception -> L52
            java.lang.Object r7 = gt.e.g(r7, r2, r0)     // Catch: java.lang.Exception -> L52
            if (r7 != r1) goto L4b
            return r1
        L4b:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Exception -> L52
            boolean r5 = r7.booleanValue()     // Catch: java.lang.Exception -> L52
            goto L53
        L52:
            r5 = 0
        L53:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.a(io.ktor.client.HttpClient, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
        r0 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(@org.jetbrains.annotations.NotNull io.ktor.client.HttpClient r12, @org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull byte[] r14, @org.jetbrains.annotations.NotNull io.ktor.http.a r15, @org.jetbrains.annotations.Nullable java.lang.String r16, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r17) {
        /*
            r0 = r17
            boolean r1 = r0 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.c
            if (r1 == 0) goto L15
            r1 = r0
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$c r1 = (com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.c) r1
            int r2 = r1.f36640i
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f36640i = r2
            goto L1a
        L15:
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$c r1 = new com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$c
            r1.<init>(r0)
        L1a:
            java.lang.Object r0 = r1.f36639h
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r1.f36640i
            r4 = 1
            if (r3 == 0) goto L33
            if (r3 != r4) goto L2b
            kotlin.f.b(r0)     // Catch: java.lang.Exception -> L5b
            goto L54
        L2b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L33:
            kotlin.f.b(r0)
            com.moloco.sdk.internal.scheduling.a r0 = com.moloco.sdk.internal.scheduling.c.a()     // Catch: java.lang.Exception -> L5b
            kotlin.coroutines.CoroutineContext r0 = r0.getIo()     // Catch: java.lang.Exception -> L5b
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$d r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e$d     // Catch: java.lang.Exception -> L5b
            r11 = 0
            r5 = r3
            r6 = r12
            r7 = r13
            r8 = r16
            r9 = r14
            r10 = r15
            r5.<init>(r6, r7, r8, r9, r10, r11)     // Catch: java.lang.Exception -> L5b
            r1.f36640i = r4     // Catch: java.lang.Exception -> L5b
            java.lang.Object r0 = gt.e.g(r0, r3, r1)     // Catch: java.lang.Exception -> L5b
            if (r0 != r2) goto L54
            return r2
        L54:
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Exception -> L5b
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Exception -> L5b
            goto L5c
        L5b:
            r0 = 0
        L5c:
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.a.a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.e.b(io.ktor.client.HttpClient, java.lang.String, byte[], io.ktor.http.a, java.lang.String, rs.c):java.lang.Object");
    }

    public static /* synthetic */ Object c(HttpClient httpClient, String str, byte[] bArr, io.ktor.http.a aVar, String str2, rs.c cVar, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            str2 = null;
        }
        return b(httpClient, str, bArr, aVar, str2, cVar);
    }

    public static final boolean d(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        boolean matches = Patterns.WEB_URL.matcher(str).matches();
        if (!matches) {
            MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
            MolocoLogger.error$default(molocoLogger, "HttpRequestClient", "URL is invalid. " + str, null, false, 12, null);
        }
        return matches;
    }
}
