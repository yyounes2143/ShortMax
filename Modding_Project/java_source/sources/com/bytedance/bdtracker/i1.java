package com.bytedance.bdtracker;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class i1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12052e;

    public i1(Context context) {
        super(true, false);
        this.f12052e = context;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "AppKey";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        try {
            Bundle bundle = this.f12052e.getPackageManager().getApplicationInfo(this.f12052e.getPackageName(), 128).metaData;
            if (bundle == null || TextUtils.isEmpty("")) {
                return true;
            }
            jSONObject.put("appkey", bundle.getString(""));
            return true;
        } catch (Throwable th2) {
            LoggerImpl.global().error("Load app key failed.", th2, new Object[0]);
            return true;
        }
    }
}
