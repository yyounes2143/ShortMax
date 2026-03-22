package com.unity3d.services.ads.offerwall;

import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OfferwallAdapterBridge.kt */
@Metadata
@d(c = "com.unity3d.services.ads.offerwall.OfferwallAdapterBridge$tapjoyPlacementListener$1$5", f = "OfferwallAdapterBridge.kt", l = {140}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class OfferwallAdapterBridge$tapjoyPlacementListener$1$5 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ String $placementName;
    int label;
    final /* synthetic */ OfferwallAdapterBridge this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfferwallAdapterBridge$tapjoyPlacementListener$1$5(OfferwallAdapterBridge offerwallAdapterBridge, String str, c<? super OfferwallAdapterBridge$tapjoyPlacementListener$1$5> cVar) {
        super(2, cVar);
        this.this$0 = offerwallAdapterBridge;
        this.$placementName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new OfferwallAdapterBridge$tapjoyPlacementListener$1$5(this.this$0, this.$placementName, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((OfferwallAdapterBridge$tapjoyPlacementListener$1$5) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kt.d dVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            dVar = this.this$0._offerwallEventFlow;
            OfferwallEvent offerwallEvent = OfferwallEvent.ON_CONTENT_DISMISS;
            String str = this.$placementName;
            if (str == null) {
                str = "";
            }
            OfferwallEventData offerwallEventData = new OfferwallEventData(offerwallEvent, str, null, null, 12, null);
            this.label = 1;
            if (dVar.emit(offerwallEventData, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
