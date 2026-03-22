package com.inmobi.media;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.h8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2985h8 extends C2920d8 implements Iterable, KMappedMarker {
    public final ArrayList A;
    public int B;
    public final boolean C;
    public final boolean D;

    /* renamed from: x  reason: collision with root package name */
    public final int f24810x;

    /* renamed from: y  reason: collision with root package name */
    public long f24811y;

    /* renamed from: z  reason: collision with root package name */
    public final byte f24812z;

    public /* synthetic */ C2985h8(String str, String str2, C2937e8 c2937e8, String str3, JSONObject jSONObject, byte b10) {
        this(str, str2, c2937e8, new ArrayList(), str3, jSONObject, b10);
    }

    public final void a(C2920d8 child) {
        Intrinsics.checkNotNullParameter(child, "child");
        int i10 = this.B;
        if (i10 < this.f24810x) {
            this.B = i10 + 1;
            this.A.add(child);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C2969g8(this);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2985h8(String assetId, String assetName, C2937e8 assetStyle, List trackers, String interactionMode, JSONObject rawAssetJson, byte b10) {
        super(assetId, assetName, "CONTAINER", assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        Intrinsics.checkNotNullParameter(rawAssetJson, "rawAssetJson");
        this.f24810x = 16;
        this.f24812z = b10;
        this.A = new ArrayList();
        Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
        this.f24584g = interactionMode;
        this.C = StringsKt.G("root", assetName, true);
        this.D = StringsKt.G("card_scrollable", assetName, true);
    }
}
