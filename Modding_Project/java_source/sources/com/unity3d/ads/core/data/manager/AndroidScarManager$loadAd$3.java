package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.scar.adapter.common.GMAEvent;
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
/* compiled from: AndroidScarManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$3", f = "AndroidScarManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidScarManager$loadAd$3 extends SuspendLambda implements Function2<GmaEventData, c<? super Boolean>, Object> {
    final /* synthetic */ String $placementId;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidScarManager$loadAd$3(String str, c<? super AndroidScarManager$loadAd$3> cVar) {
        super(2, cVar);
        this.$placementId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidScarManager$loadAd$3 androidScarManager$loadAd$3 = new AndroidScarManager$loadAd$3(this.$placementId, cVar);
        androidScarManager$loadAd$3.L$0 = obj;
        return androidScarManager$loadAd$3;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull GmaEventData gmaEventData, @Nullable c<? super Boolean> cVar) {
        return ((AndroidScarManager$loadAd$3) create(gmaEventData, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        boolean z10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            GmaEventData gmaEventData = (GmaEventData) this.L$0;
            if ((CollectionsKt.q(GMAEvent.AD_LOADED, GMAEvent.LOAD_ERROR).contains(gmaEventData.getGmaEvent()) && Intrinsics.areEqual(gmaEventData.getPlacementId(), this.$placementId)) || CollectionsKt.q(GMAEvent.METHOD_ERROR, GMAEvent.SCAR_NOT_PRESENT, GMAEvent.INTERNAL_LOAD_ERROR).contains(gmaEventData.getGmaEvent())) {
                z10 = true;
            } else {
                z10 = false;
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
