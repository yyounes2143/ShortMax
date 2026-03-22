package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.common.zzp;
import com.google.android.gms.internal.common.zzw;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
@KeepForSdk
/* loaded from: classes4.dex */
public class HttpUtils {
    private static final Pattern zza = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
    private static final Pattern zzb = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
    private static final Pattern zzc = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

    private HttpUtils() {
    }

    @NonNull
    @KeepForSdk
    public static Map<String, String> parse(@NonNull URI uri, @NonNull String str) {
        String str2;
        Map<String, String> emptyMap = Collections.emptyMap();
        String rawQuery = uri.getRawQuery();
        if (rawQuery != null && rawQuery.length() > 0) {
            emptyMap = new HashMap<>();
            zzw zza2 = zzw.zza(zzp.zzb('='));
            for (String str3 : zzw.zza(zzp.zzb('&')).zzb().zzc(rawQuery)) {
                List zzd = zza2.zzd(str3);
                if (!zzd.isEmpty() && zzd.size() <= 2) {
                    String zza3 = zza((String) zzd.get(0), str);
                    if (zzd.size() == 2) {
                        str2 = zza((String) zzd.get(1), str);
                    } else {
                        str2 = null;
                    }
                    emptyMap.put(zza3, str2);
                } else {
                    throw new IllegalArgumentException("bad parameter");
                }
            }
        }
        return emptyMap;
    }

    private static String zza(String str, String str2) {
        if (str2 == null) {
            str2 = "ISO-8859-1";
        }
        try {
            return URLDecoder.decode(str, str2);
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalArgumentException(e10);
        }
    }
}
