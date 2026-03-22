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
@d(c = "io.ktor.client.statement.HttpResponseKt", f = "HttpResponse.kt", l = {97}, m = "bodyAsChannel")
/* loaded from: classes8.dex */
public final class HttpResponseKt$bodyAsChannel$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f59141h;

    /* renamed from: i  reason: collision with root package name */
    int f59142i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpResponseKt$bodyAsChannel$1(c<? super HttpResponseKt$bodyAsChannel$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59141h = obj;
        this.f59142i |= Integer.MIN_VALUE;
        return HttpResponseKt.a(null, this);
    }
}
