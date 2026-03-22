package androidx.privacysandbox.ads.adservices.adselection;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdSelectionManagerImplCommon.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.privacysandbox.ads.adservices.adselection.AdSelectionManagerImplCommon", f = "AdSelectionManagerImplCommon.kt", l = {44}, m = "selectAds$suspendImpl")
/* loaded from: classes2.dex */
public final class AdSelectionManagerImplCommon$selectAds$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AdSelectionManagerImplCommon this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdSelectionManagerImplCommon$selectAds$1(AdSelectionManagerImplCommon adSelectionManagerImplCommon, rs.c<? super AdSelectionManagerImplCommon$selectAds$1> cVar) {
        super(cVar);
        this.this$0 = adSelectionManagerImplCommon;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return AdSelectionManagerImplCommon.selectAds$suspendImpl(this.this$0, (AdSelectionConfig) null, this);
    }
}
