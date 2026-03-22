package com.mbridge.msdk.mbsignalcommon.mraid;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* compiled from: MraidUriUtil.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ConcurrentHashMap<String, String> f28204a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<String> f28205b = new ArrayList<>();

    public static com.mbridge.msdk.mbsignalcommon.windvane.a a(WindVaneWebView windVaneWebView, String str) {
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.contains(CampaignEx.JSON_KEY_MRAID)) {
            return null;
        }
        com.mbridge.msdk.mbsignalcommon.windvane.a aVar = new com.mbridge.msdk.mbsignalcommon.windvane.a();
        aVar.f28241d = j0.a("n+ztLkxpVTzBLkxgHN==");
        aVar.f28242e = parse.getHost();
        if (f28205b.size() == 0) {
            a();
        }
        if (!f28205b.contains(aVar.f28242e) && windVaneWebView != null) {
            a(windVaneWebView.getCampaignId(), aVar.f28242e);
            a.a().b(windVaneWebView, aVar.f28242e);
            a.a().a(windVaneWebView, aVar.f28242e, "Specified command is not implemented");
            return null;
        }
        Set<String> a10 = a(parse);
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str2 : a10) {
                jSONObject.put(str2, parse.getQueryParameter(str2));
            }
            aVar.f28243f = jSONObject.toString();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return aVar;
    }

    public static String b(String str) {
        if (f28204a.containsKey(str)) {
            return f28204a.get(str);
        }
        return null;
    }

    private static Set<String> a(Uri uri) {
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int i10 = 0;
        do {
            int indexOf = encodedQuery.indexOf(38, i10);
            if (indexOf == -1) {
                indexOf = encodedQuery.length();
            }
            int indexOf2 = encodedQuery.indexOf(61, i10);
            if (indexOf2 > indexOf || indexOf2 == -1) {
                indexOf2 = indexOf;
            }
            linkedHashSet.add(Uri.decode(encodedQuery.substring(i10, indexOf2)));
            i10 = indexOf + 1;
        } while (i10 < encodedQuery.length());
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private static void a() {
        for (Method method : b.class.getDeclaredMethods()) {
            f28205b.add(method.getName());
        }
    }

    private static void a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (f28204a.containsKey(str)) {
            String str3 = f28204a.get(str);
            if (TextUtils.isEmpty(str2) || str3.contains(str2)) {
                return;
            }
            if (str3.length() > 0) {
                str3 = str3.concat(",");
            }
            f28204a.put(str, str3.concat(str2));
            return;
        }
        f28204a.put(str, str2);
    }

    public static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f28204a.remove(str);
    }
}
