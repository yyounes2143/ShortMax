package com.inmobi.media;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public final class W8 extends C2976h {

    /* renamed from: a  reason: collision with root package name */
    public final String f24330a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24331b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24332c;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList f24333d;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayList f24334e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W8(C2976h ad2, JSONArray jSONArray, String videoUrl, String videoDuration, String str, ArrayList trackers, ArrayList companionAds) {
        super(ad2, jSONArray);
        Intrinsics.checkNotNullParameter(ad2, "ad");
        Intrinsics.checkNotNullParameter(videoUrl, "videoUrl");
        Intrinsics.checkNotNullParameter(videoDuration, "videoDuration");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(companionAds, "companionAds");
        this.f24330a = videoUrl;
        this.f24331b = videoDuration;
        this.f24332c = str;
        this.f24333d = trackers;
        this.f24334e = companionAds;
    }
}
