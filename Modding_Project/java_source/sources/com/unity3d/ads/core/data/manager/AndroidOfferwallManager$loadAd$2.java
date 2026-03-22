package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import com.unity3d.services.ads.offerwall.OfferwallAdapterBridge;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidOfferwallManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$2", f = "AndroidOfferwallManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidOfferwallManager$loadAd$2 extends SuspendLambda implements Function2<c<? super OfferwallEventData>, rs.c<? super Unit>, Object> {
    final /* synthetic */ String $placementName;
    int label;
    final /* synthetic */ AndroidOfferwallManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidOfferwallManager$loadAd$2(AndroidOfferwallManager androidOfferwallManager, String str, rs.c<? super AndroidOfferwallManager$loadAd$2> cVar) {
        super(2, cVar);
        this.this$0 = androidOfferwallManager;
        this.$placementName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new AndroidOfferwallManager$loadAd$2(this.this$0, this.$placementName, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        OfferwallAdapterBridge offerwallAdapterBridge;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            offerwallAdapterBridge = this.this$0.offerwallBridge;
            offerwallAdapterBridge.loadAd(this.$placementName);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super OfferwallEventData> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((AndroidOfferwallManager$loadAd$2) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
