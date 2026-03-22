package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ChallengeContinuation {

    /* renamed from: b  reason: collision with root package name */
    private final RespondToAuthChallengeResult f5588b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f5589c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5590d;

    /* renamed from: e  reason: collision with root package name */
    private final String f5591e;

    /* renamed from: f  reason: collision with root package name */
    private final CognitoUser f5592f;

    /* renamed from: g  reason: collision with root package name */
    private final String f5593g;

    /* renamed from: h  reason: collision with root package name */
    private final AuthenticationHandler f5594h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f5595i;

    /* renamed from: a  reason: collision with root package name */
    protected final Map<String, String> f5587a = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    private final Map<String, String> f5596j = new HashMap();

    public ChallengeContinuation(CognitoUser cognitoUser, Context context, String str, String str2, String str3, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z10, AuthenticationHandler authenticationHandler) {
        this.f5588b = respondToAuthChallengeResult;
        this.f5589c = context;
        this.f5590d = str2;
        this.f5591e = str3;
        this.f5592f = cognitoUser;
        this.f5593g = str;
        this.f5594h = authenticationHandler;
        this.f5595i = z10;
    }

    public Map<String, String> a() {
        return this.f5588b.e();
    }

    public void b(Map<String, String> map) {
        this.f5596j.clear();
        if (map != null) {
            this.f5596j.putAll(map);
        }
    }
}
