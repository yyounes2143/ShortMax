package com.unity3d.ads.core.data.manager;

import android.content.Context;
import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.services.ads.gmascar.GMAScarAdapterBridge;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.banners.UnityBannerSize;
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
@d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$loadBannerAd$1", f = "AndroidScarManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidScarManager$loadBannerAd$1 extends SuspendLambda implements Function2<c<? super GmaEventData>, rs.c<? super Unit>, Object> {
    final /* synthetic */ UnityBannerSize $bannerSize;
    final /* synthetic */ BannerView $bannerView;
    final /* synthetic */ Context $context;
    final /* synthetic */ String $opportunityId;
    final /* synthetic */ nl.c $scarAdMetadata;
    int label;
    final /* synthetic */ AndroidScarManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidScarManager$loadBannerAd$1(AndroidScarManager androidScarManager, Context context, BannerView bannerView, String str, nl.c cVar, UnityBannerSize unityBannerSize, rs.c<? super AndroidScarManager$loadBannerAd$1> cVar2) {
        super(2, cVar2);
        this.this$0 = androidScarManager;
        this.$context = context;
        this.$bannerView = bannerView;
        this.$opportunityId = str;
        this.$scarAdMetadata = cVar;
        this.$bannerSize = unityBannerSize;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new AndroidScarManager$loadBannerAd$1(this.this$0, this.$context, this.$bannerView, this.$opportunityId, this.$scarAdMetadata, this.$bannerSize, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GMAScarAdapterBridge gMAScarAdapterBridge;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            gMAScarAdapterBridge = this.this$0.gmaBridge;
            gMAScarAdapterBridge.loadBanner(this.$context, this.$bannerView, this.$opportunityId, this.$scarAdMetadata, this.$bannerSize);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super GmaEventData> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((AndroidScarManager$loadBannerAd$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
