package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import android.content.Context;
import android.os.Handler;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.auth.AnonymousAWSCredentials;
import com.amazonaws.cognito.clientcontext.data.UserContextDataProvider;
import com.amazonaws.internal.keyvaluestore.AWSKeyValueStore;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobile.config.AWSConfiguration;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.SignUpHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoDeviceHelper;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoPinpointSharedContext;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoSecretHash;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentityprovider.AmazonCognitoIdentityProviderClient;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class CognitoUserPool {

    /* renamed from: k  reason: collision with root package name */
    private static final Log f5544k = LogFactory.b(CognitoUserPool.class);

    /* renamed from: a  reason: collision with root package name */
    private final String f5545a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5546b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5547c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f5548d;

    /* renamed from: e  reason: collision with root package name */
    private AmazonCognitoIdentityProvider f5549e;

    /* renamed from: f  reason: collision with root package name */
    private String f5550f;

    /* renamed from: g  reason: collision with root package name */
    private String f5551g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5552h = true;

    /* renamed from: i  reason: collision with root package name */
    private boolean f5553i = true;

    /* renamed from: j  reason: collision with root package name */
    AWSKeyValueStore f5554j;

    public CognitoUserPool(Context context, AWSConfiguration aWSConfiguration) {
        try {
            i(context);
            JSONObject e10 = aWSConfiguration.e("CognitoUserPool");
            this.f5548d = context;
            this.f5545a = e10.getString("PoolId");
            this.f5546b = e10.getString("AppClientId");
            this.f5547c = e10.optString("AppClientSecret");
            this.f5551g = CognitoPinpointSharedContext.a(context, e10.optString("PinpointAppId"));
            ClientConfiguration clientConfiguration = new ClientConfiguration();
            clientConfiguration.l(aWSConfiguration.c());
            clientConfiguration.m(aWSConfiguration.d());
            AmazonCognitoIdentityProviderClient amazonCognitoIdentityProviderClient = new AmazonCognitoIdentityProviderClient(new AnonymousAWSCredentials(), clientConfiguration);
            this.f5549e = amazonCognitoIdentityProviderClient;
            amazonCognitoIdentityProviderClient.a(Region.e(Regions.fromName(e10.getString("Region"))));
        } catch (Exception e11) {
            throw new IllegalArgumentException("Failed to read PoolId, AppClientId, AppClientSecret, or Region from AWSConfiguration please check your setup or awsconfiguration.json file", e11);
        }
    }

    private void i(Context context) {
        this.f5554j = new AWSKeyValueStore(context, "CognitoIdentityProviderCache", this.f5553i);
        CognitoDeviceHelper.m(this.f5553i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SignUpResult m(String str, String str2, CognitoUserAttributes cognitoUserAttributes, Map<String, String> map, Map<String, String> map2) {
        ArrayList arrayList;
        if (map != null) {
            arrayList = new ArrayList();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                AttributeType attributeType = new AttributeType();
                attributeType.e(entry.getKey());
                attributeType.f(entry.getValue());
                arrayList.add(attributeType);
            }
        } else {
            arrayList = null;
        }
        this.f5550f = CognitoSecretHash.a(str, this.f5546b, this.f5547c);
        SignUpRequest K = new SignUpRequest().L(str).H(str2).F(this.f5546b).I(this.f5550f).J(cognitoUserAttributes.b()).M(arrayList).G(map2).K(g(str));
        String d10 = d();
        if (d10 != null) {
            AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
            analyticsMetadataType.d(d10);
            K.C(analyticsMetadataType);
        }
        return this.f5549e.f(K);
    }

    public CognitoUser c() {
        String str = "CognitoIdentityProvider." + this.f5546b + ".LastAuthUser";
        if (this.f5554j.b(str)) {
            return f(this.f5554j.g(str));
        }
        return e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String d() {
        return this.f5551g;
    }

    public CognitoUser e() {
        return new CognitoUser(this, null, this.f5546b, this.f5547c, null, this.f5549e, this.f5548d);
    }

    public CognitoUser f(String str) {
        if (str == null) {
            return e();
        }
        if (str.isEmpty()) {
            return e();
        }
        String str2 = this.f5546b;
        String str3 = this.f5547c;
        return new CognitoUser(this, str, str2, str3, CognitoSecretHash.a(str, str2, str3), this.f5549e, this.f5548d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UserContextDataType g(String str) {
        if (this.f5552h) {
            String a10 = UserContextDataProvider.c().a(this.f5548d, str, h(), this.f5546b);
            UserContextDataType userContextDataType = new UserContextDataType();
            userContextDataType.e(a10);
            return userContextDataType;
        }
        return null;
    }

    public String h() {
        return this.f5545a;
    }

    public void j(boolean z10) {
        this.f5553i = z10;
        this.f5554j.r(z10);
        CognitoDeviceHelper.m(z10);
    }

    public void k(String str, String str2, CognitoUserAttributes cognitoUserAttributes, Map<String, String> map, SignUpHandler signUpHandler) {
        l(str, str2, cognitoUserAttributes, map, Collections.emptyMap(), signUpHandler);
    }

    public void l(final String str, final String str2, final CognitoUserAttributes cognitoUserAttributes, final Map<String, String> map, final Map<String, String> map2, final SignUpHandler signUpHandler) {
        new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.1
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                Handler handler = new Handler(CognitoUserPool.this.f5548d.getMainLooper());
                try {
                    final SignUpResult m10 = CognitoUserPool.this.m(str, str2, cognitoUserAttributes, map, map2);
                    final CognitoUser f10 = CognitoUserPool.this.f(str);
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            signUpHandler.a(f10, m10);
                        }
                    };
                } catch (Exception e10) {
                    runnable = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            signUpHandler.onFailure(e10);
                        }
                    };
                }
                handler.post(runnable);
            }
        }).start();
    }

    public CognitoUserPool(Context context, String str, String str2, String str3, AmazonCognitoIdentityProvider amazonCognitoIdentityProvider, String str4, String str5) {
        i(context);
        this.f5548d = context;
        if (!str.isEmpty() && !str2.isEmpty()) {
            if (str.length() <= 55 && Pattern.matches("^[\\w-]+_[0-9a-zA-Z]+$", str)) {
                this.f5545a = str;
                this.f5546b = str2;
                this.f5547c = str3;
                this.f5549e = amazonCognitoIdentityProvider;
                this.f5551g = CognitoPinpointSharedContext.a(context, str4);
                if (str5 == null || str5.isEmpty()) {
                    return;
                }
                this.f5549e.b(str5);
                return;
            }
            throw new IllegalArgumentException("Invalid userPoolId format.");
        }
        throw new IllegalArgumentException("Both UserPoolId and ClientId are required.");
    }
}
