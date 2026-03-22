package com.moloco.sdk.internal.services.init;

import android.net.Uri;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.internal.r;
import com.moloco.sdk.internal.services.i0;
import com.moloco.sdk.internal.services.init.i;
import com.moloco.sdk.internal.services.j0;
import com.moloco.sdk.internal.services.w;
import com.moloco.sdk.internal.services.x;
import com.moloco.sdk.publisher.MediationInfo;
import gt.g0;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpRequestTimeoutException;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLHandshakeException;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nInitApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitApi.kt\ncom/moloco/sdk/internal/services/init/InitApiImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,145:1\n332#2:146\n225#2:147\n99#2,2:148\n22#2:150\n*S KotlinDebug\n*F\n+ 1 InitApi.kt\ncom/moloco/sdk/internal/services/init/InitApiImpl\n*L\n73#1:146\n73#1:147\n73#1:148,2\n73#1:150\n*E\n"})
/* loaded from: classes6.dex */
public final class e implements d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final j0 f33421a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final x f33422b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.usertracker.e f33423c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f33424d;

    /* renamed from: e  reason: collision with root package name */
    public final long f33425e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final HttpClient f33426f;

    /* renamed from: g  reason: collision with root package name */
    public final Uri f33427g;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitApiImpl", f = "InitApi.kt", l = {67, 150, 95}, m = "invoke")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33428h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33429i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33430j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33431k;

        /* renamed from: l  reason: collision with root package name */
        public Object f33432l;

        /* renamed from: m  reason: collision with root package name */
        public Object f33433m;

        /* renamed from: n  reason: collision with root package name */
        public Object f33434n;

        /* renamed from: o  reason: collision with root package name */
        public /* synthetic */ Object f33435o;

        /* renamed from: q  reason: collision with root package name */
        public int f33437q;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33435o = obj;
            this.f33437q |= Integer.MIN_VALUE;
            return e.this.a(null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.init.InitApiImpl$invoke$2", f = "InitApi.kt", l = {146}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nInitApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitApi.kt\ncom/moloco/sdk/internal/services/init/InitApiImpl$invoke$2\n+ 2 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,145:1\n156#2:146\n17#3,3:147\n*S KotlinDebug\n*F\n+ 1 InitApi.kt\ncom/moloco/sdk/internal/services/init/InitApiImpl$invoke$2\n*L\n98#1:146\n98#1:147,3\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Init$SDKInitResponse>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33438h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ tr.c f33439i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(tr.c cVar, rs.c<? super b> cVar2) {
            super(2, cVar2);
            this.f33439i = cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Init$SDKInitResponse> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f33439i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f33438h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "InitApi", "Successful Init", null, false, 12, null);
                HttpClientCall x10 = this.f33439i.x();
                KType typeOf = Reflection.typeOf(byte[].class);
                es.a b10 = es.b.b(TypesJVMKt.getJavaType(typeOf), Reflection.getOrCreateKotlinClass(byte[].class), typeOf);
                this.f33438h = 1;
                obj = x10.a(b10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            if (obj != null) {
                return Init$SDKInitResponse.parseFrom((byte[]) obj);
            }
            throw new NullPointerException("null cannot be cast to non-null type kotlin.ByteArray");
        }
    }

    public e(@NotNull j0 deviceInfoService, @NotNull x appInfoService, @NotNull com.moloco.sdk.internal.services.usertracker.e userTrackerService, @NotNull String sdkVersion, @NotNull String endpoint, long j10, @NotNull HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(deviceInfoService, "deviceInfoService");
        Intrinsics.checkNotNullParameter(appInfoService, "appInfoService");
        Intrinsics.checkNotNullParameter(userTrackerService, "userTrackerService");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(endpoint, "endpoint");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.f33421a = deviceInfoService;
        this.f33422b = appInfoService;
        this.f33423c = userTrackerService;
        this.f33424d = sdkVersion;
        this.f33425e = j10;
        this.f33426f = httpClient;
        this.f33427g = Uri.parse(endpoint);
    }

    public static final Unit c(e eVar, i0 i0Var, MediationInfo mediationInfo, w wVar, wr.g headers) {
        Intrinsics.checkNotNullParameter(headers, "$this$headers");
        r.a(headers, eVar.f33424d, i0Var.j(), mediationInfo);
        headers.f("X-Moloco-App-Bundle", wVar.a());
        return Unit.f60915a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(2:3|(6:5|6|(1:(4:(1:(6:11|12|13|14|15|17)(2:27|28))(7:29|30|31|32|33|34|(2:36|(1:38)(4:39|14|15|17))(5:40|41|(1:43)(1:46)|44|45))|26|21|22)(4:52|53|54|55))(4:66|67|68|(1:70)(1:71))|56|57|(1:59)(4:60|33|34|(0)(0))))|75|6|(0)(0)|56|57|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0262, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x015a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x016f A[Catch: Exception -> 0x01ab, TRY_LEAVE, TryCatch #0 {Exception -> 0x01ab, blocks: (B:39:0x015d, B:41:0x016f, B:51:0x01af, B:54:0x01bb, B:56:0x020f), top: B:66:0x015d }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01af A[Catch: Exception -> 0x01ab, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x01ab, blocks: (B:39:0x015d, B:41:0x016f, B:51:0x01af, B:54:0x01bb, B:56:0x020f), top: B:66:0x015d }] */
    @Override // com.moloco.sdk.internal.services.init.d
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull java.lang.String r23, @org.jetbrains.annotations.Nullable com.moloco.sdk.publisher.MediationInfo r24, @org.jetbrains.annotations.NotNull com.moloco.sdk.acm.recorder.a r25, @org.jetbrains.annotations.NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.Init$SDKInitResponse, com.moloco.sdk.internal.services.init.i>> r26) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.init.e.a(java.lang.String, com.moloco.sdk.publisher.MediationInfo, com.moloco.sdk.acm.recorder.a, rs.c):java.lang.Object");
    }

    public final com.moloco.sdk.internal.g0<Init$SDKInitResponse, i> b(Exception exc, com.moloco.sdk.acm.e eVar, com.moloco.sdk.acm.recorder.a aVar) {
        com.moloco.sdk.internal.services.init.b bVar;
        if (exc instanceof HttpRequestTimeoutException) {
            bVar = com.moloco.sdk.internal.services.init.b.f33411a;
        } else if (exc instanceof SSLHandshakeException) {
            bVar = com.moloco.sdk.internal.services.init.b.f33414d;
        } else if (exc instanceof SocketException) {
            bVar = com.moloco.sdk.internal.services.init.b.f33413c;
        } else if (exc instanceof UnknownHostException) {
            bVar = com.moloco.sdk.internal.services.init.b.f33412b;
        } else {
            bVar = com.moloco.sdk.internal.services.init.b.f33416f;
        }
        MolocoLogger.error$default(MolocoLogger.INSTANCE, "InitApi", "SDK Init failed with client exception", exc, false, 8, null);
        aVar.a(eVar.f(com.moloco.sdk.internal.client_metrics_data.c.f32057d.c(), "failure").f(com.moloco.sdk.internal.client_metrics_data.c.f32055b.c(), bVar.name()));
        return new g0.a(new i.a(bVar));
    }
}
