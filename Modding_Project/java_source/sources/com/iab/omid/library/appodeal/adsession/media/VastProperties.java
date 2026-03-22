package com.iab.omid.library.appodeal.adsession.media;

import com.iab.omid.library.appodeal.utils.d;
import com.iab.omid.library.appodeal.utils.g;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f22583a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f22584b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f22585c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f22586d;

    private VastProperties(boolean z10, Float f10, boolean z11, Position position) {
        this.f22583a = z10;
        this.f22584b = f10;
        this.f22585c = z11;
        this.f22586d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z10, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(false, null, z10, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f10, boolean z10, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f10), z10, position);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f22583a);
            if (this.f22583a) {
                jSONObject.put("skipOffset", this.f22584b);
            }
            jSONObject.put("autoPlay", this.f22585c);
            jSONObject.put("position", this.f22586d);
        } catch (JSONException e10) {
            d.a("VastProperties: JSON error", e10);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f22586d;
    }

    public Float getSkipOffset() {
        return this.f22584b;
    }

    public boolean isAutoPlay() {
        return this.f22585c;
    }

    public boolean isSkippable() {
        return this.f22583a;
    }
}
