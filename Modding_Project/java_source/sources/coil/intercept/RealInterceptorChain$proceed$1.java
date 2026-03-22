package coil.intercept;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealInterceptorChain.kt */
@Metadata
@d(c = "coil.intercept.RealInterceptorChain", f = "RealInterceptorChain.kt", l = {25}, m = "proceed")
/* loaded from: classes2.dex */
public final class RealInterceptorChain$proceed$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f4053h;

    /* renamed from: i  reason: collision with root package name */
    Object f4054i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f4055j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RealInterceptorChain f4056k;

    /* renamed from: l  reason: collision with root package name */
    int f4057l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealInterceptorChain$proceed$1(RealInterceptorChain realInterceptorChain, c<? super RealInterceptorChain$proceed$1> cVar) {
        super(cVar);
        this.f4056k = realInterceptorChain;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f4055j = obj;
        this.f4057l |= Integer.MIN_VALUE;
        return this.f4056k.f(null, this);
    }
}
