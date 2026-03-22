package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import android.util.Log;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoAccessToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoIdToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoRefreshToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoIdentityProviderClientConfig;
import java.util.Date;
/* loaded from: classes2.dex */
public class CognitoUserSession {

    /* renamed from: d  reason: collision with root package name */
    private static final String f5567d = "CognitoUserSession";

    /* renamed from: a  reason: collision with root package name */
    private final CognitoIdToken f5568a;

    /* renamed from: b  reason: collision with root package name */
    private final CognitoAccessToken f5569b;

    /* renamed from: c  reason: collision with root package name */
    private final CognitoRefreshToken f5570c;

    public CognitoUserSession(CognitoIdToken cognitoIdToken, CognitoAccessToken cognitoAccessToken, CognitoRefreshToken cognitoRefreshToken) {
        this.f5568a = cognitoIdToken;
        this.f5569b = cognitoAccessToken;
        this.f5570c = cognitoRefreshToken;
    }

    public CognitoAccessToken a() {
        return this.f5569b;
    }

    public CognitoIdToken b() {
        return this.f5568a;
    }

    public CognitoRefreshToken c() {
        return this.f5570c;
    }

    public String d() {
        CognitoAccessToken cognitoAccessToken = this.f5569b;
        if (cognitoAccessToken != null) {
            try {
                return cognitoAccessToken.d();
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public boolean e() {
        Date date = new Date();
        try {
            CognitoIdToken cognitoIdToken = this.f5568a;
            if (cognitoIdToken == null) {
                Log.w(f5567d, "CognitoUserSession is not valid because idToken is null.");
                return false;
            } else if (this.f5569b == null) {
                Log.w(f5567d, "CognitoUserSession is not valid because accessToken is null.");
                return false;
            } else {
                return date.before(this.f5569b.b()) & date.before(cognitoIdToken.b());
            }
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean f() {
        try {
            if (this.f5568a == null) {
                Log.w(f5567d, "CognitoUserSession is not valid because idToken is null.");
                return false;
            } else if (this.f5569b == null) {
                Log.w(f5567d, "CognitoUserSession is not valid because accessToken is null.");
                return false;
            } else {
                long currentTimeMillis = System.currentTimeMillis() - (SDKGlobalConfiguration.a() * 1000);
                long time = this.f5569b.b().getTime() - currentTimeMillis;
                if (this.f5568a.b().getTime() - currentTimeMillis <= CognitoIdentityProviderClientConfig.a() || time <= CognitoIdentityProviderClientConfig.a()) {
                    return false;
                }
                return true;
            }
        } catch (Exception unused) {
            return false;
        }
    }
}
