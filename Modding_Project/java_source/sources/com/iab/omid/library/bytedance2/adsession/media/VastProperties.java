package com.iab.omid.library.bytedance2.adsession.media;

import com.iab.omid.library.bytedance2.utils.d;
import com.iab.omid.library.bytedance2.utils.g;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class VastProperties {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f22719a;

    /* renamed from: b  reason: collision with root package name */
    private final Float f22720b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f22721c;

    /* renamed from: d  reason: collision with root package name */
    private final Position f22722d;

    private VastProperties(boolean z10, Float f10, boolean z11, Position position) {
        this.f22719a = z10;
        this.f22720b = f10;
        this.f22721c = z11;
        this.f22722d = position;
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
            jSONObject.put("skippable", this.f22719a);
            if (this.f22719a) {
                jSONObject.put("skipOffset", this.f22720b);
            }
            jSONObject.put("autoPlay", this.f22721c);
            jSONObject.put("position", this.f22722d);
        } catch (JSONException e10) {
            d.a("VastProperties: JSON error", e10);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f22722d;
    }

    public Float getSkipOffset() {
        return this.f22720b;
    }

    public boolean isAutoPlay() {
        return this.f22721c;
    }

    public boolean isSkippable() {
        return this.f22719a;
    }
}
