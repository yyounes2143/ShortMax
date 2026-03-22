package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChooseMfaContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.NewPasswordContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.RegisterMfaContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoInternalErrorException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoNotAuthorizedException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.VerificationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoAccessToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoIdToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoRefreshToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoSecretHash;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.Hkdf;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.AuthenticationResultType;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceSecretVerifierConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthResult;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidParameterException;
import com.amazonaws.services.cognitoidentityprovider.model.NewDeviceMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.NotAuthorizedException;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeResult;
import com.amazonaws.services.cognitoidentityprovider.model.ResourceNotFoundException;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.services.cognitoidentityprovider.model.UserNotFoundException;
import com.amazonaws.util.Base64;
import com.amazonaws.util.StringUtils;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public class CognitoUser {

    /* renamed from: k  reason: collision with root package name */
    private static final Log f5411k = LogFactory.b(CognitoUser.class);

    /* renamed from: l  reason: collision with root package name */
    private static final Object f5412l = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f5413a;

    /* renamed from: b  reason: collision with root package name */
    private final AmazonCognitoIdentityProvider f5414b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5415c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5416d;

    /* renamed from: e  reason: collision with root package name */
    private String f5417e;

    /* renamed from: f  reason: collision with root package name */
    private String f5418f;

    /* renamed from: h  reason: collision with root package name */
    private final CognitoUserPool f5420h;

    /* renamed from: i  reason: collision with root package name */
    private String f5421i;

    /* renamed from: g  reason: collision with root package name */
    private String f5419g = null;

    /* renamed from: j  reason: collision with root package name */
    private CognitoUserSession f5422j = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class AuthenticationHelper {

        /* renamed from: d  reason: collision with root package name */
        private static final BigInteger f5532d;

        /* renamed from: e  reason: collision with root package name */
        private static final BigInteger f5533e;

        /* renamed from: f  reason: collision with root package name */
        private static final BigInteger f5534f;

        /* renamed from: g  reason: collision with root package name */
        private static final ThreadLocal<MessageDigest> f5535g;

        /* renamed from: h  reason: collision with root package name */
        private static final SecureRandom f5536h;

        /* renamed from: a  reason: collision with root package name */
        private BigInteger f5537a;

        /* renamed from: b  reason: collision with root package name */
        private BigInteger f5538b;

        /* renamed from: c  reason: collision with root package name */
        private String f5539c;

        static {
            SecureRandom instanceStrong;
            BigInteger bigInteger = new BigInteger("FFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD129024E088A67CC74020BBEA63B139B22514A08798E3404DDEF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7EDEE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3DC2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F83655D23DCA3AD961C62F356208552BB9ED529077096966D670C354E4ABC9804F1746C08CA18217C32905E462E36CE3BE39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9DE2BCBF6955817183995497CEA956AE515D2261898FA051015728E5A8AAAC42DAD33170D04507A33A85521ABDF1CBA64ECFB850458DBEF0A8AEA71575D060C7DB3970F85A6E1E4C7ABF5AE8CDB0933D71E8C94E04A25619DCEE3D2261AD2EE6BF12FFA06D98A0864D87602733EC86A64521F2B18177B200CBBE117577A615D6C770988C0BAD946E208E24FA074E5AB3143DB5BFCE0FD108E4B82D120A93AD2CAFFFFFFFFFFFFFFFF", 16);
            f5532d = bigInteger;
            BigInteger valueOf = BigInteger.valueOf(2L);
            f5533e = valueOf;
            ThreadLocal<MessageDigest> threadLocal = new ThreadLocal<MessageDigest>() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.AuthenticationHelper.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // java.lang.ThreadLocal
                /* renamed from: a */
                public MessageDigest initialValue() {
                    try {
                        return MessageDigest.getInstance("SHA-256");
                    } catch (NoSuchAlgorithmException e10) {
                        throw new CognitoInternalErrorException("Exception in authentication", e10);
                    }
                }
            };
            f5535g = threadLocal;
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    instanceStrong = SecureRandom.getInstanceStrong();
                    f5536h = instanceStrong;
                } else {
                    f5536h = new SecureRandom();
                }
                MessageDigest messageDigest = threadLocal.get();
                messageDigest.reset();
                messageDigest.update(bigInteger.toByteArray());
                f5534f = new BigInteger(1, messageDigest.digest(valueOf.toByteArray()));
            } catch (NoSuchAlgorithmException e10) {
                throw new CognitoInternalErrorException(e10.getMessage(), e10);
            }
        }

        public AuthenticationHelper(String str) {
            BigInteger bigInteger;
            BigInteger modPow;
            do {
                BigInteger bigInteger2 = new BigInteger(1024, f5536h);
                bigInteger = f5532d;
                BigInteger mod = bigInteger2.mod(bigInteger);
                this.f5537a = mod;
                modPow = f5533e.modPow(mod, bigInteger);
                this.f5538b = modPow;
            } while (modPow.mod(bigInteger).equals(BigInteger.ZERO));
            if (str.contains("_")) {
                this.f5539c = str.split("_", 2)[1];
            } else {
                this.f5539c = str;
            }
        }

        public BigInteger b() {
            return this.f5538b;
        }

        public byte[] c(String str, String str2, BigInteger bigInteger, BigInteger bigInteger2) {
            MessageDigest messageDigest = f5535g.get();
            messageDigest.reset();
            messageDigest.update(this.f5538b.toByteArray());
            BigInteger bigInteger3 = new BigInteger(1, messageDigest.digest(bigInteger.toByteArray()));
            if (!bigInteger3.equals(BigInteger.ZERO)) {
                messageDigest.reset();
                String str3 = this.f5539c;
                Charset charset = StringUtils.f6417a;
                messageDigest.update(str3.getBytes(charset));
                messageDigest.update(str.getBytes(charset));
                messageDigest.update(":".getBytes(charset));
                byte[] digest = messageDigest.digest(str2.getBytes(charset));
                messageDigest.reset();
                messageDigest.update(bigInteger2.toByteArray());
                BigInteger bigInteger4 = new BigInteger(1, messageDigest.digest(digest));
                BigInteger bigInteger5 = f5534f;
                BigInteger bigInteger6 = f5533e;
                BigInteger bigInteger7 = f5532d;
                BigInteger mod = bigInteger.subtract(bigInteger5.multiply(bigInteger6.modPow(bigInteger4, bigInteger7))).modPow(this.f5537a.add(bigInteger3.multiply(bigInteger4)), bigInteger7).mod(bigInteger7);
                try {
                    Hkdf f10 = Hkdf.f("HmacSHA256");
                    f10.g(mod.toByteArray(), bigInteger3.toByteArray());
                    return f10.d("Caldera Derived Key", 16);
                } catch (NoSuchAlgorithmException e10) {
                    throw new CognitoInternalErrorException(e10.getMessage(), e10);
                }
            }
            throw new CognitoInternalErrorException("Hash of A and B cannot be zero");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CognitoUser(CognitoUserPool cognitoUserPool, String str, String str2, String str3, String str4, AmazonCognitoIdentityProvider amazonCognitoIdentityProvider, Context context) {
        this.f5420h = cognitoUserPool;
        this.f5413a = context;
        this.f5417e = str;
        this.f5414b = amazonCognitoIdentityProvider;
        this.f5415c = str2;
        this.f5416d = str3;
        this.f5421i = str4;
    }

    private CognitoUserSession A(AuthenticationResultType authenticationResultType) {
        return B(authenticationResultType, null);
    }

    private CognitoUserSession B(AuthenticationResultType authenticationResultType, CognitoRefreshToken cognitoRefreshToken) {
        CognitoIdToken cognitoIdToken = new CognitoIdToken(authenticationResultType.e());
        CognitoAccessToken cognitoAccessToken = new CognitoAccessToken(authenticationResultType.b());
        if (cognitoRefreshToken == null) {
            cognitoRefreshToken = new CognitoRefreshToken(authenticationResultType.g());
        }
        return new CognitoUserSession(cognitoIdToken, cognitoAccessToken, cognitoRefreshToken);
    }

    private UserContextDataType F() {
        return this.f5420h.g(this.f5417e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable I(Map<String, String> map, InitiateAuthResult initiateAuthResult, AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, boolean z10) {
        try {
            RespondToAuthChallengeResult respondToAuthChallengeResult = new RespondToAuthChallengeResult();
            respondToAuthChallengeResult.h(initiateAuthResult.d());
            respondToAuthChallengeResult.j(initiateAuthResult.f());
            respondToAuthChallengeResult.g(initiateAuthResult.b());
            respondToAuthChallengeResult.i(initiateAuthResult.e());
            return J(map, respondToAuthChallengeResult, authenticationDetails, authenticationHandler, z10);
        } catch (Exception e10) {
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.36
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.onFailure(e10);
                }
            };
        }
    }

    private Runnable J(Map<String, String> map, RespondToAuthChallengeResult respondToAuthChallengeResult, AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, boolean z10) {
        Runnable runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.26
            @Override // java.lang.Runnable
            public void run() {
                authenticationHandler.onFailure(new CognitoInternalErrorException("Authentication failed due to an internal error"));
            }
        };
        if (respondToAuthChallengeResult == null) {
            return runnable;
        }
        Z(respondToAuthChallengeResult.e());
        String d10 = respondToAuthChallengeResult.d();
        if (d10 == null) {
            final CognitoUserSession A = A(respondToAuthChallengeResult.b());
            q(A);
            NewDeviceMetadataType f10 = respondToAuthChallengeResult.b().f();
            if (f10 == null) {
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.27
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.d(A, null);
                    }
                };
            }
            ConfirmDeviceResult s10 = s(f10);
            if (s10 != null && s10.d().booleanValue()) {
                final CognitoDevice cognitoDevice = new CognitoDevice(f10.d(), null, null, null, null, this, this.f5413a);
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.28
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.d(A, cognitoDevice);
                    }
                };
            }
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.29
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.d(A, null);
                }
            };
        } else if ("PASSWORD_VERIFIER".equals(d10)) {
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.30
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.onFailure(new CognitoInternalErrorException("Authentication failed due to an internal error: PASSWORD_VERIFIER challenge encountered not at the start of authentication flow"));
                }
            };
        } else {
            if (!"SMS_MFA".equals(d10) && !"SOFTWARE_TOKEN_MFA".equals(d10)) {
                if ("SELECT_MFA_TYPE".equals(d10)) {
                    final ChooseMfaContinuation chooseMfaContinuation = new ChooseMfaContinuation(this, this.f5413a, this.f5418f, this.f5415c, this.f5421i, respondToAuthChallengeResult, z10, authenticationHandler);
                    return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.32
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(chooseMfaContinuation);
                        }
                    };
                } else if ("MFA_SETUP".equals(d10)) {
                    final RegisterMfaContinuation registerMfaContinuation = new RegisterMfaContinuation(this, this.f5413a, this.f5418f, this.f5415c, this.f5421i, respondToAuthChallengeResult, z10, authenticationHandler);
                    return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.33
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(registerMfaContinuation);
                        }
                    };
                } else if ("DEVICE_SRP_AUTH".equals(d10)) {
                    return v(map, respondToAuthChallengeResult, authenticationHandler, z10);
                } else {
                    if ("NEW_PASSWORD_REQUIRED".equals(d10)) {
                        Context context = this.f5413a;
                        String str = this.f5418f;
                        String str2 = this.f5415c;
                        final NewPasswordContinuation newPasswordContinuation = new NewPasswordContinuation(this, context, str, str2, CognitoSecretHash.a(str, str2, this.f5416d), respondToAuthChallengeResult, z10, authenticationHandler);
                        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.34
                            @Override // java.lang.Runnable
                            public void run() {
                                authenticationHandler.a(newPasswordContinuation);
                            }
                        };
                    }
                    Context context2 = this.f5413a;
                    String str3 = this.f5418f;
                    String str4 = this.f5415c;
                    final ChallengeContinuation challengeContinuation = new ChallengeContinuation(this, context2, str3, str4, CognitoSecretHash.a(str3, str4, this.f5416d), respondToAuthChallengeResult, z10, authenticationHandler);
                    challengeContinuation.b(map);
                    return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.35
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(challengeContinuation);
                        }
                    };
                }
            }
            final MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation = new MultiFactorAuthenticationContinuation(this, this.f5413a, respondToAuthChallengeResult, z10, authenticationHandler);
            multiFactorAuthenticationContinuation.a(map);
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.31
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.b(multiFactorAuthenticationContinuation);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InitiateAuthRequest K(Map<String, String> map, AuthenticationDetails authenticationDetails, AuthenticationHelper authenticationHelper) {
        InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
        initiateAuthRequest.B("CUSTOM_AUTH");
        initiateAuthRequest.D(this.f5415c);
        initiateAuthRequest.E(map);
        Map<String, String> a10 = authenticationDetails.a();
        if (this.f5416d != null && a10.get("SECRET_HASH") == null) {
            String a11 = CognitoSecretHash.a(authenticationDetails.e(), this.f5415c, this.f5416d);
            this.f5421i = a11;
            a10.put("SECRET_HASH", a11);
        }
        if ("SRP_A".equals(authenticationDetails.c())) {
            a10.put("SRP_A", authenticationHelper.b().toString(16));
        }
        initiateAuthRequest.C(authenticationDetails.a());
        if (authenticationDetails.f() != null && authenticationDetails.f().size() > 0) {
            HashMap hashMap = new HashMap();
            for (AttributeType attributeType : authenticationDetails.f()) {
                hashMap.put(attributeType.b(), attributeType.d());
            }
            initiateAuthRequest.E(hashMap);
        }
        initiateAuthRequest.F(F());
        return initiateAuthRequest;
    }

    private RespondToAuthChallengeRequest L(Map<String, String> map, RespondToAuthChallengeResult respondToAuthChallengeResult, AuthenticationHelper authenticationHelper) {
        RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
        respondToAuthChallengeRequest.E(this.f5415c);
        respondToAuthChallengeRequest.C("DEVICE_SRP_AUTH");
        respondToAuthChallengeRequest.F(map);
        respondToAuthChallengeRequest.G(respondToAuthChallengeResult.f());
        respondToAuthChallengeRequest.r("USERNAME", this.f5418f);
        respondToAuthChallengeRequest.r("SRP_A", authenticationHelper.b().toString(16));
        respondToAuthChallengeRequest.r("DEVICE_KEY", this.f5419g);
        respondToAuthChallengeRequest.r("SECRET_HASH", this.f5421i);
        respondToAuthChallengeRequest.H(F());
        return respondToAuthChallengeRequest;
    }

    private InitiateAuthRequest M(CognitoUserSession cognitoUserSession) {
        InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
        initiateAuthRequest.r("REFRESH_TOKEN", cognitoUserSession.c().a());
        if (this.f5419g == null) {
            String str = this.f5418f;
            if (str != null) {
                this.f5419g = CognitoDeviceHelper.j(str, this.f5420h.h(), this.f5413a);
            } else {
                this.f5419g = CognitoDeviceHelper.j(cognitoUserSession.d(), this.f5420h.h(), this.f5413a);
            }
        }
        initiateAuthRequest.r("DEVICE_KEY", this.f5419g);
        initiateAuthRequest.r("SECRET_HASH", this.f5416d);
        initiateAuthRequest.D(this.f5415c);
        initiateAuthRequest.B("REFRESH_TOKEN_AUTH");
        String d10 = this.f5420h.d();
        if (d10 != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.d(d10);
            initiateAuthRequest.A(analyticsMetadataType);
        }
        initiateAuthRequest.F(F());
        return initiateAuthRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InitiateAuthRequest O(Map<String, String> map, AuthenticationDetails authenticationDetails) {
        if (!StringUtils.a(authenticationDetails.e()) && !StringUtils.a(authenticationDetails.d())) {
            InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
            initiateAuthRequest.B("USER_PASSWORD_AUTH");
            initiateAuthRequest.D(this.f5415c);
            initiateAuthRequest.E(map);
            initiateAuthRequest.r("USERNAME", authenticationDetails.e());
            initiateAuthRequest.r("PASSWORD", authenticationDetails.d());
            initiateAuthRequest.r("SECRET_HASH", CognitoSecretHash.a(this.f5417e, this.f5415c, this.f5416d));
            if (authenticationDetails.f() != null && authenticationDetails.f().size() > 0) {
                HashMap hashMap = new HashMap();
                for (AttributeType attributeType : authenticationDetails.f()) {
                    hashMap.put(attributeType.b(), attributeType.d());
                }
                initiateAuthRequest.E(hashMap);
            }
            return initiateAuthRequest;
        }
        throw new CognitoNotAuthorizedException("User name and password are required");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InitiateAuthRequest P(Map<String, String> map, AuthenticationDetails authenticationDetails, AuthenticationHelper authenticationHelper) {
        this.f5417e = authenticationDetails.e();
        InitiateAuthRequest initiateAuthRequest = new InitiateAuthRequest();
        initiateAuthRequest.B("USER_SRP_AUTH");
        initiateAuthRequest.D(this.f5415c);
        initiateAuthRequest.E(map);
        initiateAuthRequest.r("SECRET_HASH", CognitoSecretHash.a(this.f5417e, this.f5415c, this.f5416d));
        initiateAuthRequest.r("USERNAME", authenticationDetails.e());
        initiateAuthRequest.r("SRP_A", authenticationHelper.b().toString(16));
        String str = this.f5419g;
        if (str == null) {
            initiateAuthRequest.r("DEVICE_KEY", CognitoDeviceHelper.j(authenticationDetails.e(), this.f5420h.h(), this.f5413a));
        } else {
            initiateAuthRequest.r("DEVICE_KEY", str);
        }
        if (authenticationDetails.f() != null && authenticationDetails.f().size() > 0) {
            HashMap hashMap = new HashMap();
            for (AttributeType attributeType : authenticationDetails.f()) {
                hashMap.put(attributeType.b(), attributeType.d());
            }
            initiateAuthRequest.E(hashMap);
        }
        String d10 = this.f5420h.d();
        if (d10 != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.d(d10);
            initiateAuthRequest.A(analyticsMetadataType);
        }
        initiateAuthRequest.F(F());
        return initiateAuthRequest;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00a7 A[Catch: Exception -> 0x0082, TryCatch #0 {Exception -> 0x0082, blocks: (B:3:0x000a, B:6:0x0072, B:8:0x007c, B:13:0x009d, B:15:0x00a7, B:17:0x00b1, B:20:0x00cf, B:22:0x00d9, B:24:0x00e3, B:25:0x00e9, B:26:0x0100, B:18:0x00b7, B:11:0x0085), top: B:30:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d9 A[Catch: Exception -> 0x0082, TryCatch #0 {Exception -> 0x0082, blocks: (B:3:0x000a, B:6:0x0072, B:8:0x007c, B:13:0x009d, B:15:0x00a7, B:17:0x00b1, B:20:0x00cf, B:22:0x00d9, B:24:0x00e3, B:25:0x00e9, B:26:0x0100, B:18:0x00b7, B:11:0x0085), top: B:30:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserSession Q() {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.Q():com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserSession");
    }

    private CognitoUserSession R(CognitoUserSession cognitoUserSession) {
        InitiateAuthResult m10 = this.f5414b.m(M(cognitoUserSession));
        if (m10.b() != null) {
            return B(m10.b(), cognitoUserSession.c());
        }
        throw new CognitoNotAuthorizedException("user is not authenticated");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResendConfirmationCodeResult U(Map<String, String> map) {
        ResendConfirmationCodeRequest C = new ResendConfirmationCodeRequest().E(this.f5417e).B(this.f5415c).D(this.f5421i).C(map);
        String d10 = this.f5420h.d();
        C.A(F());
        if (d10 != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.d(d10);
            C.z(analyticsMetadataType);
        }
        return this.f5414b.d(C);
    }

    private Runnable W(final Map<String, String> map, final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z10) {
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.25
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AuthenticationHelper authenticationHelper = new AuthenticationHelper(CognitoUser.this.H());
                    InitiateAuthResult m10 = CognitoUser.this.f5414b.m(CognitoUser.this.K(map, authenticationDetails, authenticationHelper));
                    CognitoUser.this.Z(m10.e());
                    if ("PASSWORD_VERIFIER".equals(m10.d())) {
                        if (authenticationDetails.d() != null) {
                            CognitoUser.this.V(map, CognitoUser.this.a0(map, m10.e(), authenticationDetails.d(), m10.d(), m10.f(), authenticationHelper), authenticationHandler, z10).run();
                            return;
                        }
                        throw new IllegalStateException("Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge");
                    }
                    CognitoUser.this.I(map, m10, authenticationDetails, authenticationHandler, z10).run();
                } catch (Exception e10) {
                    authenticationHandler.onFailure(e10);
                }
            }
        };
    }

    private Runnable X(final Map<String, String> map, final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z10) {
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.37
            @Override // java.lang.Runnable
            public void run() {
                try {
                    InitiateAuthResult m10 = CognitoUser.this.f5414b.m(CognitoUser.this.O(map, authenticationDetails));
                    CognitoUser.this.f5418f = m10.e().get("USER_ID_FOR_SRP");
                    CognitoUser.this.I(map, m10, authenticationDetails, authenticationHandler, z10).run();
                } catch (Exception e10) {
                    authenticationHandler.onFailure(e10);
                }
            }
        };
    }

    private Runnable Y(final Map<String, String> map, final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z10) {
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.24
            @Override // java.lang.Runnable
            public void run() {
                AuthenticationHelper authenticationHelper = new AuthenticationHelper(CognitoUser.this.f5420h.h());
                try {
                    InitiateAuthResult m10 = CognitoUser.this.f5414b.m(CognitoUser.this.P(map, authenticationDetails, authenticationHelper));
                    CognitoUser.this.Z(m10.e());
                    if ("PASSWORD_VERIFIER".equals(m10.d())) {
                        if (authenticationDetails.d() != null) {
                            CognitoUser.this.V(map, CognitoUser.this.a0(map, m10.e(), authenticationDetails.d(), m10.d(), m10.f(), authenticationHelper), authenticationHandler, z10).run();
                            return;
                        }
                        throw new IllegalStateException("Failed to find password in authentication details to response to PASSWORD_VERIFIER challenge");
                    }
                    CognitoUser.this.I(map, m10, authenticationDetails, authenticationHandler, z10).run();
                } catch (ResourceNotFoundException e10) {
                    CognitoUser cognitoUser = CognitoUser.this;
                    if (e10.getMessage().contains("Device")) {
                        CognitoDeviceHelper.d(CognitoUser.this.f5418f, CognitoUser.this.f5420h.h(), CognitoUser.this.f5413a);
                        AuthenticationContinuation authenticationContinuation = new AuthenticationContinuation(cognitoUser, CognitoUser.this.f5413a, z10, authenticationHandler);
                        authenticationContinuation.h(map);
                        authenticationHandler.c(authenticationContinuation, cognitoUser.G());
                        return;
                    }
                    authenticationHandler.onFailure(e10);
                } catch (Exception e11) {
                    authenticationHandler.onFailure(e11);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(Map<String, String> map) {
        if (this.f5418f == null && map != null && map.containsKey("USERNAME")) {
            String str = map.get("USERNAME");
            this.f5418f = str;
            this.f5419g = CognitoDeviceHelper.j(str, this.f5420h.h(), this.f5413a);
            if (this.f5421i == null) {
                this.f5421i = CognitoSecretHash.a(this.f5418f, this.f5415c, this.f5416d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RespondToAuthChallengeRequest a0(Map<String, String> map, Map<String, String> map2, String str, String str2, String str3, AuthenticationHelper authenticationHelper) {
        String str4 = map2.get("USERNAME");
        String str5 = map2.get("USER_ID_FOR_SRP");
        String str6 = map2.get("SALT");
        String str7 = map2.get("SECRET_BLOCK");
        this.f5418f = str4;
        this.f5419g = CognitoDeviceHelper.j(str4, this.f5420h.h(), this.f5413a);
        this.f5421i = CognitoSecretHash.a(this.f5418f, this.f5415c, this.f5416d);
        BigInteger bigInteger = new BigInteger(map2.get("SRP_B"), 16);
        if (!bigInteger.mod(AuthenticationHelper.f5532d).equals(BigInteger.ZERO)) {
            byte[] c10 = authenticationHelper.c(str5, str, bigInteger, new BigInteger(str6, 16));
            Date date = new Date();
            try {
                Mac mac = Mac.getInstance("HmacSHA256");
                mac.init(new SecretKeySpec(c10, "HmacSHA256"));
                String str8 = this.f5420h.h().split("_", 2)[1];
                Charset charset = StringUtils.f6417a;
                mac.update(str8.getBytes(charset));
                mac.update(str5.getBytes(charset));
                mac.update(Base64.decode(str7));
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM d HH:mm:ss z yyyy", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                String format = simpleDateFormat.format(date);
                byte[] doFinal = mac.doFinal(format.getBytes(charset));
                HashMap hashMap = new HashMap();
                hashMap.put("PASSWORD_CLAIM_SECRET_BLOCK", str7);
                hashMap.put("PASSWORD_CLAIM_SIGNATURE", new String(Base64.encode(doFinal), charset));
                hashMap.put("TIMESTAMP", format);
                hashMap.put("USERNAME", this.f5418f);
                hashMap.put("DEVICE_KEY", this.f5419g);
                hashMap.put("SECRET_HASH", this.f5421i);
                RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
                respondToAuthChallengeRequest.C(str2);
                respondToAuthChallengeRequest.E(this.f5415c);
                respondToAuthChallengeRequest.G(str3);
                respondToAuthChallengeRequest.D(hashMap);
                respondToAuthChallengeRequest.F(map);
                String d10 = this.f5420h.d();
                if (d10 != null) {
                    AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
                    analyticsMetadataType.d(d10);
                    respondToAuthChallengeRequest.B(analyticsMetadataType);
                }
                respondToAuthChallengeRequest.H(F());
                return respondToAuthChallengeRequest;
            } catch (Exception e10) {
                throw new CognitoInternalErrorException("SRP error", e10);
            }
        }
        throw new CognitoInternalErrorException("SRP error, B cannot be zero");
    }

    private void r() {
        try {
            String format = String.format("CognitoIdentityProvider.%s.%s.idToken", this.f5415c, this.f5417e);
            String format2 = String.format("CognitoIdentityProvider.%s.%s.accessToken", this.f5415c, this.f5417e);
            String format3 = String.format("CognitoIdentityProvider.%s.%s.refreshToken", this.f5415c, this.f5417e);
            this.f5420h.f5554j.p(format);
            this.f5420h.f5554j.p(format2);
            this.f5420h.f5554j.p(format3);
        } catch (Exception e10) {
            f5411k.b("Error while deleting from SharedPreferences", e10);
        }
    }

    private ConfirmDeviceResult s(NewDeviceMetadataType newDeviceMetadataType) {
        Map<String, String> f10 = CognitoDeviceHelper.f(newDeviceMetadataType.d(), newDeviceMetadataType.b());
        new ConfirmDeviceResult().e(Boolean.FALSE);
        try {
            ConfirmDeviceResult t10 = t(z(), newDeviceMetadataType.d(), f10.get("verifier"), f10.get("salt"), CognitoDeviceHelper.k());
            CognitoDeviceHelper.b(this.f5418f, this.f5420h.h(), newDeviceMetadataType.d(), this.f5413a);
            CognitoDeviceHelper.c(this.f5418f, this.f5420h.h(), f10.get("secret"), this.f5413a);
            CognitoDeviceHelper.a(this.f5418f, this.f5420h.h(), newDeviceMetadataType.b(), this.f5413a);
            return t10;
        } catch (Exception e10) {
            f5411k.b("Device confirmation failed: ", e10);
            return null;
        }
    }

    private ConfirmDeviceResult t(CognitoUserSession cognitoUserSession, String str, String str2, String str3, String str4) {
        if (cognitoUserSession != null && cognitoUserSession.e()) {
            if (str != null && str4 != null) {
                DeviceSecretVerifierConfigType deviceSecretVerifierConfigType = new DeviceSecretVerifierConfigType();
                deviceSecretVerifierConfigType.e(str2);
                deviceSecretVerifierConfigType.f(str3);
                ConfirmDeviceRequest confirmDeviceRequest = new ConfirmDeviceRequest();
                confirmDeviceRequest.v(cognitoUserSession.a().c());
                confirmDeviceRequest.y(str);
                confirmDeviceRequest.z(str4);
                confirmDeviceRequest.A(deviceSecretVerifierConfigType);
                return this.f5414b.e(confirmDeviceRequest);
            } else if (str == null) {
                throw new CognitoParameterInvalidException("Device key is null");
            } else {
                throw new CognitoParameterInvalidException("Device name is null");
            }
        }
        throw new CognitoNotAuthorizedException("User is not authorized");
    }

    private Runnable v(final Map<String, String> map, RespondToAuthChallengeResult respondToAuthChallengeResult, final AuthenticationHandler authenticationHandler, final boolean z10) {
        String l10 = CognitoDeviceHelper.l(this.f5418f, this.f5420h.h(), this.f5413a);
        String i10 = CognitoDeviceHelper.i(this.f5418f, this.f5420h.h(), this.f5413a);
        AuthenticationHelper authenticationHelper = new AuthenticationHelper(i10);
        try {
            RespondToAuthChallengeResult q10 = this.f5414b.q(L(map, respondToAuthChallengeResult, authenticationHelper));
            if ("DEVICE_PASSWORD_VERIFIER".equals(q10.d())) {
                return J(map, this.f5414b.q(u(map, q10, l10, i10, authenticationHelper)), null, authenticationHandler, z10);
            }
            return J(map, q10, null, authenticationHandler, z10);
        } catch (NotAuthorizedException unused) {
            CognitoDeviceHelper.d(this.f5418f, this.f5420h.h(), this.f5413a);
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.38
                @Override // java.lang.Runnable
                public void run() {
                    AuthenticationContinuation authenticationContinuation = new AuthenticationContinuation(this, CognitoUser.this.f5413a, z10, authenticationHandler);
                    authenticationContinuation.h(map);
                    authenticationHandler.c(authenticationContinuation, this.G());
                }
            };
        } catch (Exception e10) {
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.39
                @Override // java.lang.Runnable
                public void run() {
                    authenticationHandler.onFailure(e10);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ForgotPasswordResult y(Map<String, String> map) {
        ForgotPasswordRequest forgotPasswordRequest = new ForgotPasswordRequest();
        forgotPasswordRequest.A(this.f5415c);
        forgotPasswordRequest.C(this.f5421i);
        forgotPasswordRequest.E(this.f5417e);
        forgotPasswordRequest.D(F());
        forgotPasswordRequest.B(map);
        String d10 = this.f5420h.d();
        if (d10 != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.d(d10);
            forgotPasswordRequest.z(analyticsMetadataType);
        }
        return this.f5414b.n(forgotPasswordRequest);
    }

    public void C(AuthenticationHandler authenticationHandler) {
        D(Collections.emptyMap(), authenticationHandler);
    }

    public void D(Map<String, String> map, AuthenticationHandler authenticationHandler) {
        if (authenticationHandler != null) {
            try {
                z();
                authenticationHandler.d(this.f5422j, null);
                return;
            } catch (CognitoNotAuthorizedException unused) {
                AuthenticationContinuation authenticationContinuation = new AuthenticationContinuation(this, this.f5413a, false, authenticationHandler);
                authenticationContinuation.h(map);
                authenticationHandler.c(authenticationContinuation, G());
                return;
            } catch (InvalidParameterException e10) {
                authenticationHandler.onFailure(e10);
                return;
            } catch (Exception e11) {
                authenticationHandler.onFailure(e11);
                return;
            }
        }
        throw new InvalidParameterException("callback is null");
    }

    public void E(final AuthenticationHandler authenticationHandler) {
        if (authenticationHandler != null) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnable;
                    Handler handler = new Handler(CognitoUser.this.f5413a.getMainLooper());
                    try {
                        CognitoUser.this.z();
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                authenticationHandler.d(CognitoUser.this.f5422j, null);
                            }
                        };
                    } catch (CognitoNotAuthorizedException unused) {
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                                AuthenticationContinuation authenticationContinuation = new AuthenticationContinuation(this, CognitoUser.this.f5413a, true, authenticationHandler);
                                AnonymousClass5 anonymousClass52 = AnonymousClass5.this;
                                authenticationHandler.c(authenticationContinuation, this.G());
                            }
                        };
                    } catch (Exception e10) {
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.5.3
                            @Override // java.lang.Runnable
                            public void run() {
                                authenticationHandler.onFailure(e10);
                            }
                        };
                    }
                    handler.post(runnable);
                }
            }).start();
            return;
        }
        throw new CognitoParameterInvalidException("callback is null");
    }

    public String G() {
        return this.f5417e;
    }

    public String H() {
        return this.f5420h.h();
    }

    public Runnable N(Map<String, String> map, AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, final boolean z10) {
        final Runnable a10 = a(map, authenticationDetails, new AuthenticationHandler() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6
            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void a(final ChallengeContinuation challengeContinuation) {
                if (z10) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.4
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.a(challengeContinuation);
                        }
                    });
                } else {
                    authenticationHandler.a(challengeContinuation);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void b(final MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation) {
                if (z10) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.3
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.b(multiFactorAuthenticationContinuation);
                        }
                    });
                } else {
                    authenticationHandler.b(multiFactorAuthenticationContinuation);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void c(final AuthenticationContinuation authenticationContinuation, final String str) {
                if (z10) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.2
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.c(authenticationContinuation, str);
                        }
                    });
                } else {
                    authenticationHandler.c(authenticationContinuation, str);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void d(final CognitoUserSession cognitoUserSession, final CognitoDevice cognitoDevice) {
                if (z10) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.d(cognitoUserSession, cognitoDevice);
                        }
                    });
                } else {
                    authenticationHandler.d(cognitoUserSession, cognitoDevice);
                }
            }

            @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler
            public void onFailure(final Exception exc) {
                if (z10) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.6.5
                        @Override // java.lang.Runnable
                        public void run() {
                            authenticationHandler.onFailure(exc);
                        }
                    });
                } else {
                    authenticationHandler.onFailure(exc);
                }
            }
        }, z10);
        if (z10) {
            return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.7
                @Override // java.lang.Runnable
                public void run() {
                    new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            a10.run();
                        }
                    }).start();
                }
            };
        }
        return a10;
    }

    public void S(VerificationHandler verificationHandler) {
        T(Collections.emptyMap(), verificationHandler);
    }

    public void T(final Map<String, String> map, final VerificationHandler verificationHandler) {
        if (verificationHandler != null) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.2
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnable;
                    Handler handler = new Handler(CognitoUser.this.f5413a.getMainLooper());
                    try {
                        final ResendConfirmationCodeResult U = CognitoUser.this.U(map);
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                verificationHandler.a(new CognitoUserCodeDeliveryDetails(U.b()));
                            }
                        };
                    } catch (Exception e10) {
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                verificationHandler.onFailure(e10);
                            }
                        };
                    }
                    handler.post(runnable);
                }
            }).start();
            return;
        }
        throw new CognitoParameterInvalidException("callback is null");
    }

    public Runnable V(final Map<String, String> map, RespondToAuthChallengeRequest respondToAuthChallengeRequest, final AuthenticationHandler authenticationHandler, final boolean z10) {
        if (respondToAuthChallengeRequest != null) {
            try {
                if (respondToAuthChallengeRequest.u() != null) {
                    respondToAuthChallengeRequest.u().put("DEVICE_KEY", this.f5419g);
                }
            } catch (ResourceNotFoundException e10) {
                if (e10.getMessage().contains("Device")) {
                    CognitoDeviceHelper.d(this.f5418f, this.f5420h.h(), this.f5413a);
                    return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.21
                        @Override // java.lang.Runnable
                        public void run() {
                            AuthenticationContinuation authenticationContinuation = new AuthenticationContinuation(this, CognitoUser.this.f5413a, z10, authenticationHandler);
                            authenticationContinuation.h(map);
                            authenticationHandler.c(authenticationContinuation, this.G());
                        }
                    };
                }
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.22
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.onFailure(e10);
                    }
                };
            } catch (Exception e11) {
                return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.23
                    @Override // java.lang.Runnable
                    public void run() {
                        authenticationHandler.onFailure(e11);
                    }
                };
            }
        }
        return J(map, this.f5414b.q(respondToAuthChallengeRequest), null, authenticationHandler, z10);
    }

    Runnable a(Map<String, String> map, final AuthenticationDetails authenticationDetails, final AuthenticationHandler authenticationHandler, boolean z10) {
        if ("PASSWORD_VERIFIER".equals(authenticationDetails.b())) {
            return Y(map, authenticationDetails, authenticationHandler, z10);
        }
        if ("CUSTOM_CHALLENGE".equals(authenticationDetails.b())) {
            return W(map, authenticationDetails, authenticationHandler, z10);
        }
        if ("USER_PASSWORD".equals(authenticationDetails.b())) {
            return X(map, authenticationDetails, authenticationHandler, z10);
        }
        return new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.8
            @Override // java.lang.Runnable
            public void run() {
                AuthenticationHandler authenticationHandler2 = authenticationHandler;
                authenticationHandler2.onFailure(new CognitoParameterInvalidException("Unsupported authentication type " + authenticationDetails.b()));
            }
        };
    }

    void p() {
        try {
            this.f5420h.f5554j.o("CognitoIdentityProvider." + this.f5415c + ".LastAuthUser", this.f5417e);
        } catch (Exception e10) {
            f5411k.b("Error while writing to SharedPreferences.", e10);
        }
    }

    void q(CognitoUserSession cognitoUserSession) {
        String str;
        String str2;
        try {
            String str3 = "CognitoIdentityProvider." + this.f5415c + "." + this.f5417e + ".idToken";
            String str4 = "CognitoIdentityProvider." + this.f5415c + "." + this.f5417e + ".accessToken";
            String str5 = "CognitoIdentityProvider." + this.f5415c + "." + this.f5417e + ".refreshToken";
            String str6 = "CognitoIdentityProvider." + this.f5415c + ".LastAuthUser";
            if (cognitoUserSession != null) {
                AWSKeyValueStore aWSKeyValueStore = this.f5420h.f5554j;
                String str7 = null;
                if (cognitoUserSession.b() != null) {
                    str = cognitoUserSession.b().c();
                } else {
                    str = null;
                }
                aWSKeyValueStore.o(str3, str);
                AWSKeyValueStore aWSKeyValueStore2 = this.f5420h.f5554j;
                if (cognitoUserSession.a() != null) {
                    str2 = cognitoUserSession.a().c();
                } else {
                    str2 = null;
                }
                aWSKeyValueStore2.o(str4, str2);
                AWSKeyValueStore aWSKeyValueStore3 = this.f5420h.f5554j;
                if (cognitoUserSession.c() != null) {
                    str7 = cognitoUserSession.c().a();
                }
                aWSKeyValueStore3.o(str5, str7);
            }
            this.f5420h.f5554j.o(str6, this.f5417e);
        } catch (Exception e10) {
            f5411k.b("Error while writing to SharedPreferences.", e10);
        }
    }

    public RespondToAuthChallengeRequest u(Map<String, String> map, RespondToAuthChallengeResult respondToAuthChallengeResult, String str, String str2, AuthenticationHelper authenticationHelper) {
        this.f5418f = respondToAuthChallengeResult.e().get("USERNAME");
        BigInteger bigInteger = new BigInteger(respondToAuthChallengeResult.e().get("SRP_B"), 16);
        if (!bigInteger.mod(AuthenticationHelper.f5532d).equals(BigInteger.ZERO)) {
            byte[] c10 = authenticationHelper.c(this.f5419g, str, bigInteger, new BigInteger(respondToAuthChallengeResult.e().get("SALT"), 16));
            Date date = new Date();
            try {
                Mac mac = Mac.getInstance("HmacSHA256");
                mac.init(new SecretKeySpec(c10, "HmacSHA256"));
                Charset charset = StringUtils.f6417a;
                mac.update(str2.getBytes(charset));
                mac.update(this.f5419g.getBytes(charset));
                mac.update(Base64.decode(respondToAuthChallengeResult.e().get("SECRET_BLOCK")));
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM d HH:mm:ss z yyyy", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                String format = simpleDateFormat.format(date);
                byte[] doFinal = mac.doFinal(format.getBytes(charset));
                this.f5421i = CognitoSecretHash.a(this.f5418f, this.f5415c, this.f5416d);
                HashMap hashMap = new HashMap();
                hashMap.put("PASSWORD_CLAIM_SECRET_BLOCK", respondToAuthChallengeResult.e().get("SECRET_BLOCK"));
                hashMap.put("PASSWORD_CLAIM_SIGNATURE", new String(Base64.encode(doFinal), charset));
                hashMap.put("TIMESTAMP", format);
                hashMap.put("USERNAME", this.f5418f);
                hashMap.put("DEVICE_KEY", this.f5419g);
                hashMap.put("SECRET_HASH", this.f5421i);
                RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
                respondToAuthChallengeRequest.C(respondToAuthChallengeResult.d());
                respondToAuthChallengeRequest.E(this.f5415c);
                respondToAuthChallengeRequest.G(respondToAuthChallengeResult.f());
                respondToAuthChallengeRequest.D(hashMap);
                respondToAuthChallengeRequest.H(F());
                respondToAuthChallengeRequest.F(map);
                return respondToAuthChallengeRequest;
            } catch (Exception e10) {
                throw new CognitoInternalErrorException("SRP error", e10);
            }
        }
        throw new CognitoInternalErrorException("SRP error, B cannot be zero");
    }

    public void w(ForgotPasswordHandler forgotPasswordHandler) {
        x(Collections.emptyMap(), forgotPasswordHandler);
    }

    public void x(final Map<String, String> map, final ForgotPasswordHandler forgotPasswordHandler) {
        if (forgotPasswordHandler != null) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.3
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnable;
                    Handler handler = new Handler(CognitoUser.this.f5413a.getMainLooper());
                    try {
                        final ForgotPasswordContinuation forgotPasswordContinuation = new ForgotPasswordContinuation(this, new CognitoUserCodeDeliveryDetails(CognitoUser.this.y(map).b()), true, forgotPasswordHandler);
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                forgotPasswordHandler.a(forgotPasswordContinuation);
                            }
                        };
                    } catch (Exception e10) {
                        runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser.3.2
                            @Override // java.lang.Runnable
                            public void run() {
                                forgotPasswordHandler.onFailure(e10);
                            }
                        };
                    }
                    handler.post(runnable);
                }
            }).start();
            return;
        }
        throw new CognitoParameterInvalidException("callback is null");
    }

    protected CognitoUserSession z() {
        synchronized (f5412l) {
            try {
                if (this.f5417e != null) {
                    CognitoUserSession cognitoUserSession = this.f5422j;
                    if (cognitoUserSession != null && cognitoUserSession.f()) {
                        p();
                        return this.f5422j;
                    }
                    CognitoUserSession Q = Q();
                    if (Q.f()) {
                        this.f5422j = Q;
                        p();
                        return this.f5422j;
                    } else if (Q.c() != null) {
                        try {
                            try {
                                CognitoUserSession R = R(Q);
                                this.f5422j = R;
                                q(R);
                                return this.f5422j;
                            } catch (NotAuthorizedException e10) {
                                r();
                                throw new CognitoNotAuthorizedException("User is not authenticated", e10);
                            }
                        } catch (UserNotFoundException e11) {
                            r();
                            throw new CognitoNotAuthorizedException("User does not exist", e11);
                        } catch (Exception e12) {
                            throw new CognitoInternalErrorException("Failed to authenticate user", e12);
                        }
                    } else {
                        throw new CognitoNotAuthorizedException("User is not authenticated");
                    }
                }
                throw new CognitoNotAuthorizedException("User-ID is null");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
