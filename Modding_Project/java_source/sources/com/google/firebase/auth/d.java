package com.google.firebase.auth;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzal;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.HashMap;
import java.util.Set;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: g  reason: collision with root package name */
    private static final zzal<String, Integer> f20466g;

    /* renamed from: a  reason: collision with root package name */
    private final String f20467a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20468b;

    /* renamed from: c  reason: collision with root package name */
    private final String f20469c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f20470d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f20471e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f20472f;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("recoverEmail", 2);
        hashMap.put("resetPassword", 0);
        hashMap.put("signIn", 4);
        hashMap.put("verifyEmail", 1);
        hashMap.put("verifyBeforeChangeEmail", 5);
        hashMap.put("revertSecondFactorAddition", 6);
        f20466g = zzal.zza(hashMap);
    }

    private d(String str) {
        String d10 = d(str, "apiKey");
        String d11 = d(str, "oobCode");
        String d12 = d(str, "mode");
        if (d10 != null && d11 != null && d12 != null) {
            this.f20467a = Preconditions.checkNotEmpty(d10);
            this.f20468b = Preconditions.checkNotEmpty(d11);
            this.f20469c = Preconditions.checkNotEmpty(d12);
            this.f20470d = d(str, "continueUrl");
            this.f20471e = d(str, CommonConstant.ReqAccessTokenParam.LANGUAGE_LABEL);
            this.f20472f = d(str, "tenantId");
            return;
        }
        throw new IllegalArgumentException(String.format("%s, %s and %s are required in a valid action code URL", "apiKey", "oobCode", "mode"));
    }

    @Nullable
    public static d b(@Nullable String str) {
        Preconditions.checkNotEmpty(str);
        try {
            return new d(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Nullable
    private static String d(String str, String str2) {
        Uri parse = Uri.parse(str);
        try {
            Set<String> queryParameterNames = parse.getQueryParameterNames();
            if (queryParameterNames.contains(str2)) {
                return parse.getQueryParameter(str2);
            }
            if (queryParameterNames.contains("link")) {
                return Uri.parse(Preconditions.checkNotEmpty(parse.getQueryParameter("link"))).getQueryParameter(str2);
            }
            return null;
        } catch (NullPointerException | UnsupportedOperationException unused) {
            return null;
        }
    }

    @Nullable
    public String a() {
        return this.f20468b;
    }

    @Nullable
    public final String c() {
        return this.f20472f;
    }
}
