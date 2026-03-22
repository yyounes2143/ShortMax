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
@d(c = "coil.fetch.HttpUriFetcher", f = "HttpUriFetcher.kt", l = {76, 105}, m = "fetch")
/* loaded from: classes2.dex */
public final class HttpUriFetcher$fetch$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f3965h;

    /* renamed from: i  reason: collision with root package name */
    Object f3966i;

    /* renamed from: j  reason: collision with root package name */
    Object f3967j;

    /* renamed from: k  reason: collision with root package name */
    /* synthetic */ Object f3968k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ HttpUriFetcher f3969l;

    /* renamed from: m  reason: collision with root package name */
    int f3970m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpUriFetcher$fetch$1(HttpUriFetcher httpUriFetcher, c<? super HttpUriFetcher$fetch$1> cVar) {
        super(cVar);
        this.f3969l = httpUriFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f3968k = obj;
        this.f3970m |= Integer.MIN_VALUE;
        return this.f3969l.a(this);
    }
}
