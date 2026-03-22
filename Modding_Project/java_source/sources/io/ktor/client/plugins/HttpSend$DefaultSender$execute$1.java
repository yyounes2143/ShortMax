package io.ktor.client.plugins;

import io.ktor.client.plugins.HttpSend;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpSend.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpSend$DefaultSender", f = "HttpSend.kt", l = {138}, m = "execute")
/* loaded from: classes8.dex */
public final class HttpSend$DefaultSender$execute$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59075h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59076i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ HttpSend.DefaultSender f59077j;

    /* renamed from: k  reason: collision with root package name */
    int f59078k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpSend$DefaultSender$execute$1(HttpSend.DefaultSender defaultSender, rs.c<? super HttpSend$DefaultSender$execute$1> cVar) {
        super(cVar);
        this.f59077j = defaultSender;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59076i = obj;
        this.f59078k |= Integer.MIN_VALUE;
        return this.f59077j.a(null, this);
    }
}
