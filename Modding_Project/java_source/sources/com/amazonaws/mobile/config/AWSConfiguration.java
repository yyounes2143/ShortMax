package com.amazonaws.mobile.config;

import android.content.Context;
import androidx.webkit.Profile;
import java.util.Scanner;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AWSConfiguration {

    /* renamed from: a  reason: collision with root package name */
    private JSONObject f5402a;

    /* renamed from: b  reason: collision with root package name */
    private String f5403b;

    public AWSConfiguration(Context context) {
        this(context, a(context));
    }

    private static int a(Context context) {
        try {
            return context.getResources().getIdentifier("awsconfiguration", "raw", context.getPackageName());
        } catch (Exception e10) {
            throw new RuntimeException("Failed to read awsconfiguration.json please check that it is correctly formed.", e10);
        }
    }

    private void f(Context context, int i10) {
        try {
            Scanner scanner = new Scanner(context.getResources().openRawResource(i10));
            StringBuilder sb2 = new StringBuilder();
            while (scanner.hasNextLine()) {
                sb2.append(scanner.nextLine());
            }
            scanner.close();
            this.f5402a = new JSONObject(sb2.toString());
        } catch (Exception e10) {
            throw new RuntimeException("Failed to read awsconfiguration.json please check that it is correctly formed.", e10);
        }
    }

    public String b() {
        return this.f5403b;
    }

    public String c() {
        try {
            return this.f5402a.getString("UserAgent");
        } catch (JSONException unused) {
            return "";
        }
    }

    public String d() {
        try {
            return this.f5402a.getString("UserAgentOverride");
        } catch (JSONException unused) {
            return null;
        }
    }

    public JSONObject e(String str) {
        try {
            JSONObject jSONObject = this.f5402a.getJSONObject(str);
            if (jSONObject.has(this.f5403b)) {
                jSONObject = jSONObject.getJSONObject(this.f5403b);
            }
            return new JSONObject(jSONObject.toString());
        } catch (JSONException unused) {
            return null;
        }
    }

    public String toString() {
        return this.f5402a.toString();
    }

    public AWSConfiguration(Context context, int i10) {
        this(context, i10, Profile.DEFAULT_PROFILE_NAME);
    }

    public AWSConfiguration(Context context, int i10, String str) {
        this.f5403b = str;
        f(context, i10);
    }
}
