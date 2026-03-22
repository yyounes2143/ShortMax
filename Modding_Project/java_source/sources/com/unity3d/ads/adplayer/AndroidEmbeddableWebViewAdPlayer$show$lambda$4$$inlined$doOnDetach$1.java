package com.unity3d.ads.adplayer;

import android.view.View;
import gt.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: View.kt */
@Metadata
@SourceDebugExtension({"SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnDetach$1\n+ 2 AndroidEmbeddableWebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/AndroidEmbeddableWebViewAdPlayer\n*L\n1#1,432:1\n105#2,4:433\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidEmbeddableWebViewAdPlayer$show$lambda$4$$inlined$doOnDetach$1 implements View.OnAttachStateChangeListener {
    final /* synthetic */ View $this_doOnDetach;
    final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

    public AndroidEmbeddableWebViewAdPlayer$show$lambda$4$$inlined$doOnDetach$1(View view, AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer) {
        this.$this_doOnDetach = view;
        this.this$0 = androidEmbeddableWebViewAdPlayer;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.$this_doOnDetach.removeOnAttachStateChangeListener(this);
        g.d(this.this$0.webViewAdPlayer.getScope(), null, null, new AndroidEmbeddableWebViewAdPlayer$show$3$2$1(this.this$0, null), 3, null);
    }
}
