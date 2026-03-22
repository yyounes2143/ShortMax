package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.ads.core.domain.scar.ScarTimeHackFixer;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidScarManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$loadAd$2", f = "AndroidScarManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidScarManager$loadAd$2 extends SuspendLambda implements Function2<c<? super GmaEventData>, rs.c<? super Unit>, Object> {
    final /* synthetic */ String $adString;
    final /* synthetic */ String $adUnitId;
    final /* synthetic */ boolean $canSkip;
    final /* synthetic */ String $placementId;
    final /* synthetic */ String $queryId;
    final /* synthetic */ int $videoLength;
    int label;
    final /* synthetic */ AndroidScarManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidScarManager$loadAd$2(AndroidScarManager androidScarManager, boolean z10, String str, String str2, String str3, String str4, int i10, rs.c<? super AndroidScarManager$loadAd$2> cVar) {
        super(2, cVar);
        this.this$0 = androidScarManager;
        this.$canSkip = z10;
        this.$placementId = str;
        this.$queryId = str2;
        this.$adString = str3;
        this.$adUnitId = str4;
        this.$videoLength = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new AndroidScarManager$loadAd$2(this.this$0, this.$canSkip, this.$placementId, this.$queryId, this.$adString, this.$adUnitId, this.$videoLength, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GMAScarAdapterBridge gMAScarAdapterBridge;
        ScarTimeHackFixer scarTimeHackFixer;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            gMAScarAdapterBridge = this.this$0.gmaBridge;
            boolean z10 = this.$canSkip;
            String str = this.$placementId;
            String str2 = this.$queryId;
            String str3 = this.$adString;
            String str4 = this.$adUnitId;
            scarTimeHackFixer = this.this$0.scarTimeHackFixer;
            gMAScarAdapterBridge.load(z10, str, str2, str3, str4, scarTimeHackFixer.invoke(this.$videoLength));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super GmaEventData> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((AndroidScarManager$loadAd$2) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
