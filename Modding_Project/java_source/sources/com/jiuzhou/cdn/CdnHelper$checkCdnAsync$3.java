package com.jiuzhou.cdn;

import bc.e;
import com.jiuzhou.cdn.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: CdnHelper.kt */
@Metadata
@d(c = "com.jiuzhou.cdn.CdnHelper$checkCdnAsync$3", f = "CdnHelper.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes5.dex */
final class CdnHelper$checkCdnAsync$3 extends SuspendLambda implements Function2<a.C0348a, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f25541h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f25542i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CdnHelper$checkCdnAsync$3(c<? super CdnHelper$checkCdnAsync$3> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        CdnHelper$checkCdnAsync$3 cdnHelper$checkCdnAsync$3 = new CdnHelper$checkCdnAsync$3(cVar);
        cdnHelper$checkCdnAsync$3.f25542i = obj;
        return cdnHelper$checkCdnAsync$3;
    }

    @Override // kotlin.jvm.functions.Function2
    /* renamed from: i */
    public final Object invoke(a.C0348a c0348a, c<? super Unit> cVar) {
        return ((CdnHelper$checkCdnAsync$3) create(c0348a, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f25541h == 0) {
            f.b(obj);
            e.a aVar = e.f2600a;
            String j10 = CdnHelper.j();
            aVar.e(j10, "checkCdnAsync: ping result " + ((a.C0348a) this.f25542i));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
