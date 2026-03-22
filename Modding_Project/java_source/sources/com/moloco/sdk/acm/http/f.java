package com.moloco.sdk.acm.http;

import com.moloco.sdk.MetricsRequest$PostMetricsRequest;
import io.ktor.client.HttpClient;
import io.ktor.client.plugins.HttpTimeout;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nPostMetricsRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PostMetricsRequest.kt\ncom/moloco/sdk/acm/http/PostMetricsRequestImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,111:1\n343#2:112\n233#2:113\n109#2,2:131\n22#2:133\n16#3,4:114\n21#3,10:121\n17#4,3:118\n*S KotlinDebug\n*F\n+ 1 PostMetricsRequest.kt\ncom/moloco/sdk/acm/http/PostMetricsRequestImpl\n*L\n74#1:112\n74#1:113\n74#1:131,2\n74#1:133\n78#1:114,4\n78#1:121,10\n78#1:118,3\n*E\n"})
/* loaded from: classes6.dex */
public final class f implements j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final HttpClient f31953a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final String f31954b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final String f31955c;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.http.PostMetricsRequestImpl", f = "PostMetricsRequest.kt", l = {54}, m = "execute-0E7RQCE")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f31956h;

        /* renamed from: j  reason: collision with root package name */
        public int f31958j;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f31956h = obj;
            this.f31958j |= Integer.MIN_VALUE;
            Object a10 = f.this.a(null, null, this);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Result.b(a10);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.http.PostMetricsRequestImpl", f = "PostMetricsRequest.kt", l = {133, 82}, m = "makeMetricsRequest-BWLJW6A")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f31959h;

        /* renamed from: i  reason: collision with root package name */
        public Object f31960i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f31961j;

        /* renamed from: l  reason: collision with root package name */
        public int f31963l;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f31961j = obj;
            this.f31963l |= Integer.MIN_VALUE;
            Object b10 = f.this.b(0L, null, null, this);
            if (b10 == kotlin.coroutines.intrinsics.a.f()) {
                return b10;
            }
            return Result.b(b10);
        }
    }

    public f(@NotNull HttpClient httpClient, @NotNull String apiUrl) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(apiUrl, "apiUrl");
        this.f31953a = httpClient;
        this.f31954b = apiUrl;
        this.f31955c = "PostMetricsRequest";
    }

    public static final Unit d(long j10, HttpTimeout.a timeout) {
        Intrinsics.checkNotNullParameter(timeout, "$this$timeout");
        timeout.g(Long.valueOf(j10));
        return Unit.f60915a;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    @Override // com.moloco.sdk.acm.http.j
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull com.moloco.sdk.acm.http.i r8, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super wr.g, kotlin.Unit> r9, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.moloco.sdk.acm.http.f.a
            if (r0 == 0) goto L14
            r0 = r10
            com.moloco.sdk.acm.http.f$a r0 = (com.moloco.sdk.acm.http.f.a) r0
            int r1 = r0.f31958j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.f31958j = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            com.moloco.sdk.acm.http.f$a r0 = new com.moloco.sdk.acm.http.f$a
            r0.<init>(r10)
            goto L12
        L1a:
            java.lang.Object r10 = r6.f31956h
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r6.f31958j
            r2 = 1
            if (r1 == 0) goto L39
            if (r1 != r2) goto L31
            kotlin.f.b(r10)
            kotlin.Result r10 = (kotlin.Result) r10
            java.lang.Object r8 = r10.n()
            goto L4a
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlin.f.b(r10)
            r6.f31958j = r2
            r2 = 5000(0x1388, double:2.4703E-320)
            r1 = r7
            r4 = r8
            r5 = r9
            java.lang.Object r8 = r1.b(r2, r4, r5, r6)
            if (r8 != r0) goto L4a
            return r0
        L4a:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.http.f.a(com.moloco.sdk.acm.http.i, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f2 A[Catch: Exception -> 0x0036, TryCatch #2 {Exception -> 0x0036, blocks: (B:13:0x0031, B:42:0x00e4, B:44:0x00f2, B:45:0x0112), top: B:56:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0112 A[Catch: Exception -> 0x0036, TRY_LEAVE, TryCatch #2 {Exception -> 0x0036, blocks: (B:13:0x0031, B:42:0x00e4, B:44:0x00f2, B:45:0x0112), top: B:56:0x0031 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(final long r9, com.moloco.sdk.acm.http.i r11, kotlin.jvm.functions.Function1<? super wr.g, kotlin.Unit> r12, rs.c<? super kotlin.Result<java.lang.String>> r13) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.http.f.b(long, com.moloco.sdk.acm.http.i, kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    public final byte[] e(i iVar) {
        MetricsRequest$PostMetricsRequest build = MetricsRequest$PostMetricsRequest.newBuilder().a(iVar.a()).b(iVar.b()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        byte[] byteArray = build.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }
}
