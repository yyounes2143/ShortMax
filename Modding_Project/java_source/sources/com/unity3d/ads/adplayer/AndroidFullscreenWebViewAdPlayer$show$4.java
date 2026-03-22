package com.unity3d.ads.adplayer;

import com.unity3d.ads.core.data.datasource.VolumeSettingsChange;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidFullscreenWebViewAdPlayer.kt */
@Metadata
/* loaded from: classes7.dex */
/* synthetic */ class AndroidFullscreenWebViewAdPlayer$show$4 extends FunctionReferenceImpl implements Function2<VolumeSettingsChange, c<? super Unit>, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidFullscreenWebViewAdPlayer$show$4(Object obj) {
        super(2, obj, AndroidFullscreenWebViewAdPlayer.class, "handleVolumeSettingsChange", "handleVolumeSettingsChange(Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull VolumeSettingsChange volumeSettingsChange, @NotNull c<? super Unit> cVar) {
        Object handleVolumeSettingsChange;
        handleVolumeSettingsChange = ((AndroidFullscreenWebViewAdPlayer) this.receiver).handleVolumeSettingsChange(volumeSettingsChange, cVar);
        return handleVolumeSettingsChange;
    }
}
