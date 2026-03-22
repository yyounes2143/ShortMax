package coil.fetch;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpUriFetcher.kt */
@Metadata
@d(c = "coil.fetch.HttpUriFetcher", f = "HttpUriFetcher.kt", l = {223}, m = "executeNetworkRequest")
/* loaded from: classes2.dex */
public final class HttpUriFetcher$executeNetworkRequest$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f3962h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HttpUriFetcher f3963i;

    /* renamed from: j  reason: collision with root package name */
    int f3964j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpUriFetcher$executeNetworkRequest$1(HttpUriFetcher httpUriFetcher, c<? super HttpUriFetcher$executeNetworkRequest$1> cVar) {
        super(cVar);
        this.f3963i = httpUriFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object c10;
        this.f3962h = obj;
        this.f3964j |= Integer.MIN_VALUE;
        c10 = this.f3963i.c(null, this);
        return c10;
    }
}
