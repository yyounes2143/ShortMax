package q7;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Strings;
import com.google.firebase.FirebaseException;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AppCheckTokenResponse.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private String f65212a;

    /* renamed from: b  reason: collision with root package name */
    private String f65213b;

    private a(@NonNull String str, @NonNull String str2) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f65212a = str;
        this.f65213b = str2;
    }

    @NonNull
    public static a a(@NonNull String str) throws FirebaseException, JSONException {
        JSONObject jSONObject = new JSONObject(str);
        String emptyToNull = Strings.emptyToNull(jSONObject.optString(BidResponsed.KEY_TOKEN));
        String emptyToNull2 = Strings.emptyToNull(jSONObject.optString("ttl"));
        if (emptyToNull != null && emptyToNull2 != null) {
            return new a(emptyToNull, emptyToNull2);
        }
        throw new FirebaseException("Unexpected server response.");
    }

    @NonNull
    public String b() {
        return this.f65213b;
    }

    @NonNull
    public String c() {
        return this.f65212a;
    }
}
