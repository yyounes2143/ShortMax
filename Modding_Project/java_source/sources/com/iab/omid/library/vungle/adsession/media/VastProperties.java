package com.iab.omid.library.vungle.adsession.media;

import com.iab.omid.library.vungle.utils.d;
import com.iab.omid.library.vungle.utils.g;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f23247a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f23248b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f23249c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f23250d;

    private VastProperties(boolean z10, Float f10, boolean z11, Position position) {
        this.f23247a = z10;
        this.f23248b = f10;
        this.f23249c = z11;
        this.f23250d = position;
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
            jSONObject.put("skippable", this.f23247a);
            if (this.f23247a) {
                jSONObject.put("skipOffset", this.f23248b);
            }
            jSONObject.put("autoPlay", this.f23249c);
            jSONObject.put("position", this.f23250d);
        } catch (JSONException e10) {
            d.a("VastProperties: JSON error", e10);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f23250d;
    }

    public Float getSkipOffset() {
        return this.f23248b;
    }

    public boolean isAutoPlay() {
        return this.f23249c;
    }

    public boolean isSkippable() {
        return this.f23247a;
    }
}
