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
@d(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {122, 126, 144}, m = "execute")
/* loaded from: classes2.dex */
public final class EngineInterceptor$execute$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f3991h;

    /* renamed from: i  reason: collision with root package name */
    Object f3992i;

    /* renamed from: j  reason: collision with root package name */
    Object f3993j;

    /* renamed from: k  reason: collision with root package name */
    Object f3994k;

    /* renamed from: l  reason: collision with root package name */
    Object f3995l;

    /* renamed from: m  reason: collision with root package name */
    Object f3996m;

    /* renamed from: n  reason: collision with root package name */
    Object f3997n;

    /* renamed from: o  reason: collision with root package name */
    Object f3998o;

    /* renamed from: p  reason: collision with root package name */
    /* synthetic */ Object f3999p;

    /* renamed from: q  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor f4000q;

    /* renamed from: r  reason: collision with root package name */
    int f4001r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$execute$1(EngineInterceptor engineInterceptor, c<? super EngineInterceptor$execute$1> cVar) {
        super(cVar);
        this.f4000q = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object i10;
        this.f3999p = obj;
        this.f4001r |= Integer.MIN_VALUE;
        i10 = this.f4000q.i(null, null, null, null, this);
        return i10;
    }
}
