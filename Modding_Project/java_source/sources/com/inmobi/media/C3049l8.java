package com.inmobi.media;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.l8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3049l8 extends N8 {
    public /* synthetic */ C3049l8(String str, String str2, C3033k8 c3033k8, String str3, String str4) {
        this(str, str2, c3033k8, str3, new ArrayList(), str4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3049l8(String assetId, String assetName, C3033k8 assetStyle, String str, List trackers, String interactionMode) {
        super(assetId, assetName, "CTA", assetStyle, str);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.f24596s.addAll(trackers);
        Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
        this.f24584g = interactionMode;
    }
}
