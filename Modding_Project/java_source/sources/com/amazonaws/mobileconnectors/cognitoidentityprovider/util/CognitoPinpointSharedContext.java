package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.UUID;
/* loaded from: classes2.dex */
public class CognitoPinpointSharedContext {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f5629a = LogFactory.b(CognitoPinpointSharedContext.class);

    public static String a(Context context, String str) {
        return b(context, str, "UniqueId");
    }

    public static String b(Context context, String str, String str2) {
        if (context != null && str != null && str2 != null) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences(str + "515d6767-01b7-49e5-8273-c8d11b0f331d", 0);
                String string = sharedPreferences.getString(str2, null);
                if (string == null) {
                    String uuid = UUID.randomUUID().toString();
                    sharedPreferences.edit().putString(str2, uuid).apply();
                    return uuid;
                }
                return string;
            } catch (Exception e10) {
                f5629a.b("Error while reading from SharedPreferences", e10);
            }
        }
        return null;
    }
}
