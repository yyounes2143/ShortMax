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
@d(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {126}, m = "cleanup")
/* loaded from: classes8.dex */
public final class HttpStatement$cleanup$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59148h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59149i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ HttpStatement f59150j;

    /* renamed from: k  reason: collision with root package name */
    int f59151k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpStatement$cleanup$1(HttpStatement httpStatement, c<? super HttpStatement$cleanup$1> cVar) {
        super(cVar);
        this.f59150j = httpStatement;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59149i = obj;
        this.f59151k |= Integer.MIN_VALUE;
        return this.f59150j.b(null, this);
    }
}
