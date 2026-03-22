package com.inmobi.media;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.u8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3192u8 extends C2920d8 {
    public /* synthetic */ C3192u8(String str, String str2, C2937e8 c2937e8, String str3, String str4, JSONObject jSONObject) {
        this(str, str2, c2937e8, str3, new ArrayList(), str4, jSONObject);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3192u8(String assetId, String assetName, C2937e8 assetStyle, String url, List trackers, String interactionMode, JSONObject jSONObject) {
        super(assetId, assetName, "IMAGE", assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        this.f24582e = url;
        if (jSONObject != null) {
            Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
            this.f24584g = interactionMode;
        }
    }
}
