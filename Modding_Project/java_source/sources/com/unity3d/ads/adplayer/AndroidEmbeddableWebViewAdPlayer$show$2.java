package com.unity3d.ads.adplayer;

import android.app.Activity;
import android.view.ViewGroup;
import com.unity3d.services.banners.BannerView;
import com.unity3d.services.core.misc.ViewUtilities;
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
/* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$2", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidEmbeddableWebViewAdPlayer$show$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ BannerView $bannerView;
    final /* synthetic */ Activity $context;
    int label;
    final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidEmbeddableWebViewAdPlayer$show$2(AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer, Activity activity, BannerView bannerView, c<? super AndroidEmbeddableWebViewAdPlayer$show$2> cVar) {
        super(2, cVar);
        this.this$0 = androidEmbeddableWebViewAdPlayer;
        this.$context = activity;
        this.$bannerView = bannerView;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidEmbeddableWebViewAdPlayer$show$2(this.this$0, this.$context, this.$bannerView, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidEmbeddableWebViewAdPlayer$show$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            this.this$0.getWebViewContainer().getWebView().setLayoutParams(new ViewGroup.LayoutParams((int) ViewUtilities.pxFromDp(this.$context, this.$bannerView.getSize().getWidth()), (int) ViewUtilities.pxFromDp(this.$context, this.$bannerView.getSize().getHeight())));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
