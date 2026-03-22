package com.unity3d.ads.adplayer;

import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageEventInfo;
import gt.d0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandler.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,110:1\n76#2,2:111\n*E\n"})
/* loaded from: classes7.dex */
public final class WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1 extends kotlin.coroutines.a implements d0 {
    final /* synthetic */ WebViewAdPlayer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1(d0.b bVar, WebViewAdPlayer webViewAdPlayer) {
        super(bVar);
        this.this$0 = webViewAdPlayer;
    }

    @Override // gt.d0
    public void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        Function1<? super StorageEventInfo, Unit> function1;
        Storage.Companion companion = Storage.Companion;
        function1 = this.this$0.storageEventCallback;
        companion.removeStorageEventCallback(function1);
    }
}
