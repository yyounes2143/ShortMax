package com.unity3d.ads.adplayer.model;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: WebViewEvent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebViewEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,126:1\n26#2:127\n*S KotlinDebug\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnActivityDestroyedEvent\n*L\n30#1:127\n*E\n"})
/* loaded from: classes7.dex */
public final class OnActivityDestroyedEvent implements WebViewEvent {
    @NotNull
    private final String category = "ADVIEWER";
    @NotNull
    private final String name = "ON_ACTIVITY_DESTROY";
    @NotNull
    private final Object[] parameters = new Object[0];

    @Override // com.unity3d.ads.adplayer.model.WebViewEvent
    @NotNull
    public String getCategory() {
        return this.category;
    }

    @Override // com.unity3d.ads.adplayer.model.WebViewEvent
    @NotNull
    public String getName() {
        return this.name;
    }

    @Override // com.unity3d.ads.adplayer.model.WebViewEvent
    @NotNull
    public Object[] getParameters() {
        return this.parameters;
    }
}
