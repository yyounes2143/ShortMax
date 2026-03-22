package androidx.privacysandbox.ads.adservices.adid;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdIdManagerImplCommon.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon", f = "AdIdManagerImplCommon.kt", l = {40}, m = "getAdId$suspendImpl")
/* loaded from: classes2.dex */
public final class AdIdManagerImplCommon$getAdId$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdIdManagerImplCommon this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdIdManagerImplCommon$getAdId$1(AdIdManagerImplCommon adIdManagerImplCommon, rs.c<? super AdIdManagerImplCommon$getAdId$1> cVar) {
        super(cVar);
        this.this$0 = adIdManagerImplCommon;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AdIdManagerImplCommon.getAdId$suspendImpl(this.this$0, this);
    }
}
