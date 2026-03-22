package com.iab.omid.library.inmobi.adsession.media;

import com.iab.omid.library.inmobi.utils.d;
import com.iab.omid.library.inmobi.utils.g;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f22848a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f22849b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f22850c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f22851d;

    private VastProperties(boolean z10, Float f10, boolean z11, Position position) {
        this.f22848a = z10;
        this.f22849b = f10;
        this.f22850c = z11;
        this.f22851d = position;
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
            jSONObject.put("skippable", this.f22848a);
            if (this.f22848a) {
                jSONObject.put("skipOffset", this.f22849b);
            }
            jSONObject.put("autoPlay", this.f22850c);
            jSONObject.put("position", this.f22851d);
        } catch (JSONException e10) {
            d.a("VastProperties: JSON error", e10);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f22851d;
    }

    public Float getSkipOffset() {
        return this.f22849b;
    }

    public boolean isAutoPlay() {
        return this.f22850c;
    }

    public boolean isSkippable() {
        return this.f22848a;
    }
}
