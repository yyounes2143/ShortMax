package com.amazonaws.mobile.client.internal.oauth2;

import android.content.ComponentName;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.amazonaws.mobile.client.AWSMobileClient;
import com.amazonaws.mobile.client.Callback;
import com.bytedance.vodsetting.Module;
/* loaded from: classes2.dex */
public class OAuth2Client {

    /* renamed from: q  reason: collision with root package name */
    public static final String f5374q = "OAuth2Client";

    /* renamed from: a  reason: collision with root package name */
    final AWSMobileClient f5375a;

    /* renamed from: b  reason: collision with root package name */
    final CustomTabsServiceConnection f5376b;

    /* renamed from: c  reason: collision with root package name */
    final Context f5377c;

    /* renamed from: f  reason: collision with root package name */
    CustomTabsClient f5380f;

    /* renamed from: g  reason: collision with root package name */
    CustomTabsSession f5381g;

    /* renamed from: j  reason: collision with root package name */
    Callback<AuthorizeResponse> f5384j;

    /* renamed from: k  reason: collision with root package name */
    private String f5385k;

    /* renamed from: l  reason: collision with root package name */
    private String f5386l;

    /* renamed from: m  reason: collision with root package name */
    private String f5387m;

    /* renamed from: n  reason: collision with root package name */
    private String f5388n;

    /* renamed from: o  reason: collision with root package name */
    private Callback<Void> f5389o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f5390p;

    /* renamed from: e  reason: collision with root package name */
    boolean f5379e = true;

    /* renamed from: i  reason: collision with root package name */
    PKCEMode f5383i = PKCEMode.S256;

    /* renamed from: d  reason: collision with root package name */
    private final OAuth2ClientStore f5378d = new OAuth2ClientStore(this);

    /* renamed from: h  reason: collision with root package name */
    CustomTabsCallback f5382h = new CustomTabsCallback() { // from class: com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.1
        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i10, Bundle bundle) {
            super.onNavigationEvent(i10, bundle);
            if (i10 == 6 && !OAuth2Client.this.f5390p) {
                if (OAuth2Client.this.f5389o != null) {
                    OAuth2Client.this.f5389o.onError(new Exception("User cancelled flow or flow interrupted."));
                    OAuth2Client.this.f5389o = null;
                    return;
                }
                Callback<AuthorizeResponse> callback = OAuth2Client.this.f5384j;
                if (callback != null) {
                    callback.onError(new Exception("User cancelled flow or flow interrupted."));
                    OAuth2Client.this.f5384j = null;
                }
            }
        }
    };

    /* loaded from: classes2.dex */
    public enum PKCEMode {
        NONE(""),
        S256("S256");
        
        private String encode;

        PKCEMode(String str) {
            this.encode = str;
        }

        public boolean equals(PKCEMode pKCEMode) {
            return pKCEMode.encode.equals(this.encode);
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.encode;
        }
    }

    public OAuth2Client(Context context, AWSMobileClient aWSMobileClient) {
        this.f5375a = aWSMobileClient;
        this.f5377c = context;
        CustomTabsServiceConnection customTabsServiceConnection = new CustomTabsServiceConnection() { // from class: com.amazonaws.mobile.client.internal.oauth2.OAuth2Client.2
            @Override // androidx.browser.customtabs.CustomTabsServiceConnection
            public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
                OAuth2Client.this.f5380f = customTabsClient;
                customTabsClient.warmup(0L);
                OAuth2Client oAuth2Client = OAuth2Client.this;
                oAuth2Client.f5381g = oAuth2Client.f5380f.newSession(oAuth2Client.f5382h);
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                OAuth2Client.this.f5380f = null;
            }
        };
        this.f5376b = customTabsServiceConnection;
        if (!CustomTabsClient.bindCustomTabsService(context, "com.android.chrome", customTabsServiceConnection)) {
            Log.d(f5374q, "OAuth2Client: Failed to pre-warm custom tab, first page load may be slower");
        }
    }

    public boolean d(Uri uri) {
        if (uri == null) {
            return false;
        }
        String a10 = this.f5378d.a("signInRedirectUri");
        String a11 = this.f5378d.a("signOutRedirectUri");
        if (a10 != null) {
            Uri parse = Uri.parse(a10);
            if (uri.getScheme().equals(parse.getScheme()) && uri.getAuthority().equals(parse.getAuthority()) && uri.getPath().equals(parse.getPath()) && uri.getQueryParameterNames().containsAll(parse.getQueryParameterNames())) {
                String queryParameter = uri.getQueryParameter(Module.ResponseKey.Code);
                if (!this.f5378d.a("state").equals(uri.getQueryParameter("state"))) {
                    return false;
                }
                this.f5386l = uri.getQueryParameter("error");
                this.f5387m = uri.getQueryParameter("error_description");
                this.f5388n = uri.getQueryParameter("error_uri");
                this.f5390p = true;
                if (this.f5386l != null) {
                    Callback<AuthorizeResponse> callback = this.f5384j;
                    if (callback != null) {
                        callback.onError(new OAuth2Exception("Authorization call failed with response from authorization server", this.f5386l, this.f5387m, this.f5388n));
                        this.f5384j = null;
                    }
                    return true;
                } else if (queryParameter == null) {
                    return false;
                } else {
                    if (this.f5384j != null) {
                        AuthorizeResponse authorizeResponse = new AuthorizeResponse();
                        authorizeResponse.f5373b = queryParameter;
                        authorizeResponse.f5372a = uri;
                        this.f5384j.onResult(authorizeResponse);
                        this.f5384j = null;
                    }
                    return true;
                }
            }
        }
        if (a11 != null) {
            Uri parse2 = Uri.parse(a11);
            if (uri.getScheme().equals(parse2.getScheme()) && uri.getAuthority().equals(parse2.getAuthority()) && uri.getPath().equals(parse2.getPath()) && uri.getQueryParameterNames().containsAll(parse2.getQueryParameterNames())) {
                this.f5390p = true;
                Callback<Void> callback2 = this.f5389o;
                if (callback2 != null) {
                    callback2.onResult(null);
                    this.f5389o = null;
                }
                return true;
            }
        }
        return false;
    }

    public void e(boolean z10) {
        this.f5379e = z10;
        this.f5378d.b(z10);
    }

    public void f(String str) {
        this.f5385k = str;
    }
}
