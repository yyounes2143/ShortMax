package com.amazonaws.mobile.client;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.annotation.AnyThread;
import androidx.core.content.ContextCompat;
import com.amazonaws.AmazonClientException;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AnonymousAWSCredentials;
import com.amazonaws.auth.CognitoCachingCredentialsProvider;
import com.amazonaws.mobile.auth.core.IdentityManager;
import com.amazonaws.mobile.auth.core.SignInStateChangeListener;
import com.amazonaws.mobile.auth.core.signin.SignInManager;
import com.amazonaws.mobile.auth.core.signin.SignInProvider;
import com.amazonaws.mobile.auth.facebook.FacebookSignInProvider;
import com.amazonaws.mobile.auth.google.GoogleSignInProvider;
import com.amazonaws.mobile.auth.userpools.CognitoUserPoolsSignInProvider;
import com.amazonaws.mobile.client.internal.InternalCallback;
import com.amazonaws.mobile.client.internal.oauth2.OAuth2Client;
import com.amazonaws.mobile.client.results.SignInState;
import com.amazonaws.mobile.client.results.Tokens;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.mobileconnectors.cognitoauth.Auth;
import com.amazonaws.mobileconnectors.cognitoauth.handlers.AuthHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserSession;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient;
import com.amazonaws.services.cognitoidentity.model.NotAuthorizedException;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProviderClient;
import com.amazonaws.util.StringUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class AWSMobileClient implements AWSCredentialsProvider {
    private static final String A = "AWSMobileClient";
    private static volatile AWSMobileClient B;

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<Class<Object>, Object> f5309a;

    /* renamed from: b  reason: collision with root package name */
    AWSConfiguration f5310b;

    /* renamed from: c  reason: collision with root package name */
    CognitoCachingCredentialsProvider f5311c;

    /* renamed from: d  reason: collision with root package name */
    CognitoUserPool f5312d;

    /* renamed from: e  reason: collision with root package name */
    String f5313e;

    /* renamed from: f  reason: collision with root package name */
    Context f5314f;

    /* renamed from: g  reason: collision with root package name */
    Map<String, String> f5315g;

    /* renamed from: h  reason: collision with root package name */
    private UserStateDetails f5316h;

    /* renamed from: i  reason: collision with root package name */
    private Lock f5317i;

    /* renamed from: j  reason: collision with root package name */
    private volatile CountDownLatch f5318j;

    /* renamed from: k  reason: collision with root package name */
    CognitoUserSession f5319k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f5320l;

    /* renamed from: m  reason: collision with root package name */
    List<UserStateListener> f5321m;

    /* renamed from: n  reason: collision with root package name */
    private Object f5322n;

    /* renamed from: o  reason: collision with root package name */
    private volatile CountDownLatch f5323o;

    /* renamed from: p  reason: collision with root package name */
    private Object f5324p;

    /* renamed from: q  reason: collision with root package name */
    private Object f5325q;

    /* renamed from: r  reason: collision with root package name */
    KeyValueStore f5326r;

    /* renamed from: s  reason: collision with root package name */
    AWSMobileClientCognitoIdentityProvider f5327s;

    /* renamed from: t  reason: collision with root package name */
    DeviceOperations f5328t;

    /* renamed from: u  reason: collision with root package name */
    AmazonCognitoIdentityProvider f5329u;

    /* renamed from: v  reason: collision with root package name */
    Auth f5330v;

    /* renamed from: w  reason: collision with root package name */
    OAuth2Client f5331w;

    /* renamed from: x  reason: collision with root package name */
    String f5332x;

    /* renamed from: y  reason: collision with root package name */
    String f5333y;

    /* renamed from: z  reason: collision with root package name */
    boolean f5334z = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.mobile.client.AWSMobileClient$29  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass29 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5347a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f5348b;

        static {
            int[] iArr = new int[SignInState.values().length];
            f5348b = iArr;
            try {
                iArr[SignInState.SMS_MFA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5348b[SignInState.NEW_PASSWORD_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5348b[SignInState.CUSTOM_CHALLENGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5348b[SignInState.DONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[UserState.values().length];
            f5347a = iArr2;
            try {
                iArr2[UserState.SIGNED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5347a[UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5347a[UserState.SIGNED_OUT_FEDERATED_TOKENS_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5347a[UserState.GUEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5347a[UserState.SIGNED_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum SignInMode {
        SIGN_IN(MBridgeConstans.ENDCARD_URL_TYPE_PL),
        FEDERATED_SIGN_IN("1"),
        HOSTED_UI("2"),
        OAUTH2("3"),
        UNKNOWN("-1");
        
        String encode;

        SignInMode(String str) {
            this.encode = str;
        }

        static SignInMode fromString(String str) {
            if (MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(str)) {
                return SIGN_IN;
            }
            if ("1".equals(str)) {
                return FEDERATED_SIGN_IN;
            }
            if ("2".equals(str)) {
                return HOSTED_UI;
            }
            if ("3".equals(str)) {
                return OAUTH2;
            }
            return UNKNOWN;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.encode;
        }
    }

    private AWSMobileClient() {
        if (B == null) {
            this.f5309a = new LinkedHashMap<>();
            this.f5313e = "";
            this.f5317i = new ReentrantLock();
            this.f5315g = new HashMap();
            this.f5321m = new ArrayList();
            this.f5322n = new Object();
            this.f5324p = new Object();
            this.f5323o = new CountDownLatch(1);
            this.f5325q = new Object();
            this.f5326r = new DummyStore();
            return;
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(AWSConfiguration aWSConfiguration) {
        Log.d(A, "Using the SignInProviderConfig from `awsconfiguration.json`.");
        IdentityManager f10 = IdentityManager.f();
        try {
            if (z("CognitoUserPool", aWSConfiguration)) {
                f10.a(CognitoUserPoolsSignInProvider.class);
            }
            if (z("FacebookSignIn", aWSConfiguration)) {
                f10.a(FacebookSignInProvider.class);
            }
            if (z("GoogleSignIn", aWSConfiguration)) {
                f10.a(GoogleSignInProvider.class);
            }
        } catch (NoClassDefFoundError unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void F(final Callback<Tokens> callback) {
        Auth currentUser = this.f5330v.getCurrentUser();
        this.f5330v = currentUser;
        currentUser.setAuthHandler(new AuthHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.13
        });
        this.f5330v.getSessionWithoutWebUI();
    }

    private Runnable d(final Callback<Tokens> callback, final boolean z10) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.12
            @Override // java.lang.Runnable
            public void run() {
                String str = AWSMobileClient.this.r().get("provider");
                if (str != null && !AWSMobileClient.this.f5313e.equals(str)) {
                    callback.onError(new Exception("getTokens does not support retrieving tokens for federated sign-in"));
                } else if (z10 && !AWSMobileClient.this.I()) {
                    callback.onError(new Exception("getTokens does not support retrieving tokens while signed-out"));
                } else {
                    if (!AWSMobileClient.this.E()) {
                        callback.onError(new Exception("You must be signed-in with Cognito Userpools to be able to use getTokens"));
                    }
                    if (AWSMobileClient.this.s().equals(SignInMode.HOSTED_UI)) {
                        AWSMobileClient.this.F(callback);
                    } else if (AWSMobileClient.this.s().equals(SignInMode.OAUTH2)) {
                        callback.onError(new Exception("Tokens are not supported for OAuth2"));
                    } else {
                        try {
                            AWSMobileClient.this.f5312d.c().D(Collections.emptyMap(), new AuthenticationHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.12.1
                                private void e(Exception exc) {
                                    Log.w(AWSMobileClient.A, "signalTokensNotAvailable");
                                    callback.onError(new Exception("No cached session.", exc));
                                }

                                @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                                public void a(ChallengeContinuation challengeContinuation) {
                                    e(null);
                                }

                                @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                                public void b(MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation) {
                                    e(null);
                                }

                                @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                                public void c(AuthenticationContinuation authenticationContinuation, String str2) {
                                    e(null);
                                }

                                @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                                public void d(CognitoUserSession cognitoUserSession, CognitoDevice cognitoDevice) {
                                    try {
                                        AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                        AWSMobileClient.this.f5319k = cognitoUserSession;
                                        callback.onResult(new Tokens(cognitoUserSession.a().c(), cognitoUserSession.b().c(), cognitoUserSession.c().a()));
                                    } catch (Exception e10) {
                                        callback.onError(e10);
                                    }
                                }

                                @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
                                public void onFailure(Exception exc) {
                                    e(exc);
                                }
                            });
                        } catch (Exception e10) {
                            callback.onError(e10);
                        }
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(JSONObject jSONObject) throws JSONException {
        Log.d(A, "initialize: Cognito HostedUI client detected");
        JSONArray jSONArray = jSONObject.getJSONArray("Scopes");
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            hashSet.add(jSONArray.getString(i10));
        }
        if (this.f5332x != null) {
            this.f5330v = m(jSONObject).setPersistenceEnabled(this.f5334z).setAuthHandler(new AuthHandler() { // from class: com.amazonaws.mobile.client.AWSMobileClient.3
            }).build();
            return;
        }
        throw new IllegalStateException("User pool Id must be available through user pool setting");
    }

    @AnyThread
    private Tokens p() throws Exception {
        final InternalCallback internalCallback = new InternalCallback();
        return (Tokens) internalCallback.c(new Runnable() { // from class: com.amazonaws.mobile.client.a
            @Override // java.lang.Runnable
            public final void run() {
                AWSMobileClient.this.F(internalCallback);
            }
        });
    }

    public static synchronized AWSMobileClient q() {
        AWSMobileClient aWSMobileClient;
        synchronized (AWSMobileClient.class) {
            try {
                if (B == null) {
                    B = new AWSMobileClient();
                }
                aWSMobileClient = B;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aWSMobileClient;
    }

    private boolean w(String str, String str2) {
        if (str2 != null && !str2.isEmpty()) {
            boolean equals = str2.equals(this.f5315g.get(str));
            String str3 = A;
            Log.d(str3, "hasFederatedToken: " + equals + " provider: " + str);
            return equals;
        }
        return false;
    }

    private boolean z(String str, AWSConfiguration aWSConfiguration) {
        try {
            JSONObject e10 = aWSConfiguration.e(str);
            if (str.equals("GoogleSignIn")) {
                if (e10 == null) {
                    return false;
                }
                if (e10.getString("ClientId-WebApp") == null) {
                    return false;
                }
                return true;
            } else if (e10 == null) {
                return false;
            } else {
                return true;
            }
        } catch (Exception unused) {
            String str2 = A;
            Log.d(str2, str + " not found in `awsconfiguration.json`");
            return false;
        }
    }

    boolean A() {
        String str = this.f5326r.get("isFederationEnabled");
        if (str != null) {
            return str.equals("true");
        }
        return true;
    }

    boolean B() {
        return this.f5320l;
    }

    protected boolean C(Context context) {
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
        } catch (Exception e10) {
            Log.w(A, "Could not access network state", e10);
        }
        return false;
    }

    boolean D(Exception exc) {
        if (exc == null) {
            return false;
        }
        if (exc instanceof NotAuthorizedException) {
            return true;
        }
        if (!"No cached session.".equals(exc.getMessage()) || exc.getCause() != null) {
            return false;
        }
        return true;
    }

    boolean E() {
        return this.f5313e.equals(this.f5326r.get("provider"));
    }

    protected void H(final UserStateDetails userStateDetails) {
        boolean equals = userStateDetails.equals(this.f5316h);
        this.f5316h = userStateDetails;
        if (!equals) {
            synchronized (this.f5321m) {
                try {
                    for (final UserStateListener userStateListener : this.f5321m) {
                        new Thread(new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.4
                            @Override // java.lang.Runnable
                            public void run() {
                                userStateListener.a(userStateDetails);
                            }
                        }).start();
                    }
                } finally {
                }
            }
        }
    }

    protected boolean I() {
        try {
            try {
                this.f5317i.lock();
                this.f5318j = new CountDownLatch(1);
                boolean z10 = false;
                UserStateDetails u10 = u(false);
                String str = A;
                Log.d(str, "waitForSignIn: userState:" + u10.b());
                int i10 = AnonymousClass29.f5347a[u10.b().ordinal()];
                if (i10 != 1) {
                    if (i10 != 2 && i10 != 3) {
                        if (i10 != 4 && i10 != 5) {
                            return false;
                        }
                        H(u10);
                    } else {
                        if (u10.a() != null && !D(u10.a())) {
                            throw u10.a();
                        }
                        H(u10);
                        this.f5318j.await();
                        z10 = u(false).b().equals(UserState.SIGNED_IN);
                    }
                    return z10;
                }
                H(u10);
                return true;
            } catch (Exception e10) {
                throw new AmazonClientException("Operation requires a signed-in state", e10);
            }
        } finally {
            this.f5317i.unlock();
        }
    }

    String b() {
        return this.f5326r.get("cognitoIdentityId");
    }

    protected Runnable e(final Context context, final AWSConfiguration aWSConfiguration, final Callback<UserStateDetails> callback) {
        return new Runnable() { // from class: com.amazonaws.mobile.client.AWSMobileClient.2
            @Override // java.lang.Runnable
            public void run() {
                String str;
                synchronized (AWSMobileClient.this.f5325q) {
                    try {
                        AWSMobileClient aWSMobileClient = AWSMobileClient.this;
                        if (aWSMobileClient.f5310b != null) {
                            callback.onResult(aWSMobileClient.u(true));
                            return;
                        }
                        aWSMobileClient.f5334z = true;
                        try {
                            if (aWSConfiguration.e("Auth") != null && aWSConfiguration.e("Auth").has("Persistence")) {
                                AWSMobileClient.this.f5334z = aWSConfiguration.e("Auth").getBoolean("Persistence");
                            }
                            AWSMobileClient.this.f5333y = aWSConfiguration.d();
                            AWSMobileClient.this.f5314f = context.getApplicationContext();
                            AWSMobileClient aWSMobileClient2 = AWSMobileClient.this;
                            aWSMobileClient2.f5326r = new AWSMobileClientStore(aWSMobileClient2);
                            final IdentityManager identityManager = new IdentityManager(AWSMobileClient.this.f5314f);
                            identityManager.c(false);
                            identityManager.i(aWSConfiguration);
                            identityManager.k(AWSMobileClient.this.f5334z);
                            IdentityManager.j(identityManager);
                            AWSMobileClient.this.G(aWSConfiguration);
                            identityManager.b(new SignInStateChangeListener() { // from class: com.amazonaws.mobile.client.AWSMobileClient.2.1
                            });
                            if (aWSConfiguration.e("CredentialsProvider") != null && aWSConfiguration.e("CredentialsProvider").optJSONObject("CognitoIdentity") != null) {
                                try {
                                    JSONObject jSONObject = aWSConfiguration.e("CredentialsProvider").getJSONObject("CognitoIdentity").getJSONObject(aWSConfiguration.b());
                                    String string = jSONObject.getString("PoolId");
                                    String string2 = jSONObject.getString("Region");
                                    ClientConfiguration clientConfiguration = new ClientConfiguration();
                                    clientConfiguration.l("AWSMobileClient " + aWSConfiguration.c());
                                    String str2 = AWSMobileClient.this.f5333y;
                                    if (str2 != null) {
                                        clientConfiguration.m(str2);
                                    }
                                    AmazonCognitoIdentityClient amazonCognitoIdentityClient = new AmazonCognitoIdentityClient(new AnonymousAWSCredentials(), clientConfiguration);
                                    amazonCognitoIdentityClient.a(Region.f(string2));
                                    AWSMobileClient.this.f5327s = new AWSMobileClientCognitoIdentityProvider(null, string, amazonCognitoIdentityClient);
                                    AWSMobileClient aWSMobileClient3 = AWSMobileClient.this;
                                    AWSMobileClient aWSMobileClient4 = AWSMobileClient.this;
                                    aWSMobileClient3.f5311c = new CognitoCachingCredentialsProvider(aWSMobileClient4.f5314f, aWSMobileClient4.f5327s, Regions.fromName(string2));
                                    AWSMobileClient aWSMobileClient5 = AWSMobileClient.this;
                                    aWSMobileClient5.f5311c.F(aWSMobileClient5.f5334z);
                                    AWSMobileClient aWSMobileClient6 = AWSMobileClient.this;
                                    String str3 = aWSMobileClient6.f5333y;
                                    if (str3 != null) {
                                        aWSMobileClient6.f5311c.G(str3);
                                    }
                                } catch (Exception e10) {
                                    callback.onError(new RuntimeException("Failed to initialize Cognito Identity; please check your awsconfiguration.json", e10));
                                    return;
                                }
                            }
                            JSONObject e11 = aWSConfiguration.e("CognitoUserPool");
                            if (e11 != null) {
                                try {
                                    AWSMobileClient.this.f5332x = e11.getString("PoolId");
                                    String string3 = e11.getString("AppClientId");
                                    String optString = e11.optString("AppClientSecret");
                                    String optString2 = e11.optString("PinpointAppId");
                                    if (optString2.equals("")) {
                                        str = null;
                                    } else {
                                        str = optString2;
                                    }
                                    String optString3 = e11.optString("Endpoint");
                                    ClientConfiguration clientConfiguration2 = new ClientConfiguration();
                                    clientConfiguration2.l("AWSMobileClient " + aWSConfiguration.c());
                                    String str4 = AWSMobileClient.this.f5333y;
                                    if (str4 != null) {
                                        clientConfiguration2.m(str4);
                                    }
                                    AWSMobileClient.this.f5329u = new AmazonCognitoIdentityProviderClient(new AnonymousAWSCredentials(), clientConfiguration2);
                                    AWSMobileClient.this.f5329u.a(Region.e(Regions.fromName(e11.getString("Region"))));
                                    AWSMobileClient.this.f5313e = String.format("cognito-idp.%s.amazonaws.com/%s", e11.getString("Region"), e11.getString("PoolId"));
                                    AWSMobileClient aWSMobileClient7 = AWSMobileClient.this;
                                    AWSMobileClient aWSMobileClient8 = AWSMobileClient.this;
                                    aWSMobileClient7.f5312d = new CognitoUserPool(aWSMobileClient8.f5314f, aWSMobileClient8.f5332x, string3, optString, aWSMobileClient8.f5329u, str, optString3);
                                    AWSMobileClient aWSMobileClient9 = AWSMobileClient.this;
                                    aWSMobileClient9.f5312d.j(aWSMobileClient9.f5334z);
                                    AWSMobileClient aWSMobileClient10 = AWSMobileClient.this;
                                    aWSMobileClient10.f5328t = new DeviceOperations(aWSMobileClient10, aWSMobileClient10.f5329u);
                                } catch (Exception e12) {
                                    callback.onError(new RuntimeException("Failed to initialize Cognito Userpool; please check your awsconfiguration.json", e12));
                                    return;
                                }
                            }
                            JSONObject n10 = AWSMobileClient.this.n(aWSConfiguration);
                            if (n10 != null) {
                                try {
                                    if (!n10.has("TokenURI")) {
                                        AWSMobileClient.this.f(n10);
                                    } else {
                                        Log.d(AWSMobileClient.A, "initialize: OAuth2 client detected");
                                        AWSMobileClient aWSMobileClient11 = AWSMobileClient.this;
                                        AWSMobileClient aWSMobileClient12 = AWSMobileClient.this;
                                        aWSMobileClient11.f5331w = new OAuth2Client(aWSMobileClient12.f5314f, aWSMobileClient12);
                                        AWSMobileClient aWSMobileClient13 = AWSMobileClient.this;
                                        aWSMobileClient13.f5331w.e(aWSMobileClient13.f5334z);
                                        AWSMobileClient aWSMobileClient14 = AWSMobileClient.this;
                                        aWSMobileClient14.f5331w.f(aWSMobileClient14.f5333y);
                                    }
                                } catch (Exception e13) {
                                    callback.onError(new RuntimeException("Failed to initialize OAuth, please check your awsconfiguration.json", e13));
                                }
                            }
                            AWSMobileClient aWSMobileClient15 = AWSMobileClient.this;
                            if (aWSMobileClient15.f5311c == null && aWSMobileClient15.f5312d == null) {
                                callback.onError(new RuntimeException("Neither Cognito Identity or Cognito UserPool was used. At least one must be present to use AWSMobileClient."));
                                return;
                            }
                            aWSMobileClient15.f5310b = aWSConfiguration;
                            UserStateDetails u10 = aWSMobileClient15.u(true);
                            callback.onResult(u10);
                            AWSMobileClient.this.H(u10);
                        } catch (Exception e14) {
                            callback.onError(new RuntimeException("Failed to initialize AWSMobileClient; please check your awsconfiguration.json", e14));
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        };
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials getCredentials() {
        if (B()) {
            return IdentityManager.f().e().getCredentials();
        }
        if (this.f5311c != null) {
            try {
                if (I()) {
                    Log.d(A, "getCredentials: Validated user is signed-in");
                }
                AWSSessionCredentials credentials = this.f5311c.getCredentials();
                this.f5326r.a("cognitoIdentityId", this.f5311c.e());
                return credentials;
            } catch (NotAuthorizedException e10) {
                Log.w(A, "getCredentials: Failed to getCredentials from Cognito Identity", e10);
                throw new AmazonClientException("Failed to get credentials from Cognito Identity", e10);
            } catch (Exception e11) {
                throw new AmazonClientException("Failed to get credentials from Cognito Identity", e11);
            }
        }
        throw new AmazonClientException("Cognito Identity not configured");
    }

    protected void l(String str, String str2) {
        synchronized (this.f5324p) {
            try {
                if (!w(str, str2)) {
                    if (IdentityProvider.DEVELOPER.equals(str)) {
                        this.f5327s.n(this.f5326r.get("cognitoIdentityId"), str2);
                    } else {
                        this.f5327s.o();
                    }
                    String str3 = this.f5326r.get("customRoleArn");
                    if (!StringUtils.a(str3)) {
                        this.f5311c.q(str3);
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put(str, str2);
                    this.f5311c.s(hashMap);
                    this.f5311c.m();
                    this.f5326r.a("cognitoIdentityId", this.f5311c.e());
                    this.f5315g = this.f5311c.g();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    Auth.Builder m(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("Scopes");
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            hashSet.add(jSONArray.getString(i10));
        }
        return new Auth.Builder().setApplicationContext(this.f5314f).setUserPoolId(this.f5332x).setAppClientId(jSONObject.getString("AppClientId")).setAppClientSecret(jSONObject.optString("AppClientSecret", null)).setAppCognitoWebDomain(jSONObject.getString("WebDomain")).setSignInRedirect(jSONObject.getString("SignInRedirectURI")).setSignOutRedirect(jSONObject.getString("SignOutRedirectURI")).setScopes(hashSet).setAdvancedSecurityDataCollection(false).setIdentityProvider(jSONObject.optString("IdentityProvider")).setIdpIdentifier(jSONObject.optString("IdpIdentifier"));
    }

    JSONObject n(AWSConfiguration aWSConfiguration) {
        JSONObject jSONObject;
        try {
            JSONObject o10 = o(aWSConfiguration);
            try {
                jSONObject = new JSONObject(this.f5326r.get("hostedUI"));
            } catch (Exception e10) {
                Log.w(A, "Failed to parse HostedUI settings from store", e10);
                jSONObject = null;
            }
            if (o10 != null) {
                if (jSONObject != null && jSONObject.toString() == o10.toString()) {
                    return jSONObject;
                }
                JSONObject jSONObject2 = new JSONObject(o10.toString());
                this.f5326r.a("hostedUI", jSONObject2.toString());
                return jSONObject2;
            }
            return jSONObject;
        } catch (Exception e11) {
            Log.d(A, "getHostedUIJSON: Failed to read config", e11);
            return null;
        }
    }

    JSONObject o(AWSConfiguration aWSConfiguration) {
        JSONObject e10 = aWSConfiguration.e("Auth");
        if (e10 != null && e10.has("OAuth")) {
            try {
                return e10.getJSONObject("OAuth");
            } catch (Exception e11) {
                Log.w(A, "getHostedUIJSONFromJSON: Failed to read config", e11);
                return null;
            }
        }
        return null;
    }

    Map<String, String> r() {
        return this.f5326r.c("provider", BidResponsed.KEY_TOKEN);
    }

    SignInMode s() {
        return SignInMode.fromString(this.f5326r.get("signInMode"));
    }

    protected Tokens t(boolean z10) throws Exception {
        InternalCallback internalCallback = new InternalCallback();
        return (Tokens) internalCallback.c(d(internalCallback, z10));
    }

    protected UserStateDetails u(boolean z10) {
        boolean z11;
        UserStateDetails userStateDetails;
        Tokens tokens;
        String str;
        Map<String, String> r10 = r();
        String str2 = r10.get("provider");
        String str3 = r10.get(BidResponsed.KEY_TOKEN);
        String b10 = b();
        boolean A2 = A();
        String str4 = A;
        Log.d(str4, "Inspecting user state details");
        if (str2 != null && str3 != null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z10 && C(this.f5314f)) {
            if (s().equals(SignInMode.HOSTED_UI) && (!A2 || this.f5311c == null)) {
                Log.d(str4, String.format("_hostedUISignIn without federation: Putting provider and token in store", new Object[0]));
                try {
                    r10.put(BidResponsed.KEY_TOKEN, p().a().a());
                    r10.put("provider", this.f5313e);
                    this.f5326r.b(r10);
                    return new UserStateDetails(UserState.SIGNED_IN, r10);
                } catch (Exception unused) {
                    return new UserStateDetails(UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID, null);
                }
            } else if (z11 && !this.f5313e.equals(str2)) {
                if (A2) {
                    try {
                        SignInProvider d10 = SignInManager.c(this.f5314f).d();
                        if (d10 != null && str2.equals(d10.e())) {
                            str3 = d10.getToken();
                            Log.i(str4, "Token was refreshed using drop-in UI internal mechanism");
                        }
                        if (str3 == null) {
                            Log.i(str4, "Token used for federation has become null");
                            return new UserStateDetails(UserState.SIGNED_OUT_FEDERATED_TOKENS_INVALID, r10);
                        } else if (w(str2, str3)) {
                            Log.d(str4, "getUserStateDetails: token already federated just fetch credentials");
                            CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider = this.f5311c;
                            if (cognitoCachingCredentialsProvider != null) {
                                cognitoCachingCredentialsProvider.getCredentials();
                            }
                        } else {
                            l(str2, str3);
                        }
                    } catch (Exception e10) {
                        Log.w(A, "Failed to federate the tokens.", e10);
                        UserState userState = UserState.SIGNED_IN;
                        if (D(e10)) {
                            userState = UserState.SIGNED_OUT_FEDERATED_TOKENS_INVALID;
                        }
                        UserStateDetails userStateDetails2 = new UserStateDetails(userState, r10);
                        userStateDetails2.c(e10);
                        return userStateDetails2;
                    }
                }
                return new UserStateDetails(UserState.SIGNED_IN, r10);
            } else if (z11 && this.f5312d != null) {
                try {
                    try {
                        tokens = t(false);
                    } catch (Exception e11) {
                        e = e11;
                        tokens = null;
                    }
                } catch (Throwable unused2) {
                    UserState userState2 = UserState.SIGNED_IN;
                    if (D(null)) {
                        userState2 = UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID;
                    }
                    userStateDetails = new UserStateDetails(userState2, r10);
                }
                try {
                    String a10 = tokens.a().a();
                    r10.put(BidResponsed.KEY_TOKEN, a10);
                    if (A2) {
                        if (w(str2, a10)) {
                            try {
                                CognitoCachingCredentialsProvider cognitoCachingCredentialsProvider2 = this.f5311c;
                                if (cognitoCachingCredentialsProvider2 != null) {
                                    cognitoCachingCredentialsProvider2.getCredentials();
                                }
                            } catch (Exception e12) {
                                Log.w(A, "Failed to get or refresh credentials from Cognito Identity", e12);
                            }
                        } else if (this.f5311c != null) {
                            l(str2, a10);
                        }
                    }
                    UserState userState3 = UserState.SIGNED_IN;
                    if (D(null)) {
                        userState3 = UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID;
                    }
                    userStateDetails = new UserStateDetails(userState3, r10);
                    userStateDetails.c(null);
                    return userStateDetails;
                } catch (Exception e13) {
                    e = e13;
                    String str5 = A;
                    if (tokens == null) {
                        str = "Tokens are invalid, please sign-in again.";
                    } else {
                        str = "Failed to federate the tokens";
                    }
                    Log.w(str5, str, e);
                    UserState userState4 = UserState.SIGNED_IN;
                    if (D(e)) {
                        userState4 = UserState.SIGNED_OUT_USER_POOLS_TOKENS_INVALID;
                    }
                    UserStateDetails userStateDetails3 = new UserStateDetails(userState4, r10);
                    userStateDetails3.c(e);
                    return userStateDetails3;
                }
            } else if (this.f5311c == null) {
                return new UserStateDetails(UserState.SIGNED_OUT, r10);
            } else {
                if (b10 != null) {
                    return new UserStateDetails(UserState.GUEST, r10);
                }
                return new UserStateDetails(UserState.SIGNED_OUT, null);
            }
        } else if (z11) {
            return new UserStateDetails(UserState.SIGNED_IN, r10);
        } else {
            if (b10 != null) {
                return new UserStateDetails(UserState.GUEST, r10);
            }
            return new UserStateDetails(UserState.SIGNED_OUT, null);
        }
    }

    @AnyThread
    public boolean v(Intent intent) {
        Auth auth2 = this.f5330v;
        if (auth2 != null) {
            if (intent != null) {
                auth2.getTokens(intent.getData());
            } else {
                auth2.handleFlowCancelled();
            }
            return true;
        }
        OAuth2Client oAuth2Client = this.f5331w;
        if (oAuth2Client != null && intent != null && oAuth2Client.d(intent.getData())) {
            return true;
        }
        return false;
    }

    @AnyThread
    public void x(Context context, Callback<UserStateDetails> callback) {
        Context applicationContext = context.getApplicationContext();
        y(applicationContext, new AWSConfiguration(applicationContext), callback);
    }

    @AnyThread
    public void y(Context context, AWSConfiguration aWSConfiguration, Callback<UserStateDetails> callback) {
        InternalCallback internalCallback = new InternalCallback(callback);
        internalCallback.b(e(context, aWSConfiguration, internalCallback));
    }
}
