package com.unity3d.ads.adplayer;

import android.view.ViewGroup;
import android.view.ViewParent;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidWebViewContainer.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$2", f = "AndroidWebViewContainer.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidWebViewContainer$destroy$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidWebViewContainer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidWebViewContainer$destroy$2(AndroidWebViewContainer androidWebViewContainer, c<? super AndroidWebViewContainer$destroy$2> cVar) {
        super(2, cVar);
        this.this$0 = androidWebViewContainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidWebViewContainer$destroy$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidWebViewContainer$destroy$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ViewGroup viewGroup;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            ViewParent parent = this.this$0.getWebView().getParent();
            if (parent instanceof ViewGroup) {
                viewGroup = (ViewGroup) parent;
            } else {
                viewGroup = null;
            }
            if (viewGroup != null) {
                viewGroup.removeView(this.this$0.getWebView());
            }
            this.this$0.getWebView().destroy();
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
