package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class NewPasswordContinuation extends ChallengeContinuation {

    /* renamed from: k  reason: collision with root package name */
    private List<String> f5612k;

    /* renamed from: l  reason: collision with root package name */
    private Map<String, String> f5613l;

    /* renamed from: m  reason: collision with root package name */
    private final AuthenticationHandler f5614m;

    public NewPasswordContinuation(CognitoUser cognitoUser, Context context, String str, String str2, String str3, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z10, AuthenticationHandler authenticationHandler) {
        super(cognitoUser, context, str, str2, str3, respondToAuthChallengeResult, z10, authenticationHandler);
        this.f5614m = authenticationHandler;
        d(a().get("userAttributes"));
        c(a().get("requiredAttributes"));
    }

    private void c(String str) {
        this.f5612k = new ArrayList();
        if (str != null) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    this.f5612k.add(jSONArray.getString(i10).split("userAttributes.", 2)[1]);
                }
            } catch (Exception e10) {
                this.f5614m.onFailure(e10);
            }
        }
    }

    private void d(String str) {
        this.f5613l = new HashMap();
        if (str != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    this.f5613l.put(next, jSONObject.getString(next));
                }
            } catch (Exception e10) {
                this.f5614m.onFailure(e10);
            }
        }
    }
}
