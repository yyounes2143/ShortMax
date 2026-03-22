package u7;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExchangePlayIntegrityTokenRequest.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f67857a;

    public a(@NonNull String str) {
        this.f67857a = str;
    }

    @NonNull
    public String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("playIntegrityToken", this.f67857a);
        return jSONObject.toString();
    }
}
