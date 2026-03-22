package com.startshorts.androidplayer.bean.purchase;

import com.startshorts.androidplayer.utils.CoroutineUtil;
import df.e;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* compiled from: AcknowledgePurchaseResult.kt */
@Metadata
/* loaded from: classes6.dex */
public final class AcknowledgePurchaseResult$showFloatViewManagers$1 implements e.c {
    final /* synthetic */ List<e> $managers;
    final /* synthetic */ AcknowledgePurchaseResult this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AcknowledgePurchaseResult$showFloatViewManagers$1(AcknowledgePurchaseResult acknowledgePurchaseResult, List<e> list) {
        this.this$0 = acknowledgePurchaseResult;
        this.$managers = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onDismiss$lambda$0(AcknowledgePurchaseResult acknowledgePurchaseResult, List list) {
        acknowledgePurchaseResult.showFloatViewManagers(list);
        return Unit.f60915a;
    }

    @Override // df.e.c
    public void onDismiss() {
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        final AcknowledgePurchaseResult acknowledgePurchaseResult = this.this$0;
        final List<e> list = this.$managers;
        CoroutineUtil.g(coroutineUtil, 500L, null, new Function0() { // from class: com.startshorts.androidplayer.bean.purchase.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit onDismiss$lambda$0;
                onDismiss$lambda$0 = AcknowledgePurchaseResult$showFloatViewManagers$1.onDismiss$lambda$0(AcknowledgePurchaseResult.this, list);
                return onDismiss$lambda$0;
            }
        }, 2, null);
    }
}
