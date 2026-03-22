package com.unity3d.ads.adplayer.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: WebViewEvent.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebViewEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnWebRequestComplete\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,126:1\n37#2,2:127\n*S KotlinDebug\n*F\n+ 1 WebViewEvent.kt\ncom/unity3d/ads/adplayer/model/OnWebRequestComplete\n*L\n116#1:127,2\n*E\n"})
/* loaded from: classes7.dex */
public final class OnWebRequestComplete implements WebViewEvent {
    @NotNull
    private final String category;
    @NotNull
    private final String name;
    @NotNull
    private final Object[] parameters;

    public OnWebRequestComplete(@NotNull List<? extends Object> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.category = "REQUEST";
        this.name = "COMPLETE";
        this.parameters = value.toArray(new Object[0]);
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
