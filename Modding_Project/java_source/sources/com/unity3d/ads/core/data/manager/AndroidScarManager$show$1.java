package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.services.ads.gmascar.GMAScarAdapterBridge;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidScarManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$show$1", f = "AndroidScarManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidScarManager$show$1 extends SuspendLambda implements Function2<c<? super GmaEventData>, rs.c<? super Unit>, Object> {
    final /* synthetic */ String $placementId;
    final /* synthetic */ String $queryId;
    int label;
    final /* synthetic */ AndroidScarManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidScarManager$show$1(AndroidScarManager androidScarManager, String str, String str2, rs.c<? super AndroidScarManager$show$1> cVar) {
        super(2, cVar);
        this.this$0 = androidScarManager;
        this.$placementId = str;
        this.$queryId = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new AndroidScarManager$show$1(this.this$0, this.$placementId, this.$queryId, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GMAScarAdapterBridge gMAScarAdapterBridge;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            gMAScarAdapterBridge = this.this$0.gmaBridge;
            gMAScarAdapterBridge.show(this.$placementId, this.$queryId);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super GmaEventData> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((AndroidScarManager$show$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
