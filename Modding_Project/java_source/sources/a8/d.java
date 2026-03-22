package a8;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
import z7.g;
/* compiled from: BreadcrumbAnalyticsEventReceiver.java */
/* loaded from: classes5.dex */
public class d implements b, b8.b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private b8.a f318a;

    @NonNull
    private static String b(@NonNull String str, @NonNull Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str2 : bundle.keySet()) {
            jSONObject2.put(str2, bundle.get(str2));
        }
        jSONObject.put("name", str);
        jSONObject.put("parameters", jSONObject2);
        return jSONObject.toString();
    }

    @Override // b8.b
    public void a(@Nullable b8.a aVar) {
        this.f318a = aVar;
        g.f().b("Registered Firebase Analytics event receiver for breadcrumbs");
    }

    @Override // a8.b
    public void onEvent(@NonNull String str, @NonNull Bundle bundle) {
        b8.a aVar = this.f318a;
        if (aVar != null) {
            try {
                aVar.a("$A$:" + b(str, bundle));
            } catch (JSONException unused) {
                g.f().k("Unable to serialize Firebase Analytics event to breadcrumb.");
            }
        }
    }
}
