package coil.intercept;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EngineInterceptor.kt */
@Metadata
@d(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {165}, m = "fetch")
/* loaded from: classes2.dex */
public final class EngineInterceptor$fetch$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f4010h;

    /* renamed from: i  reason: collision with root package name */
    Object f4011i;

    /* renamed from: j  reason: collision with root package name */
    Object f4012j;

    /* renamed from: k  reason: collision with root package name */
    Object f4013k;

    /* renamed from: l  reason: collision with root package name */
    Object f4014l;

    /* renamed from: m  reason: collision with root package name */
    Object f4015m;

    /* renamed from: n  reason: collision with root package name */
    Object f4016n;

    /* renamed from: o  reason: collision with root package name */
    int f4017o;

    /* renamed from: p  reason: collision with root package name */
    /* synthetic */ Object f4018p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor f4019q;

    /* renamed from: r  reason: collision with root package name */
    int f4020r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$fetch$1(EngineInterceptor engineInterceptor, c<? super EngineInterceptor$fetch$1> cVar) {
        super(cVar);
        this.f4019q = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object j10;
        this.f4018p = obj;
        this.f4020r |= Integer.MIN_VALUE;
        j10 = this.f4019q.j(null, null, null, null, null, this);
        return j10;
    }
}
