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
@d(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {73}, m = "intercept")
/* loaded from: classes2.dex */
public final class EngineInterceptor$intercept$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f4021h;

    /* renamed from: i  reason: collision with root package name */
    Object f4022i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f4023j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor f4024k;

    /* renamed from: l  reason: collision with root package name */
    int f4025l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$1(EngineInterceptor engineInterceptor, c<? super EngineInterceptor$intercept$1> cVar) {
        super(cVar);
        this.f4024k = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f4023j = obj;
        this.f4025l |= Integer.MIN_VALUE;
        return this.f4024k.a(null, this);
    }
}
