package com.unity3d.ads.adplayer;

import com.unity3d.ads.core.data.datasource.LifecycleDataSource;
import gt.g0;
import java.util.Map;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$3$1", f = "AndroidEmbeddableWebViewAdPlayer.kt", l = {97, 98}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidEmbeddableWebViewAdPlayer$show$3$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ ShowOptions $showOptions;
    int label;
    final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidEmbeddableWebViewAdPlayer$show$3$1(AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer, ShowOptions showOptions, c<? super AndroidEmbeddableWebViewAdPlayer$show$3$1> cVar) {
        super(2, cVar);
        this.this$0 = androidEmbeddableWebViewAdPlayer;
        this.$showOptions = showOptions;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidEmbeddableWebViewAdPlayer$show$3$1(this.this$0, this.$showOptions, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidEmbeddableWebViewAdPlayer$show$3$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        LifecycleDataSource lifecycleDataSource;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                f.b(obj);
                throw new KotlinNothingValueException();
            }
            f.b(obj);
        } else {
            f.b(obj);
            WebViewAdPlayer webViewAdPlayer = this.this$0.webViewAdPlayer;
            Map<String, Object> unityAdsShowOptions = ((AndroidShowOptions) this.$showOptions).getUnityAdsShowOptions();
            this.label = 1;
            if (webViewAdPlayer.requestShow(unityAdsShowOptions, this) == f10) {
                return f10;
            }
        }
        lifecycleDataSource = this.this$0.lifecycleDataSource;
        i<Boolean> appActive = lifecycleDataSource.getAppActive();
        final AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer = this.this$0;
        kt.c<? super Boolean> cVar = new kt.c() { // from class: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$show$3$1.1
            @Override // kt.c
            public /* bridge */ /* synthetic */ Object emit(Object obj2, c cVar2) {
                return emit(((Boolean) obj2).booleanValue(), cVar2);
            }

            @Nullable
            public final Object emit(boolean z10, @NotNull c<? super Unit> cVar2) {
                Object sendFocusChange = AndroidEmbeddableWebViewAdPlayer.this.webViewAdPlayer.sendFocusChange(z10, cVar2);
                return sendFocusChange == kotlin.coroutines.intrinsics.a.f() ? sendFocusChange : Unit.f60915a;
            }
        };
        this.label = 2;
        if (appActive.collect(cVar, this) == f10) {
            return f10;
        }
        throw new KotlinNothingValueException();
    }
}
