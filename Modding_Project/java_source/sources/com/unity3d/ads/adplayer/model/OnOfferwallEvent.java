package com.unity3d.ads.adplayer.model;

import com.unity3d.services.ads.offerwall.OfferwallEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: WebViewEvent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebViewEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnOfferwallEvent\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,126:1\n26#2:127\n*S KotlinDebug\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnOfferwallEvent\n*L\n58#1:127\n*E\n"})
/* loaded from: classes7.dex */
public final class OnOfferwallEvent implements WebViewEvent {
    @NotNull
    private final String category;
    @NotNull
    private final String name;
    @NotNull
    private final Object[] parameters;

    public OnOfferwallEvent(@NotNull OfferwallEvent offerwallEvent) {
        Intrinsics.checkNotNullParameter(offerwallEvent, "offerwallEvent");
        this.category = "OFFERWALL";
        this.name = offerwallEvent.name();
        this.parameters = new Object[0];
    }

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
