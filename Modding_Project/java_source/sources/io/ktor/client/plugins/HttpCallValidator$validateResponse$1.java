package io.ktor.client.plugins;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpCallValidator.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpCallValidator", f = "HttpCallValidator.kt", l = {51}, m = "validateResponse")
/* loaded from: classes8.dex */
public final class HttpCallValidator$validateResponse$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58961h;

    /* renamed from: i  reason: collision with root package name */
    Object f58962i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58963j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpCallValidator f58964k;

    /* renamed from: l  reason: collision with root package name */
    int f58965l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpCallValidator$validateResponse$1(HttpCallValidator httpCallValidator, rs.c<? super HttpCallValidator$validateResponse$1> cVar) {
        super(cVar);
        this.f58964k = httpCallValidator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10;
        this.f58963j = obj;
        this.f58965l |= Integer.MIN_VALUE;
        f10 = this.f58964k.f(null, this);
        return f10;
    }
}
