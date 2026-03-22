package q7;

import androidx.annotation.NonNull;
import com.bytedance.vodsetting.Module;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: HttpErrorResponse.java */
/* loaded from: classes5.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private int f65227a;

    /* renamed from: b  reason: collision with root package name */
    private String f65228b;

    private k(int i10, @NonNull String str) {
        this.f65227a = i10;
        this.f65228b = str;
    }

    @NonNull
    public static k a(@NonNull String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(new JSONObject(str).optString("error"));
        return new k(jSONObject.optInt(Module.ResponseKey.Code), jSONObject.optString("message"));
    }

    public int b() {
        return this.f65227a;
    }

    @NonNull
    public String c() {
        return this.f65228b;
    }
}
