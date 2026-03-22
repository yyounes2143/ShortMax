package io.ktor.client.plugins;

import at.n;
import com.ss.ttm.player.MediaPlayer;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qr.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpRequestRetry.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpRequestRetry$intercept$1", f = "HttpRequestRetry.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX, 314}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpRequestRetry$intercept$1 extends SuspendLambda implements n<h, HttpRequestBuilder, rs.c<? super HttpClientCall>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f59054h;

    /* renamed from: i  reason: collision with root package name */
    Object f59055i;

    /* renamed from: j  reason: collision with root package name */
    Object f59056j;

    /* renamed from: k  reason: collision with root package name */
    Object f59057k;

    /* renamed from: l  reason: collision with root package name */
    Object f59058l;

    /* renamed from: m  reason: collision with root package name */
    int f59059m;

    /* renamed from: n  reason: collision with root package name */
    int f59060n;

    /* renamed from: o  reason: collision with root package name */
    int f59061o;

    /* renamed from: p  reason: collision with root package name */
    private /* synthetic */ Object f59062p;

    /* renamed from: q  reason: collision with root package name */
    /* synthetic */ Object f59063q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ HttpRequestRetry f59064r;

    /* renamed from: s  reason: collision with root package name */
    final /* synthetic */ HttpClient f59065s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpRequestRetry$intercept$1(HttpRequestRetry httpRequestRetry, HttpClient httpClient, rs.c<? super HttpRequestRetry$intercept$1> cVar) {
        super(3, cVar);
        this.f59064r = httpRequestRetry;
        this.f59065s = httpClient;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull h hVar, @NotNull HttpRequestBuilder httpRequestBuilder, @Nullable rs.c<? super HttpClientCall> cVar) {
        HttpRequestRetry$intercept$1 httpRequestRetry$intercept$1 = new HttpRequestRetry$intercept$1(this.f59064r, this.f59065s, cVar);
        httpRequestRetry$intercept$1.f59062p = hVar;
        httpRequestRetry$intercept$1.f59063q = httpRequestBuilder;
        return httpRequestRetry$intercept$1.invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x010d A[Catch: all -> 0x0078, TRY_ENTER, TryCatch #0 {all -> 0x0078, blocks: (B:34:0x010d, B:35:0x0121, B:38:0x013c, B:41:0x0147, B:11:0x0071), top: B:52:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0146 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0147 A[Catch: all -> 0x0078, TRY_LEAVE, TryCatch #0 {all -> 0x0078, blocks: (B:34:0x010d, B:35:0x0121, B:38:0x013c, B:41:0x0147, B:11:0x0071), top: B:52:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01cc A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x01ca -> B:7:0x0034). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.plugins.HttpRequestRetry$intercept$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
