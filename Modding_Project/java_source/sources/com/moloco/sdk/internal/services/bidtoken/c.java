package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.BidToken$BidTokenRequestV3;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import io.ktor.client.HttpClient;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nBidTokenApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BidTokenApi.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenApiImpl\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n+ 3 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 4 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n+ 5 HttpClientCall.kt\nio/ktor/client/call/HttpClientCallKt\n*L\n1#1,175:1\n343#2:176\n233#2:177\n109#2,2:195\n22#2:197\n16#3,4:178\n21#3,10:185\n17#4,3:182\n17#4,3:199\n156#5:198\n*S KotlinDebug\n*F\n+ 1 BidTokenApi.kt\ncom/moloco/sdk/internal/services/bidtoken/BidTokenApiImpl\n*L\n137#1:176\n137#1:177\n137#1:195,2\n137#1:197\n143#1:178,4\n143#1:185,10\n143#1:182,3\n159#1:199,3\n159#1:198\n*E\n"})
/* loaded from: classes6.dex */
public final class c implements e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f33120a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final HttpClient f33121b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final l f33122c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final j f33123d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final String f33124e;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.BidTokenApiImpl$fetchBidToken$2", f = "BidTokenApi.kt", l = {80, 127}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<n, com.moloco.sdk.internal.q>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f33125h;

        /* renamed from: i  reason: collision with root package name */
        public Object f33126i;

        /* renamed from: j  reason: collision with root package name */
        public Object f33127j;

        /* renamed from: k  reason: collision with root package name */
        public Object f33128k;

        /* renamed from: l  reason: collision with root package name */
        public int f33129l;

        /* renamed from: m  reason: collision with root package name */
        public int f33130m;

        /* renamed from: n  reason: collision with root package name */
        public int f33131n;

        /* renamed from: o  reason: collision with root package name */
        public int f33132o;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.acm.recorder.a f33134q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.moloco.sdk.acm.recorder.a aVar, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f33134q = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<n, com.moloco.sdk.internal.q>> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f33134q, cVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0206  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0251  */
        /* JADX WARN: Type inference failed for: r10v1, types: [T, java.lang.Object, com.moloco.sdk.internal.g0] */
        /* JADX WARN: Type inference failed for: r5v0, types: [T, com.moloco.sdk.internal.g0$a] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x01fb -> B:30:0x01fe). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r24) {
            /*
                Method dump skipped, instructions count: 596
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.c.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.services.bidtoken.BidTokenApiImpl", f = "BidTokenApi.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, 198}, m = "fetchBidTokenWork")
    /* loaded from: classes6.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f33135h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f33136i;

        /* renamed from: k  reason: collision with root package name */
        public int f33138k;

        public b(rs.c<? super b> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f33136i = obj;
            this.f33138k |= Integer.MIN_VALUE;
            return c.this.d(null, this);
        }
    }

    public c(@NotNull String sdkVersion, @NotNull HttpClient httpClient, @NotNull l httpRequestInfo, @NotNull j deviceRequestInfo) {
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(httpRequestInfo, "httpRequestInfo");
        Intrinsics.checkNotNullParameter(deviceRequestInfo, "deviceRequestInfo");
        this.f33120a = sdkVersion;
        this.f33121b = httpClient;
        this.f33122c = httpRequestInfo;
        this.f33123d = deviceRequestInfo;
        this.f33124e = "BidTokenApi";
    }

    public static final Unit e(c cVar, wr.g headers) {
        Intrinsics.checkNotNullParameter(headers, "$this$headers");
        com.moloco.sdk.internal.r.b(headers, cVar.f33120a, cVar.f33123d.a(), null, 4, null);
        return Unit.f60915a;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.e
    @Nullable
    public Object a(@NotNull com.moloco.sdk.acm.recorder.a aVar, @NotNull rs.c<? super com.moloco.sdk.internal.g0<n, com.moloco.sdk.internal.q>> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new a(aVar, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ec A[Catch: InvalidProtocolBufferException -> 0x0030, TRY_ENTER, TryCatch #4 {InvalidProtocolBufferException -> 0x0030, blocks: (B:12:0x002b, B:52:0x010d, B:53:0x0137, B:54:0x013e, B:48:0x00ec), top: B:64:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010d A[Catch: InvalidProtocolBufferException -> 0x0030, TryCatch #4 {InvalidProtocolBufferException -> 0x0030, blocks: (B:12:0x002b, B:52:0x010d, B:53:0x0137, B:54:0x013e, B:48:0x00ec), top: B:64:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0137 A[Catch: InvalidProtocolBufferException -> 0x0030, TryCatch #4 {InvalidProtocolBufferException -> 0x0030, blocks: (B:12:0x002b, B:52:0x010d, B:53:0x0137, B:54:0x013e, B:48:0x00ec), top: B:64:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0165  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object d(java.lang.String r10, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.services.bidtoken.n, com.moloco.sdk.internal.q>> r11) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.internal.services.bidtoken.c.d(java.lang.String, rs.c):java.lang.Object");
    }

    public final byte[] f() {
        byte[] byteArray = BidToken$BidTokenRequestV3.newBuilder().build().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }
}
