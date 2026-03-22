package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.bytedance.vodsetting.Module;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.AuthenticationToken;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.GraphRequest;
import com.facebook.appevents.h0;
import com.facebook.internal.u0;
import com.facebook.login.LoginClient;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LoginMethodHandler.kt */
@Metadata
@VisibleForTesting(otherwise = 3)
/* loaded from: classes3.dex */
public abstract class LoginMethodHandler implements Parcelable {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f16519c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f16520a;

    /* renamed from: b  reason: collision with root package name */
    public LoginClient f16521b;

    /* compiled from: LoginMethodHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLoginMethodHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginMethodHandler.kt\ncom/facebook/login/LoginMethodHandler$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,324:1\n37#2,2:325\n37#2,2:327\n37#2,2:329\n37#2,2:331\n*S KotlinDebug\n*F\n+ 1 LoginMethodHandler.kt\ncom/facebook/login/LoginMethodHandler$Companion\n*L\n273#1:325,2\n278#1:327,2\n283#1:329,2\n312#1:331,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final AccessToken a(@NotNull Bundle bundle, @Nullable AccessTokenSource accessTokenSource, @NotNull String applicationId) {
            String string;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Date y10 = u0.y(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
            ArrayList<String> stringArrayList = bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
            String string2 = bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
            Date y11 = u0.y(bundle, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME", new Date(0L));
            if (string2 == null || string2.length() == 0 || (string = bundle.getString("com.facebook.platform.extra.USER_ID")) == null || string.length() == 0) {
                return null;
            }
            return new AccessToken(string2, applicationId, string, stringArrayList, null, null, accessTokenSource, y10, new Date(), y11, bundle.getString("graph_domain"));
        }

        @Nullable
        public final AccessToken b(@Nullable Collection<String> collection, @NotNull Bundle bundle, @Nullable AccessTokenSource accessTokenSource, @NotNull String applicationId) throws FacebookException {
            Collection<String> collection2;
            ArrayList arrayList;
            ArrayList arrayList2;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            Intrinsics.checkNotNullParameter(applicationId, "applicationId");
            Date y10 = u0.y(bundle, "expires_in", new Date());
            String string = bundle.getString("access_token");
            if (string == null) {
                return null;
            }
            Date y11 = u0.y(bundle, "data_access_expiration_time", new Date(0L));
            String string2 = bundle.getString("granted_scopes");
            if (string2 != null && string2.length() > 0) {
                String[] strArr = (String[]) StringsKt.split$default(string2, new String[]{","}, false, 0, 6, null).toArray(new String[0]);
                collection2 = CollectionsKt.h(Arrays.copyOf(strArr, strArr.length));
            } else {
                collection2 = collection;
            }
            String string3 = bundle.getString("denied_scopes");
            if (string3 != null && string3.length() > 0) {
                String[] strArr2 = (String[]) StringsKt.split$default(string3, new String[]{","}, false, 0, 6, null).toArray(new String[0]);
                arrayList = CollectionsKt.h(Arrays.copyOf(strArr2, strArr2.length));
            } else {
                arrayList = null;
            }
            String string4 = bundle.getString("expired_scopes");
            if (string4 != null && string4.length() > 0) {
                String[] strArr3 = (String[]) StringsKt.split$default(string4, new String[]{","}, false, 0, 6, null).toArray(new String[0]);
                arrayList2 = CollectionsKt.h(Arrays.copyOf(strArr3, strArr3.length));
            } else {
                arrayList2 = null;
            }
            if (u0.d0(string)) {
                return null;
            }
            return new AccessToken(string, applicationId, e(bundle.getString("signed_request")), collection2, arrayList, arrayList2, accessTokenSource, y10, new Date(), y11, bundle.getString("graph_domain"));
        }

        @Nullable
        public final AuthenticationToken c(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString("com.facebook.platform.extra.ID_TOKEN");
            if (string != null && string.length() != 0 && str != null && str.length() != 0) {
                try {
                    return new AuthenticationToken(string, str);
                } catch (Exception e10) {
                    throw new FacebookException(e10.getMessage());
                }
            }
            return null;
        }

        @Nullable
        public final AuthenticationToken d(@NotNull Bundle bundle, @Nullable String str) throws FacebookException {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            String string = bundle.getString("id_token");
            if (string != null && string.length() != 0 && str != null && str.length() != 0) {
                try {
                    return new AuthenticationToken(string, str);
                } catch (Exception e10) {
                    throw new FacebookException(e10.getMessage(), e10);
                }
            }
            return null;
        }

        @NotNull
        public final String e(@Nullable String str) throws FacebookException {
            if (str != null && str.length() != 0) {
                try {
                    String[] strArr = (String[]) StringsKt.split$default(str, new String[]{"."}, false, 0, 6, null).toArray(new String[0]);
                    if (strArr.length == 2) {
                        byte[] data = Base64.decode(strArr[1], 0);
                        Intrinsics.checkNotNullExpressionValue(data, "data");
                        String string = new JSONObject(new String(data, Charsets.UTF_8)).getString(TTVideoEngineInterface.PLAY_API_KEY_USERID);
                        Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(\"user_id\")");
                        return string;
                    }
                } catch (UnsupportedEncodingException | JSONException unused) {
                }
                throw new FacebookException("Failed to retrieve user_id from signed_request");
            }
            throw new FacebookException("Authorization response does not contain the signed_request");
        }

        private a() {
        }
    }

    public LoginMethodHandler(@NotNull LoginClient loginClient) {
        Intrinsics.checkNotNullParameter(loginClient, "loginClient");
        n(loginClient);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(@Nullable String str, @Nullable Object obj) {
        String str2;
        if (this.f16520a == null) {
            this.f16520a = new HashMap();
        }
        Map<String, String> map = this.f16520a;
        if (map != null) {
            if (obj != null) {
                str2 = obj.toString();
            } else {
                str2 = null;
            }
            map.put(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String c(@NotNull String authId) {
        Intrinsics.checkNotNullParameter(authId, "authId");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("0_auth_logger_id", authId);
            jSONObject.put("3_method", f());
            m(jSONObject);
        } catch (JSONException e10) {
            Log.w("LoginMethodHandler", "Error creating client state json: " + e10.getMessage());
        }
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "param.toString()");
        return jSONObject2;
    }

    @NotNull
    public final LoginClient d() {
        LoginClient loginClient = this.f16521b;
        if (loginClient != null) {
            return loginClient;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loginClient");
        return null;
    }

    @Nullable
    public final Map<String, String> e() {
        return this.f16520a;
    }

    @NotNull
    public abstract String f();

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public String g() {
        return "fb" + com.facebook.v.m() + "://authorize/";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h(@Nullable String str) {
        String m10;
        LoginClient.Request p10 = d().p();
        if (p10 == null || (m10 = p10.a()) == null) {
            m10 = com.facebook.v.m();
        }
        h0 h0Var = new h0(d().j(), m10);
        Bundle bundle = new Bundle();
        bundle.putString("fb_web_login_e2e", str);
        bundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
        bundle.putString("app_id", m10);
        h0Var.h("fb_dialogs_web_login_dialog_complete", null, bundle);
    }

    public boolean j() {
        return false;
    }

    public boolean k(int i10, int i11, @Nullable Intent intent) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public Bundle l(@NotNull LoginClient.Request request, @NotNull Bundle values) throws FacebookException {
        String str;
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(values, "values");
        String string = values.getString(Module.ResponseKey.Code);
        if (!u0.d0(string)) {
            if (string != null) {
                String g10 = g();
                String f10 = request.f();
                if (f10 == null) {
                    f10 = "";
                }
                GraphRequest a10 = u.a(string, g10, f10);
                if (a10 != null) {
                    com.facebook.b0 k10 = a10.k();
                    FacebookRequestError b10 = k10.b();
                    if (b10 == null) {
                        try {
                            JSONObject c10 = k10.c();
                            if (c10 != null) {
                                str = c10.getString("access_token");
                            } else {
                                str = null;
                            }
                            if (c10 != null && !u0.d0(str)) {
                                values.putString("access_token", str);
                                if (c10.has("id_token")) {
                                    values.putString("id_token", c10.getString("id_token"));
                                }
                                return values;
                            }
                            throw new FacebookException("No access token found from result");
                        } catch (JSONException e10) {
                            throw new FacebookException("Fail to process code exchange response: " + e10.getMessage());
                        }
                    }
                    throw new FacebookServiceException(b10, b10.c());
                }
            }
            throw new FacebookException("Failed to create code exchange request");
        }
        throw new FacebookException("No code param found from the request");
    }

    public void m(@NotNull JSONObject param) throws JSONException {
        Intrinsics.checkNotNullParameter(param, "param");
    }

    public final void n(@NotNull LoginClient loginClient) {
        Intrinsics.checkNotNullParameter(loginClient, "<set-?>");
        this.f16521b = loginClient;
    }

    public boolean o() {
        return false;
    }

    public abstract int p(@NotNull LoginClient.Request request);

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel dest, int i10) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        u0.I0(dest, this.f16520a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LoginMethodHandler(@NotNull Parcel source) {
        Intrinsics.checkNotNullParameter(source, "source");
        Map<String, String> u02 = u0.u0(source);
        this.f16520a = u02 != null ? p0.A(u02) : null;
    }

    public void b() {
    }
}
