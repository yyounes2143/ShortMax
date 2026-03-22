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
@d(c = "io.ktor.client.statement.HttpStatement", f = "HttpStatement.kt", l = {47, 50, 52, 52}, m = "execute")
/* loaded from: classes8.dex */
public final class HttpStatement$execute$1<T> extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f59152h;

    /* renamed from: i  reason: collision with root package name */
    Object f59153i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59154j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpStatement f59155k;

    /* renamed from: l  reason: collision with root package name */
    int f59156l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpStatement$execute$1(HttpStatement httpStatement, c<? super HttpStatement$execute$1> cVar) {
        super(cVar);
        this.f59155k = httpStatement;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f59154j = obj;
        this.f59156l |= Integer.MIN_VALUE;
        return this.f59155k.c(null, this);
    }
}
