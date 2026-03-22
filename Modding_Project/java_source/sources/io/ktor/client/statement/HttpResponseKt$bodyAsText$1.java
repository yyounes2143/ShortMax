package io.ktor.client.statement;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpResponse.kt */
@Metadata
@d(c = "io.ktor.client.statement.HttpResponseKt", f = "HttpResponse.kt", l = {97}, m = "bodyAsText")
/* loaded from: classes8.dex */
public final class HttpResponseKt$bodyAsText$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59143h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59144i;

    /* renamed from: j  reason: collision with root package name */
    int f59145j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpResponseKt$bodyAsText$1(c<? super HttpResponseKt$bodyAsText$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59144i = obj;
        this.f59145j |= Integer.MIN_VALUE;
        return HttpResponseKt.b(null, null, this);
    }
}
