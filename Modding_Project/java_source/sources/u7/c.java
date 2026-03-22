package u7;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.fido.u2f.api.common.ClientData;
import com.google.firebase.FirebaseException;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GeneratePlayIntegrityChallengeResponse.java */
/* loaded from: classes5.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f67858a;

    /* renamed from: b  reason: collision with root package name */
    private String f67859b;

    private c(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f67858a = str;
        this.f67859b = str2;
    }

    @NonNull
    public static c a(@NonNull String str) throws FirebaseException, JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String emptyToNull = Strings.emptyToNull(jSONObject.optString(ClientData.KEY_CHALLENGE));
        String emptyToNull2 = Strings.emptyToNull(jSONObject.optString("ttl"));
        if (emptyToNull != null && emptyToNull2 != null) {
            return new c(emptyToNull, emptyToNull2);
        }
        throw new FirebaseException("Unexpected server response.");
    }

    @NonNull
    public String b() {
        return this.f67858a;
    }
}
