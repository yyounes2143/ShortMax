package com.apm.insight.k;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.n;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: CrashUploadManager.java */
/* loaded from: classes2.dex */
public final class d {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: a  reason: collision with root package name */
    private static volatile d f7004a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Context f7005b;

    private d(@NonNull Context context) {
        this.f7005b = context;
    }

    public static d a() {
        if (f7004a == null) {
            f7004a = new d(com.apm.insight.e.g());
        }
        return f7004a;
    }

    public final void b(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                String f10 = e.f();
                File file = new File(com.apm.insight.l.j.a(this.f7005b), com.apm.insight.l.j.c());
                com.apm.insight.l.f.a(file, file.getName(), f10, jSONObject, e.b());
                if (e.a(f10, jSONObject.toString()).a()) {
                    com.apm.insight.l.f.a(file);
                }
            } catch (Throwable th2) {
                com.apm.insight.a.b(th2);
            }
        }
    }

    public final void c(final JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            m.a().a(new Runnable() { // from class: com.apm.insight.k.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    String c10 = e.c();
                    try {
                        jSONObject.put("upload_scene", DevicePublicKeyStringDef.DIRECT);
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                    }
                    e.b(c10, jSONObject.toString());
                }
            });
        }
    }

    public static boolean a(JSONObject jSONObject, File file, File file2) {
        try {
            return e.a(e.g(), jSONObject.toString(), file, file2, n.a(System.currentTimeMillis()), new File(com.apm.insight.h.b.a())).a();
        } catch (Throwable th2) {
            com.apm.insight.a.b(th2);
            return false;
        }
    }

    public final void a(JSONObject jSONObject, long j10, boolean z10) {
        File[] fileArr;
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                String c10 = e.c();
                int i10 = 0;
                File file = new File(com.apm.insight.l.j.a(this.f7005b), com.apm.insight.e.a(j10, CrashType.ANR, false, false));
                com.apm.insight.l.f.a(file, file.getName(), c10, jSONObject, e.b());
                if (z10 && !Npth.isStopUpload()) {
                    jSONObject.put("upload_scene", DevicePublicKeyStringDef.DIRECT);
                    jSONObject.put("crash_uuid", file.getName());
                    if (com.apm.insight.runtime.a.h()) {
                        HashMap<String, n.a> a10 = n.a(j10, "anr_trace");
                        fileArr = new File[a10.size() + 2];
                        for (Map.Entry<String, n.a> entry : a10.entrySet()) {
                            if (!entry.getKey().equals(com.apm.insight.l.a.b())) {
                                fileArr[i10] = com.apm.insight.l.j.a(this.f7005b, entry.getValue().f7223a);
                                i10++;
                            }
                        }
                    } else {
                        fileArr = new File[2];
                    }
                    fileArr[fileArr.length - 1] = com.apm.insight.l.j.a(this.f7005b, com.apm.insight.e.f());
                    fileArr[fileArr.length - 2] = n.a(j10);
                    if (!e.a(c10, jSONObject.toString(), fileArr).a()) {
                        return;
                    }
                    com.apm.insight.l.f.a(file);
                    if (Npth.hasCrash()) {
                        return;
                    }
                    com.apm.insight.l.f.a(com.apm.insight.l.j.e(com.apm.insight.e.g()));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final boolean a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                String c10 = e.c();
                File file = new File(com.apm.insight.l.j.a(this.f7005b), com.apm.insight.l.j.a(com.apm.insight.e.e()));
                com.apm.insight.l.f.a(file, file.getName(), c10, jSONObject, e.a());
                jSONObject.put("upload_scene", DevicePublicKeyStringDef.DIRECT);
                if (e.b(c10, jSONObject.toString()).a()) {
                    com.apm.insight.l.f.a(file);
                    return true;
                }
                return false;
            } catch (Throwable th2) {
                com.apm.insight.a.b(th2);
            }
        }
        return false;
    }
}
