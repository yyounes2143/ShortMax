package io.ktor.client.statement;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpStatement.kt */
@Metadata
@d(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {108}, m = "executeUnsafe")
/* loaded from: classes8.dex */
public final class HttpStatement$executeUnsafe$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f59159h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HttpStatement f59160i;

    /* renamed from: j  reason: collision with root package name */
    int f59161j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpStatement$executeUnsafe$1(HttpStatement httpStatement, c<? super HttpStatement$executeUnsafe$1> cVar) {
        super(cVar);
        this.f59160i = httpStatement;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59159h = obj;
        this.f59161j |= Integer.MIN_VALUE;
        return this.f59160i.e(this);
    }
}
