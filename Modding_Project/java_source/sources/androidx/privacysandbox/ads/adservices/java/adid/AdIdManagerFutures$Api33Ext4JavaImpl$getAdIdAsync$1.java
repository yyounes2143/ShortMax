package androidx.privacysandbox.ads.adservices.java.adid;

import androidx.privacysandbox.ads.adservices.adid.AdId;
import androidx.privacysandbox.ads.adservices.adid.AdIdManager;
import androidx.privacysandbox.ads.adservices.java.adid.AdIdManagerFutures;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: AdIdManagerFutures.kt */
@Metadata
@d(c = "androidx.privacysandbox.ads.adservices.java.adid.AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1", f = "AdIdManagerFutures.kt", l = {54}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1 extends SuspendLambda implements Function2<g0, c<? super AdId>, Object> {
    int label;
    final /* synthetic */ AdIdManagerFutures.Api33Ext4JavaImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(AdIdManagerFutures.Api33Ext4JavaImpl api33Ext4JavaImpl, c<? super AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1> cVar) {
        super(2, cVar);
        this.this$0 = api33Ext4JavaImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super AdId> cVar) {
        return ((AdIdManagerFutures$Api33Ext4JavaImpl$getAdIdAsync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AdIdManager adIdManager;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            adIdManager = this.this$0.mAdIdManager;
            this.label = 1;
            obj = adIdManager.getAdId(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
