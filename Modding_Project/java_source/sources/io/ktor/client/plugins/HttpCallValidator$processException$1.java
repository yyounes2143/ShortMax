package io.ktor.client.plugins;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpCallValidator.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpCallValidator", f = "HttpCallValidator.kt", l = {58, 59}, m = "processException")
/* loaded from: classes8.dex */
public final class HttpCallValidator$processException$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58955h;

    /* renamed from: i  reason: collision with root package name */
    Object f58956i;

    /* renamed from: j  reason: collision with root package name */
    Object f58957j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f58958k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ HttpCallValidator f58959l;

    /* renamed from: m  reason: collision with root package name */
    int f58960m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpCallValidator$processException$1(HttpCallValidator httpCallValidator, rs.c<? super HttpCallValidator$processException$1> cVar) {
        super(cVar);
        this.f58959l = httpCallValidator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object e10;
        this.f58958k = obj;
        this.f58960m |= Integer.MIN_VALUE;
        e10 = this.f58959l.e(null, null, this);
        return e10;
    }
}
