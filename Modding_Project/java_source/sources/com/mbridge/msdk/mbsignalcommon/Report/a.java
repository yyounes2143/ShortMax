package com.mbridge.msdk.mbsignalcommon.Report;

import android.content.Context;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: H5ReportManager.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static final String f28118c = "a";

    /* renamed from: a  reason: collision with root package name */
    int f28119a = 0;

    /* renamed from: b  reason: collision with root package name */
    int f28120b = 1;

    /* compiled from: H5ReportManager.java */
    /* renamed from: com.mbridge.msdk.mbsignalcommon.Report.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    private static final class C0396a {

        /* renamed from: a  reason: collision with root package name */
        private static a f28121a = new a();
    }

    public static a a() {
        return C0396a.f28121a;
    }

    public void a(Object obj, String str, JSONArray jSONArray, int i10) {
        String str2;
        String str3;
        String str4;
        String str5;
        JSONObject optJSONObject;
        JSONObject optJSONObject2;
        JSONObject optJSONObject3;
        JSONObject optJSONObject4;
        JSONObject optJSONObject5;
        JSONObject optJSONObject6;
        JSONObject optJSONObject7;
        JSONObject optJSONObject8;
        JSONObject optJSONObject9;
        JSONObject optJSONObject10;
        JSONObject optJSONObject11;
        int i11;
        try {
            if (jSONArray == null) {
                a(this.f28120b, "called reporter failed, params empty", obj);
                return;
            }
            int length = jSONArray.length();
            if (length == 0) {
                a(this.f28120b, "called reporter failed, params empty", obj);
                return;
            }
            int i12 = 0;
            if ("reportMessageR".equalsIgnoreCase(str)) {
                StringBuffer stringBuffer = new StringBuffer();
                while (true) {
                    i11 = length - 1;
                    if (i12 >= i11) {
                        break;
                    }
                    JSONObject optJSONObject12 = jSONArray.optJSONObject(i12);
                    if (optJSONObject12 != null) {
                        stringBuffer.append(optJSONObject12.optString("key"));
                        stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                        stringBuffer.append(optJSONObject12.opt(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                        stringBuffer.append(ContainerUtils.FIELD_DELIMITER);
                    }
                    i12++;
                }
                JSONObject optJSONObject13 = jSONArray.optJSONObject(i11);
                if (optJSONObject13 != null) {
                    stringBuffer.append(optJSONObject13.optString("key"));
                    stringBuffer.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    stringBuffer.append(optJSONObject13.opt(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                }
                a(stringBuffer.toString());
            } else if ("reportMessageD".equalsIgnoreCase(str)) {
                String str6 = "";
                if (length <= 0 || (optJSONObject11 = jSONArray.optJSONObject(0)) == null) {
                    str2 = "";
                } else {
                    str2 = optJSONObject11.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                }
                int i13 = (length <= 1 || (optJSONObject10 = jSONArray.optJSONObject(1)) == null) ? -1 : optJSONObject10.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i14 = (length <= 2 || (optJSONObject9 = jSONArray.optJSONObject(2)) == null) ? -1 : optJSONObject9.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i15 = (length <= 3 || (optJSONObject8 = jSONArray.optJSONObject(3)) == null) ? -1 : optJSONObject8.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                int i16 = (length <= 4 || (optJSONObject7 = jSONArray.optJSONObject(4)) == null) ? -1 : optJSONObject7.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                if (length <= 5 || (optJSONObject6 = jSONArray.optJSONObject(5)) == null) {
                    str3 = "";
                } else {
                    str3 = optJSONObject6.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                }
                if (length <= 6 || (optJSONObject5 = jSONArray.optJSONObject(6)) == null) {
                    str4 = "";
                } else {
                    str4 = optJSONObject5.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                }
                int i17 = (length <= 7 || (optJSONObject4 = jSONArray.optJSONObject(7)) == null) ? -1 : optJSONObject4.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                if (length <= 8 || (optJSONObject3 = jSONArray.optJSONObject(8)) == null) {
                    str5 = "";
                } else {
                    str5 = optJSONObject3.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                }
                int i18 = (length <= 9 || (optJSONObject2 = jSONArray.optJSONObject(9)) == null) ? -1 : optJSONObject2.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                if (length > 10 && (optJSONObject = jSONArray.optJSONObject(10)) != null) {
                    str6 = optJSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                }
                a(str2, i13, i14, i15, i16, str3, str4, i17, str5, i18, str6);
            }
            a(this.f28119a, "called reporter success", obj);
        } catch (Throwable th2) {
            p0.a(f28118c, th2.getMessage());
            a(this.f28120b, "exception: " + th2.getMessage(), obj);
        }
    }

    public void a(String str) {
        d.b().e(str);
    }

    public void a(String str, int i10, int i11, int i12, int i13, String str2, String str3, int i14, String str4, int i15, String str5) {
        try {
            Context d10 = c.m().d();
            if (d10 != null) {
                n.a(g.a(d10)).a(new com.mbridge.msdk.foundation.entity.n(str, i10, i11, i12, i13, str2, str3, i14, str4, i15, str5));
            }
        } catch (Throwable th2) {
            p0.a(f28118c, th2.getMessage());
        }
    }

    public void a(int i10, String str, Object obj) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Module.ResponseKey.Code, i10);
            jSONObject.put("message", str);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (JSONException e10) {
            p0.a(f28118c, e10.getMessage());
        } catch (Throwable th2) {
            p0.a(f28118c, th2.getMessage());
        }
    }
}
