package com.bytedance.bdtracker;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.applog.log.LoggerImpl;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class w1 extends k1 {

    /* renamed from: e  reason: collision with root package name */
    public final Context f12494e;

    /* renamed from: f  reason: collision with root package name */
    public final p1 f12495f;

    public w1(Context context, p1 p1Var) {
        super(false, false);
        this.f12494e = context;
        this.f12495f = p1Var;
    }

    @Override // com.bytedance.bdtracker.k1
    public String a() {
        return "Gaid";
    }

    @Override // com.bytedance.bdtracker.k1
    public boolean a(JSONObject jSONObject) {
        if (this.f12495f.f12304c.isGaidEnabled()) {
            String googleAid = this.f12495f.f12304c.getGoogleAid();
            if (TextUtils.isEmpty(googleAid)) {
                try {
                    googleAid = q4.a(this.f12494e, this.f12495f);
                } catch (InterruptedException | ExecutionException | Exception unused) {
                } catch (TimeoutException e10) {
                    LoggerImpl.global().error("Query Gaid Timeout", e10, new Object[0]);
                }
            }
            r1.a(jSONObject, "google_aid", googleAid);
            return true;
        }
        return true;
    }
}
