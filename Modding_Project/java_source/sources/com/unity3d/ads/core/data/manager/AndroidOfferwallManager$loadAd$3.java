package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import com.unity3d.services.ads.offerwall.OfferwallEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidOfferwallManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$3", f = "AndroidOfferwallManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidOfferwallManager$loadAd$3 extends SuspendLambda implements Function2<OfferwallEventData, c<? super Boolean>, Object> {
    final /* synthetic */ String $placementName;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidOfferwallManager$loadAd$3(String str, c<? super AndroidOfferwallManager$loadAd$3> cVar) {
        super(2, cVar);
        this.$placementName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidOfferwallManager$loadAd$3 androidOfferwallManager$loadAd$3 = new AndroidOfferwallManager$loadAd$3(this.$placementName, cVar);
        androidOfferwallManager$loadAd$3.L$0 = obj;
        return androidOfferwallManager$loadAd$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull OfferwallEventData offerwallEventData, @Nullable c<? super Boolean> cVar) {
        return ((AndroidOfferwallManager$loadAd$3) create(offerwallEventData, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        boolean z10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            OfferwallEventData offerwallEventData = (OfferwallEventData) this.L$0;
            if (CollectionsKt.q(OfferwallEvent.REQUEST_SUCCESS, OfferwallEvent.REQUEST_FAILED).contains(offerwallEventData.getOfferwallEvent()) && Intrinsics.areEqual(offerwallEventData.getPlacementName(), this.$placementName)) {
                z10 = true;
            } else {
                z10 = false;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
