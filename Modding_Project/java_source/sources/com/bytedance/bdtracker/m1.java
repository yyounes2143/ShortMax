package com.bytedance.bdtracker;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.bdtracker.l0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class m1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final d f12210e;

    public m1(@NonNull d dVar) {
        super(true, false);
        this.f12210e = dVar;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "business_conversion_id";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        try {
            a("com.bytedance.applog.convert.ClickIdProvider", jSONObject);
        } catch (Throwable th2) {
            this.f12210e.D.debug("ClickId find error", th2);
        }
        try {
            a("com.bytedance.applog.convert.IPIDProvider", jSONObject);
            return true;
        } catch (Throwable th3) {
            this.f12210e.D.debug("IPID find error", th3);
            return true;
        }
    }

    public final void a(String str, JSONObject jSONObject) {
        Class<?> b10 = l0.b.b(str);
        if (b10 == null) {
            IAppLogLogger iAppLogLogger = this.f12210e.D;
            iAppLogLogger.debug("No " + str + " class, get id error", new Object[0]);
            return;
        }
        try {
            Method declaredMethod = b10.getDeclaredMethod("getIdAndSetIntoJson", JSONObject.class, Context.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(b10.newInstance(), jSONObject, this.f12210e.f11914n);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            e10.printStackTrace();
        }
    }
}
