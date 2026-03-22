package com.google.firebase.crashlytics.internal.settings;

import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.common.y;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: DefaultSettingsSpiCall.java */
/* loaded from: classes5.dex */
class b implements i {

    /* renamed from: a  reason: collision with root package name */
    private final String f20851a;

    /* renamed from: b  reason: collision with root package name */
    private final g8.b f20852b;

    /* renamed from: c  reason: collision with root package name */
    private final z7.g f20853c;

    public b(String str, g8.b bVar) {
        this(str, bVar, z7.g.f());
    }

    private g8.a b(g8.a aVar, h hVar) {
        c(aVar, "X-CRASHLYTICS-GOOGLE-APP-ID", hVar.f20880a);
        c(aVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        c(aVar, "X-CRASHLYTICS-API-CLIENT-VERSION", y.q());
        c(aVar, "Accept", "application/json");
        c(aVar, "X-CRASHLYTICS-DEVICE-MODEL", hVar.f20881b);
        c(aVar, "X-CRASHLYTICS-OS-BUILD-VERSION", hVar.f20882c);
        c(aVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", hVar.f20883d);
        c(aVar, "X-CRASHLYTICS-INSTALLATION-ID", hVar.f20884e.a().c());
        return aVar;
    }

    private void c(g8.a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.d(str, str2);
        }
    }

    private JSONObject e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e10) {
            z7.g gVar = this.f20853c;
            gVar.l("Failed to parse settings JSON from " + this.f20851a, e10);
            z7.g gVar2 = this.f20853c;
            gVar2.k("Settings response " + str);
            return null;
        }
    }

    private Map<String, String> f(h hVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", hVar.f20887h);
        hashMap.put("display_version", hVar.f20886g);
        hashMap.put("source", Integer.toString(hVar.f20888i));
        String str = hVar.f20885f;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.i
    public JSONObject a(h hVar, boolean z10) {
        CrashlyticsWorkers.d();
        if (z10) {
            try {
                Map<String, String> f10 = f(hVar);
                g8.a b10 = b(d(f10), hVar);
                z7.g gVar = this.f20853c;
                gVar.b("Requesting settings from " + this.f20851a);
                z7.g gVar2 = this.f20853c;
                gVar2.i("Settings query params were: " + f10);
                return g(b10.c());
            } catch (IOException e10) {
                this.f20853c.e("Settings request failed.", e10);
                return null;
            }
        }
        throw new RuntimeException("An invalid data collection token was used.");
    }

    protected g8.a d(Map<String, String> map) {
        g8.a a10 = this.f20852b.a(this.f20851a, map);
        return a10.d(Command.HTTP_HEADER_USER_AGENT, "Crashlytics Android SDK/" + y.q()).d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    JSONObject g(g8.c cVar) {
        int b10 = cVar.b();
        z7.g gVar = this.f20853c;
        gVar.i("Settings response code was: " + b10);
        if (h(b10)) {
            return e(cVar.a());
        }
        z7.g gVar2 = this.f20853c;
        gVar2.d("Settings request failed; (status: " + b10 + ") from " + this.f20851a);
        return null;
    }

    boolean h(int i10) {
        if (i10 != 200 && i10 != 201 && i10 != 202 && i10 != 203) {
            return false;
        }
        return true;
    }

    b(String str, g8.b bVar, z7.g gVar) {
        if (str != null) {
            this.f20853c = gVar;
            this.f20852b = bVar;
            this.f20851a = str;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }
}
