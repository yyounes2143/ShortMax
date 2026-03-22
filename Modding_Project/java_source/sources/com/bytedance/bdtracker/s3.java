package com.bytedance.bdtracker;

import android.app.Application;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.widget.Toast;
import com.bytedance.applog.IPicker;
import com.bytedance.applog.simulate.SimulateLaunchActivity;
import com.bytedance.bdtracker.l0;
import com.ss.texturerender.TextureRenderKeys;
import java.util.Collections;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class s3 extends AsyncTask<Void, Void, JSONObject> {

    /* renamed from: a  reason: collision with root package name */
    public int f12384a;

    /* renamed from: b  reason: collision with root package name */
    public int f12385b;

    /* renamed from: c  reason: collision with root package name */
    public String f12386c;

    /* renamed from: d  reason: collision with root package name */
    public String f12387d;

    /* renamed from: e  reason: collision with root package name */
    public String f12388e;

    /* renamed from: f  reason: collision with root package name */
    public String f12389f;

    /* renamed from: g  reason: collision with root package name */
    public final d f12390g;

    public s3(d dVar) {
        String str;
        this.f12390g = dVar;
        dVar.f11911k.f12323a = SimulateLaunchActivity.entryUrlPrefix;
        this.f12389f = SimulateLaunchActivity.entryType;
        this.f12386c = SimulateLaunchActivity.entryQrParam;
        this.f12388e = dVar.getDid();
        String str2 = (String) dVar.getHeaderValue("resolution", null, String.class);
        if (l0.b.d(str2)) {
            String[] split = str2.split(TextureRenderKeys.KEY_IS_X);
            this.f12385b = Integer.parseInt(split[0]);
            this.f12384a = Integer.parseInt(split[1]);
        }
        PackageInfo a10 = u4.a(dVar.f11914n, dVar.f11914n.getApplicationInfo().packageName, 0);
        if (a10 != null) {
            str = a10.versionName;
        } else {
            str = "1.0.0";
        }
        this.f12387d = str;
        dVar.D.debug(Collections.singletonList("SimulateLoginTask"), "Simulate task init success", new Object[0]);
    }

    public static void a(d dVar) {
        new s3(dVar).execute(new Void[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018e A[SYNTHETIC] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject doInBackground(java.lang.Void[] r28) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.bdtracker.s3.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(JSONObject jSONObject) {
        IPicker iPicker;
        JSONObject optJSONObject;
        String str;
        int indexOf;
        JSONObject jSONObject2 = jSONObject;
        this.f12390g.D.debug(Collections.singletonList("SimulateLoginTask"), "Simulate login with response: {}", jSONObject2);
        if (jSONObject2 == null) {
            Toast.makeText(this.f12390g.f11914n, "Launch event verification failed for server no response", 1).show();
            return;
        }
        String optString = jSONObject2.optString("message");
        String optString2 = jSONObject2.optString("Set-Cookie");
        int optInt = jSONObject2.optInt("status");
        if (l0.b.d(optString2) && (indexOf = optString2.indexOf(";")) >= 0) {
            optString2 = optString2.substring(0, indexOf);
        }
        if (SimulateLaunchActivity.entryMode == 1 && (optJSONObject = jSONObject2.optJSONObject("data")) != null) {
            if (optJSONObject.optString("mode", "").equals("log")) {
                str = SimulateLaunchActivity.DEBUG_LOG;
            } else {
                str = SimulateLaunchActivity.BIND_QUERY;
            }
            this.f12389f = str;
        }
        if (optInt == 0 && "OK".equals(optString)) {
            if (SimulateLaunchActivity.DEBUG_LOG.equals(this.f12389f)) {
                this.f12390g.setRangersEventVerifyEnable(true, optString2);
                return;
            }
            if (this.f12390g.getInitConfig() != null && this.f12390g.getInitConfig().getPicker() != null) {
                iPicker = this.f12390g.getInitConfig().getPicker();
            } else {
                iPicker = null;
            }
            if (iPicker != null) {
                iPicker.setMarqueeCookie(optString2);
            }
            this.f12390g.startSimulator(optString2);
        } else if (optInt != 0 && l0.b.d(jSONObject2.optString("message"))) {
            Application application = this.f12390g.f11914n;
            StringBuilder a10 = a.a("Launch event verify failed: ");
            a10.append(jSONObject2.optString("message"));
            Toast.makeText(application, a10.toString(), 1).show();
        } else {
            this.f12390g.D.warn(Collections.singletonList("SimulateLoginTask"), "Start simulator failed, please check server response: {}", jSONObject2);
        }
    }
}
