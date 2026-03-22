package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import android.os.Handler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class AuthenticationContinuation {

    /* renamed from: a  reason: collision with root package name */
    private final CognitoUser f5571a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f5572b;

    /* renamed from: c  reason: collision with root package name */
    private final AuthenticationHandler f5573c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5574d;

    /* renamed from: f  reason: collision with root package name */
    private AuthenticationDetails f5576f = null;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f5575e = new HashMap();

    public AuthenticationContinuation(CognitoUser cognitoUser, Context context, boolean z10, AuthenticationHandler authenticationHandler) {
        this.f5571a = cognitoUser;
        this.f5572b = context;
        this.f5574d = z10;
        this.f5573c = authenticationHandler;
    }

    public void f() {
        Runnable runnable;
        if (this.f5574d) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation.1
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnable2;
                    Handler handler = new Handler(AuthenticationContinuation.this.f5572b.getMainLooper());
                    try {
                        runnable2 = AuthenticationContinuation.this.f5571a.N(AuthenticationContinuation.this.f5575e, AuthenticationContinuation.this.f5576f, AuthenticationContinuation.this.f5573c, true);
                    } catch (Exception e10) {
                        runnable2 = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AuthenticationContinuation.this.f5573c.onFailure(e10);
                            }
                        };
                    }
                    handler.post(runnable2);
                }
            }).start();
            return;
        }
        try {
            runnable = this.f5571a.N(this.f5575e, this.f5576f, this.f5573c, false);
        } catch (Exception e10) {
            runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation.2
                @Override // java.lang.Runnable
                public void run() {
                    AuthenticationContinuation.this.f5573c.onFailure(e10);
                }
            };
        }
        runnable.run();
    }

    public void g(AuthenticationDetails authenticationDetails) {
        this.f5576f = authenticationDetails;
    }

    public void h(Map<String, String> map) {
        this.f5575e.clear();
        if (map != null) {
            this.f5575e.putAll(map);
        }
    }
}
