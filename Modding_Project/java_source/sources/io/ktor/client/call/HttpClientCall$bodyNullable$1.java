package io.ktor.client.call;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpClientCall.kt */
@Metadata
@d(c = "io.ktor.client.call.HttpClientCall", f = "HttpClientCall.kt", l = {86, 89}, m = "bodyNullable")
/* loaded from: classes8.dex */
public final class HttpClientCall$bodyNullable$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58796h;

    /* renamed from: i  reason: collision with root package name */
    Object f58797i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58798j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpClientCall f58799k;

    /* renamed from: l  reason: collision with root package name */
    int f58800l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpClientCall$bodyNullable$1(HttpClientCall httpClientCall, c<? super HttpClientCall$bodyNullable$1> cVar) {
        super(cVar);
        this.f58799k = httpClientCall;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f58798j = obj;
        this.f58800l |= Integer.MIN_VALUE;
        return this.f58799k.a(null, this);
    }
}
