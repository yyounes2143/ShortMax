package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class MultiFactorAuthenticationContinuation {

    /* renamed from: a  reason: collision with root package name */
    private final CognitoUser f5605a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f5606b;

    /* renamed from: c  reason: collision with root package name */
    private final RespondToAuthChallengeResult f5607c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5608d;

    /* renamed from: e  reason: collision with root package name */
    private final AuthenticationHandler f5609e;

    /* renamed from: g  reason: collision with root package name */
    private String f5611g = null;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f5610f = new HashMap();

    public MultiFactorAuthenticationContinuation(CognitoUser cognitoUser, Context context, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z10, AuthenticationHandler authenticationHandler) {
        this.f5605a = cognitoUser;
        this.f5606b = context;
        this.f5609e = authenticationHandler;
        this.f5608d = z10;
        this.f5607c = respondToAuthChallengeResult;
    }

    public void a(Map<String, String> map) {
        this.f5610f.clear();
        if (map != null) {
            this.f5610f.putAll(map);
        }
    }
}
