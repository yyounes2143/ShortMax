package io.ktor.client.engine;

import io.ktor.client.engine.HttpClientEngine;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpClientEngine.kt */
@Metadata
@d(c = "io.ktor.client.engine.HttpClientEngine$DefaultImpls", f = "HttpClientEngine.kt", l = {91, 100}, m = "executeWithinCallContext")
/* loaded from: classes8.dex */
public final class HttpClientEngine$executeWithinCallContext$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58814h;

    /* renamed from: i  reason: collision with root package name */
    Object f58815i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58816j;

    /* renamed from: k  reason: collision with root package name */
    int f58817k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpClientEngine$executeWithinCallContext$1(c<? super HttpClientEngine$executeWithinCallContext$1> cVar) {
        super(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object e10;
        this.f58816j = obj;
        this.f58817k |= Integer.MIN_VALUE;
        e10 = HttpClientEngine.DefaultImpls.e(null, null, this);
        return e10;
    }
}
