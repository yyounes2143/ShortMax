package com.bytedance.bdtracker;

import com.bytedance.applog.util.HardwareUtils;
import java.util.Collections;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    public final e0 f12007a;

    public f0(e0 e0Var) {
        this.f12007a = e0Var;
    }

    public void a(u3 u3Var) {
        String str;
        try {
            JSONObject jSONObject = u3Var.f12458o;
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            if (this.f12007a.f11956e.f12304c.isScreenOrientationEnabled()) {
                if (HardwareUtils.getScreenOrientation(this.f12007a.f11955d.f11914n) == 2) {
                    str = "landscape";
                } else {
                    str = "portrait";
                }
                jSONObject.put("$screen_orientation", str);
            }
            s sVar = this.f12007a.f11955d.B;
            if (sVar != null) {
                jSONObject.put("$longitude", sVar.f12377a);
                jSONObject.put("$latitude", sVar.f12378b);
                jSONObject.put("$geo_coordinate_system", sVar.f12379c);
            }
            if (jSONObject.length() > 0) {
                u3Var.f12458o = jSONObject;
            }
        } catch (Throwable th2) {
            this.f12007a.f11955d.D.error(4, Collections.singletonList("LifeHook"), "Do beforeEventSave failed", th2, new Object[0]);
        }
    }
}
