package androidx.privacysandbox.ads.adservices.appsetid;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppSetIdManagerImplCommon.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManagerImplCommon", f = "AppSetIdManagerImplCommon.kt", l = {38}, m = "getAppSetId$suspendImpl")
/* loaded from: classes2.dex */
public final class AppSetIdManagerImplCommon$getAppSetId$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AppSetIdManagerImplCommon this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppSetIdManagerImplCommon$getAppSetId$1(AppSetIdManagerImplCommon appSetIdManagerImplCommon, rs.c<? super AppSetIdManagerImplCommon$getAppSetId$1> cVar) {
        super(cVar);
        this.this$0 = appSetIdManagerImplCommon;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AppSetIdManagerImplCommon.getAppSetId$suspendImpl(this.this$0, this);
    }
}
