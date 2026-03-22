package com.unity3d.services.ads.offerwall;

import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import gt.g0;
import java.util.HashMap;
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
@d(c = "com.unity3d.services.ads.offerwall.OfferwallAdapterBridge$tapjoyPlacementListener$1$1", f = "OfferwallAdapterBridge.kt", l = {77, 83}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class OfferwallAdapterBridge$tapjoyPlacementListener$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ boolean $placementAvailable;
    final /* synthetic */ String $placementName;
    int label;
    final /* synthetic */ OfferwallAdapterBridge this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfferwallAdapterBridge$tapjoyPlacementListener$1$1(boolean z10, OfferwallAdapterBridge offerwallAdapterBridge, String str, c<? super OfferwallAdapterBridge$tapjoyPlacementListener$1$1> cVar) {
        super(2, cVar);
        this.$placementAvailable = z10;
        this.this$0 = offerwallAdapterBridge;
        this.$placementName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new OfferwallAdapterBridge$tapjoyPlacementListener$1$1(this.$placementAvailable, this.this$0, this.$placementName, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((OfferwallAdapterBridge$tapjoyPlacementListener$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        HashMap hashMap;
        kt.d dVar;
        String str;
        kt.d dVar2;
        String str2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            if (this.$placementAvailable) {
                dVar2 = this.this$0._offerwallEventFlow;
                OfferwallEvent offerwallEvent = OfferwallEvent.REQUEST_SUCCESS;
                String str3 = this.$placementName;
                if (str3 == null) {
                    str2 = "";
                } else {
                    str2 = str3;
                }
                OfferwallEventData offerwallEventData = new OfferwallEventData(offerwallEvent, str2, null, null, 12, null);
                this.label = 1;
                if (dVar2.emit(offerwallEventData, this) == f10) {
                    return f10;
                }
            } else {
                hashMap = this.this$0.placementsMap;
                String str4 = this.$placementName;
                if (str4 == null) {
                    str4 = "";
                }
                hashMap.remove(str4);
                dVar = this.this$0._offerwallEventFlow;
                OfferwallEvent offerwallEvent2 = OfferwallEvent.REQUEST_FAILED;
                String str5 = this.$placementName;
                if (str5 == null) {
                    str = "";
                } else {
                    str = str5;
                }
                OfferwallEventData offerwallEventData2 = new OfferwallEventData(offerwallEvent2, str, null, null, 12, null);
                this.label = 2;
                if (dVar.emit(offerwallEventData2, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
