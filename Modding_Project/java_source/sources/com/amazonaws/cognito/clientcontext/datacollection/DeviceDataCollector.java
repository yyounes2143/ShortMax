package com.amazonaws.cognito.clientcontext.datacollection;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.Display;
import android.view.WindowManager;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class DeviceDataCollector extends DataCollector {
    private Display c(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private String g() {
        String str;
        int rawOffset = f().getRawOffset();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long j10 = rawOffset;
        long hours = timeUnit.toHours(j10);
        long minutes = timeUnit.toMinutes(j10) - TimeUnit.HOURS.toMinutes(hours);
        StringBuilder sb2 = new StringBuilder();
        if (hours < 0) {
            str = "-";
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(String.format(Locale.US, "%02d:%02d", Long.valueOf(Math.abs(hours)), Long.valueOf(minutes)));
        return sb2.toString();
    }

    @Override // com.amazonaws.cognito.clientcontext.datacollection.DataCollector
    public Map<String, String> a(Context context) {
        HashMap hashMap = new HashMap();
        hashMap.put("ClientTimezone", g());
        hashMap.put("Platform", "ANDROID");
        hashMap.put("ThirdPartyDeviceId", e());
        hashMap.put("DeviceId", b(context));
        hashMap.put("DeviceLanguage", d());
        Display c10 = c(context);
        hashMap.put("ScreenHeightPixels", String.valueOf(c10.getHeight()));
        hashMap.put("ScreenWidthPixels", String.valueOf(c10.getWidth()));
        return hashMap;
    }

    protected String b(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("AWS.Cognito.ContextData", 0);
        if (sharedPreferences == null) {
            return null;
        }
        String string = sharedPreferences.getString("CognitoDeviceId", null);
        if (string != null) {
            return string;
        }
        String str = UUID.randomUUID().toString() + ":" + new Date().getTime();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("CognitoDeviceId", str);
        edit.apply();
        return str;
    }

    protected String d() {
        return Locale.getDefault().toString();
    }

    protected String e() {
        return "android_id";
    }

    protected TimeZone f() {
        return TimeZone.getDefault();
    }
}
