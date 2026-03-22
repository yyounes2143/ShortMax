package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.services.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n;
import io.ktor.client.HttpClient;
import io.ktor.client.plugins.HttpRequestRetry;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.client.statement.HttpStatement;
import java.io.File;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SourceDebugExtension({"SMAP\nLegacyMediaDownloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/LegacyMediaDownloader\n+ 2 builders.kt\nio/ktor/client/request/BuildersKt\n*L\n1#1,103:1\n332#2:104\n225#2:105\n99#2,2:106\n22#2:108\n*S KotlinDebug\n*F\n+ 1 LegacyMediaDownloader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/LegacyMediaDownloader\n*L\n81#1:104\n81#1:105\n81#1:106,2\n81#1:108\n*E\n"})
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final g0 f34112a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.internal.error.b f34113b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final HttpClient f34114c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final String f34115d;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.LegacyMediaDownloader$downloadMedia$2", f = "LegacyMediaDownloader.kt", l = {42, 52, 63, 63}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<gt.g0, rs.c<? super n.a>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34116h;

        /* renamed from: i  reason: collision with root package name */
        public Object f34117i;

        /* renamed from: j  reason: collision with root package name */
        public int f34118j;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ String f34120l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ File f34121m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, File file, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f34120l = str;
            this.f34121m = file;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super n.a> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f34120l, this.f34121m, cVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x015e A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x017e A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x017f  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0207  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0211  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0238  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r24) {
            /*
                Method dump skipped, instructions count: 609
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.d.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public d(@NotNull g0 connectivityService, @NotNull com.moloco.sdk.internal.error.b errorReportingService, @NotNull HttpClient httpClient) {
        Intrinsics.checkNotNullParameter(connectivityService, "connectivityService");
        Intrinsics.checkNotNullParameter(errorReportingService, "errorReportingService");
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        this.f34112a = connectivityService;
        this.f34113b = errorReportingService;
        this.f34114c = httpClient;
        this.f34115d = "LegacyMediaDownloader";
    }

    public static final long a(HttpRequestRetry.a delayMillis, int i10) {
        Intrinsics.checkNotNullParameter(delayMillis, "$this$delayMillis");
        return 100L;
    }

    public static final Unit h(final d dVar, HttpRequestRetry.Configuration retry) {
        Intrinsics.checkNotNullParameter(retry, "$this$retry");
        retry.u(10);
        HttpRequestRetry.Configuration.c(retry, false, new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.i
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Long.valueOf(d.a((HttpRequestRetry.a) obj, ((Integer) obj2).intValue()));
            }
        }, 1, null);
        retry.o(10, true);
        retry.s(10);
        retry.l(new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.k
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return d.i(d.this, (HttpRequestRetry.b) obj, (HttpRequestBuilder) obj2);
            }
        });
        return Unit.f60915a;
    }

    public static final Unit i(d dVar, HttpRequestRetry.b modifyRequest, HttpRequestBuilder it) {
        Intrinsics.checkNotNullParameter(modifyRequest, "$this$modifyRequest");
        Intrinsics.checkNotNullParameter(it, "it");
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        String str = dVar.f34115d;
        MolocoLogger.info$default(molocoLogger, str, "Retry attempt #" + modifyRequest.b() + " for " + modifyRequest.a().i(), null, false, 12, null);
        return Unit.f60915a;
    }

    @Nullable
    public Object d(@NotNull String str, @NotNull File file, @NotNull rs.c<? super n.a> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new a(str, file, null), cVar);
    }

    public final Object e(String str, rs.c<? super tr.c> cVar) {
        HttpClient httpClient = this.f34114c;
        HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
        io.ktor.client.request.a.b(httpRequestBuilder, str);
        io.ktor.client.plugins.c.i(httpRequestBuilder, new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return d.h(d.this, (HttpRequestRetry.Configuration) obj);
            }
        });
        httpRequestBuilder.n(wr.m.f70193b.a());
        return new HttpStatement(httpRequestBuilder, httpClient).d(cVar);
    }

    public final String g(boolean z10) {
        if (z10) {
            return "HTTP_REQUEST_COMPLETE_TIMEOUT";
        }
        return "HTTP_REQUEST_NOT_COMPLETE_TIMEOUT";
    }
}
