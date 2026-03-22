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
@d(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {199}, m = "decode")
/* loaded from: classes2.dex */
public final class EngineInterceptor$decode$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f3979h;

    /* renamed from: i  reason: collision with root package name */
    Object f3980i;

    /* renamed from: j  reason: collision with root package name */
    Object f3981j;

    /* renamed from: k  reason: collision with root package name */
    Object f3982k;

    /* renamed from: l  reason: collision with root package name */
    Object f3983l;

    /* renamed from: m  reason: collision with root package name */
    Object f3984m;

    /* renamed from: n  reason: collision with root package name */
    Object f3985n;

    /* renamed from: o  reason: collision with root package name */
    Object f3986o;

    /* renamed from: p  reason: collision with root package name */
    int f3987p;

    /* renamed from: q  reason: collision with root package name */
    /* synthetic */ Object f3988q;

    /* renamed from: r  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor f3989r;

    /* renamed from: s  reason: collision with root package name */
    int f3990s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$decode$1(EngineInterceptor engineInterceptor, c<? super EngineInterceptor$decode$1> cVar) {
        super(cVar);
        this.f3989r = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object h10;
        this.f3988q = obj;
        this.f3990s |= Integer.MIN_VALUE;
        h10 = this.f3989r.h(null, null, null, null, null, null, this);
        return h10;
    }
}
