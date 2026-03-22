package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcgr {
    private static final Pattern zza = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);
    private static final Pattern zzb = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    @Nullable
    public static String zza(zzfca zzfcaVar) {
        zzedd zzeddVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzfC)).booleanValue() && zzfcaVar.zzT) {
            zzfcz zzfczVar = zzfcaVar.zzV;
            if (zzfczVar.zzb() && zzfcaVar.zzb != 4) {
                if (zzfczVar.zzc() == 1) {
                    zzeddVar = zzedd.VIDEO;
                } else {
                    zzeddVar = zzedd.HTML_DISPLAY;
                }
                String str = zzfcaVar.zzal;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("creativeType", zzeddVar.toString());
                    jSONObject.put("contentUrl", str);
                    return "<script>Object.defineProperty(window,'GOOG_OMID_JAVASCRIPT_SESSION_SERVICE_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
                } catch (JSONException e10) {
                    int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzk("Unable to build OMID ENV JSON", e10);
                }
            }
        }
        return null;
    }

    public static String zzb(@NonNull String str, @Nullable String... strArr) {
        String str2;
        StringBuilder sb2 = new StringBuilder();
        Matcher matcher = zza.matcher(str);
        if (matcher.find()) {
            int end = matcher.end();
            sb2.append(str.substring(0, end));
            String str3 = strArr[0];
            if (str3 != null) {
                sb2.append(str3);
            }
            sb2.append(str.substring(end));
        } else {
            if (!zzb.matcher(str).find() && (str2 = strArr[0]) != null) {
                sb2.append(str2);
            }
            sb2.append(str);
        }
        return sb2.toString();
    }
}
