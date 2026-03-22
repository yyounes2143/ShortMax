package com.bytedance.bdtracker;

import android.annotation.SuppressLint;
import android.os.Build;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class l1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final p1 f12195e;

    /* renamed from: f  reason: collision with root package name */
    public final d f12196f;

    public l1(d dVar, p1 p1Var) {
        super(true, false);
        this.f12196f = dVar;
        this.f12195e = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Build";
    }

    @Override // com.bytedance.bdtracker.k1
    @SuppressLint({"MissingPermission"})
    public boolean a(JSONObject jSONObject) {
        jSONObject.put("platform", "Android");
        jSONObject.put("sdk_lib", "Android");
        jSONObject.put("device_model", Build.MODEL);
        jSONObject.put("device_brand", Build.BRAND);
        jSONObject.put("device_manufacturer", Build.MANUFACTURER);
        jSONObject.put("cpu_abi", Build.CPU_ABI);
        jSONObject.put("sdk_target_version", 29);
        jSONObject.put("git_hash", "b2cddca");
        if (!y4.f12534c.b(new Object[0]).booleanValue() || !this.f12195e.f12304c.isHarmonyEnabled()) {
            jSONObject.put("os", "Android");
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, Build.VERSION.RELEASE);
            return true;
        }
        jSONObject.put("os", "Harmony");
        try {
            jSONObject.put("os_api", a5.a("hw_sc.build.os.apiversion"));
            jSONObject.put(TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, a5.a("hw_sc.build.platform.version"));
            return true;
        } catch (Throwable th2) {
            this.f12196f.D.error("loadHarmonyInfo failed", th2, new Object[0]);
            return true;
        }
    }
}
