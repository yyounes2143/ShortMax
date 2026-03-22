package com.iab.omid.library.unity3d.adsession.media;

import com.iab.omid.library.unity3d.utils.d;
import com.iab.omid.library.unity3d.utils.g;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f23120a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f23121b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f23122c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f23123d;

    private VastProperties(boolean z10, Float f10, boolean z11, Position position) {
        this.f23120a = z10;
        this.f23121b = f10;
        this.f23122c = z11;
        this.f23123d = position;
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
            jSONObject.put("skippable", this.f23120a);
            if (this.f23120a) {
                jSONObject.put("skipOffset", this.f23121b);
            }
            jSONObject.put("autoPlay", this.f23122c);
            jSONObject.put("position", this.f23123d);
        } catch (JSONException e10) {
            d.a("VastProperties: JSON error", e10);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f23123d;
    }

    public Float getSkipOffset() {
        return this.f23121b;
    }

    public boolean isAutoPlay() {
        return this.f23122c;
    }

    public boolean isSkippable() {
        return this.f23120a;
    }
}
