package com.inmobi.media;

import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.media.MediaEvents;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.y  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3247y {

    /* renamed from: a  reason: collision with root package name */
    public final AdEvents f25441a;

    /* renamed from: b  reason: collision with root package name */
    public final MediaEvents f25442b;

    public C3247y(AdSession adSession, String str) {
        Intrinsics.checkNotNullParameter(adSession, "adSession");
        if (Intrinsics.areEqual(str, "native_video_ad")) {
            this.f25442b = MediaEvents.createMediaEvents(adSession);
            this.f25441a = AdEvents.createAdEvents(adSession);
            return;
        }
        this.f25441a = AdEvents.createAdEvents(adSession);
    }
}
