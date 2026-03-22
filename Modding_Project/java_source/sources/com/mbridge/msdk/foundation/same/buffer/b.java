package com.mbridge.msdk.foundation.same.buffer;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.c;
import com.mbridge.msdk.foundation.entity.d;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.z0;
import com.startshorts.androidplayer.bean.configure.AdmobPreloadConfig;
import com.vungle.ads.internal.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: StaticDataPoll.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27050a = "b";

    /* renamed from: e  reason: collision with root package name */
    public static ConcurrentHashMap<String, ConcurrentHashMap<String, c>> f27054e;

    /* renamed from: f  reason: collision with root package name */
    public static ConcurrentHashMap<String, ConcurrentHashMap<String, String>> f27055f;

    /* renamed from: g  reason: collision with root package name */
    public static ConcurrentHashMap<String, CopyOnWriteArrayList<String>> f27056g;

    /* renamed from: b  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27051b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27052c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27053d = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27057h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27058i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27059j = new HashMap();

    /* renamed from: k  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27060k = new HashMap();

    /* renamed from: l  reason: collision with root package name */
    public static Map<String, Long> f27061l = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27062m = new HashMap();

    /* renamed from: n  reason: collision with root package name */
    public static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> f27063n = new HashMap();

    public static void a(String str, String str2, String str3, long j10, long j11, long j12, String str4) {
        if (f27054e == null) {
            f27054e = new ConcurrentHashMap<>();
        }
        try {
            if (f27054e.containsKey(str)) {
                ConcurrentHashMap<String, c> concurrentHashMap = f27054e.get(str);
                if (concurrentHashMap != null) {
                    c cVar = concurrentHashMap.get(str2);
                    if (cVar == null) {
                        c cVar2 = new c();
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(str3);
                        cVar2.a(arrayList);
                        cVar2.a(j10);
                        cVar2.b(j11);
                        cVar2.c(j12);
                        cVar2.c(str4);
                        concurrentHashMap.put(str2, cVar2);
                        return;
                    } else if (cVar.c() != null) {
                        cVar.a(j10);
                        cVar.b(j11);
                        cVar.c(j12);
                        cVar.c().add(str3);
                        cVar.c(str4);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(str3);
            ConcurrentHashMap<String, c> concurrentHashMap2 = new ConcurrentHashMap<>();
            c cVar3 = new c();
            cVar3.a(arrayList2);
            cVar3.a(j10);
            cVar3.b(j11);
            cVar3.c(j12);
            cVar3.c(str4);
            concurrentHashMap2.put(str2, cVar3);
            f27054e.put(str, concurrentHashMap2);
        } catch (Throwable th2) {
            p0.b(f27050a, th2.getMessage());
        }
    }

    private static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> b(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1396342996:
                if (str.equals("banner")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1052618729:
                if (str.equals("native")) {
                    c10 = 1;
                    break;
                }
                break;
            case -934326481:
                if (str.equals(AdmobPreloadConfig.REWARD)) {
                    c10 = 2;
                    break;
                }
                break;
            case -895866265:
                if (str.equals(AdmobPreloadConfig.APP_OPEN)) {
                    c10 = 3;
                    break;
                }
                break;
            case 538816457:
                if (str.equals("h5_native")) {
                    c10 = 4;
                    break;
                }
                break;
            case 604727084:
                if (str.equals(Constants.PLACEMENT_TYPE_INTERSTITIAL)) {
                    c10 = 5;
                    break;
                }
                break;
            case 1844104930:
                if (str.equals("interactive")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return f27052c;
            case 1:
                return f27059j;
            case 2:
                return f27060k;
            case 3:
                return f27062m;
            case 4:
                return f27053d;
            case 5:
                return f27058i;
            case 6:
                return f27057h;
            default:
                return null;
        }
    }

    public static ConcurrentHashMap<String, c> c(String str) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, c>> concurrentHashMap = f27054e;
        if (concurrentHashMap == null) {
            e a10 = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            if (a10 != null) {
                a10.b(str, "");
                f27054e = new ConcurrentHashMap<>();
            }
        } else if (concurrentHashMap.containsKey(str)) {
            return f27054e.get(str);
        }
        return null;
    }

    public static String d(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap;
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        return (TextUtils.isEmpty(str) || (concurrentHashMap = f27056g) == null || !concurrentHashMap.containsKey(str) || (copyOnWriteArrayList = f27056g.get(str)) == null || copyOnWriteArrayList.size() <= 0) ? "" : copyOnWriteArrayList.get(0);
    }

    public static void e(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<String>> concurrentHashMap;
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        if (!TextUtils.isEmpty(str) && (concurrentHashMap = f27056g) != null && concurrentHashMap.containsKey(str) && (copyOnWriteArrayList = f27056g.get(str)) != null && copyOnWriteArrayList.size() > 0) {
            copyOnWriteArrayList.remove(0);
        }
    }

    public static void d(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            ConcurrentHashMap<String, ConcurrentHashMap<String, String>> concurrentHashMap2 = f27055f;
            if (concurrentHashMap2 == null || !concurrentHashMap2.containsKey(str) || (concurrentHashMap = f27055f.get(str2)) == null || !concurrentHashMap.containsKey(str2)) {
                return;
            }
            concurrentHashMap.remove(str2);
        } catch (Exception e10) {
            p0.a(f27050a, e10.getMessage());
        }
    }

    public static void c(String str, String str2) {
        ConcurrentHashMap<String, ConcurrentHashMap<String, c>> concurrentHashMap;
        c remove;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = f27054e) == null || !concurrentHashMap.containsKey(str)) {
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            f27054e.remove(str);
            return;
        }
        ConcurrentHashMap<String, c> concurrentHashMap2 = f27054e.get(str);
        if (concurrentHashMap2 == null || !concurrentHashMap2.containsKey(str2) || (remove = concurrentHashMap2.remove(str2)) == null) {
            return;
        }
        try {
            String d10 = remove.d();
            if (TextUtils.isEmpty(d10)) {
                return;
            }
            Iterator<Map.Entry<String, c>> it = concurrentHashMap2.entrySet().iterator();
            while (it.hasNext()) {
                if (d10.equals(it.next().getValue().d())) {
                    it.remove();
                }
            }
        } catch (Exception e10) {
            p0.a(f27050a, e10.getMessage());
        }
    }

    public static d b(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        d dVar = new d();
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return dVar;
        }
        try {
            ConcurrentHashMap<String, ConcurrentHashMap<String, String>> concurrentHashMap2 = f27055f;
            if (concurrentHashMap2 != null && concurrentHashMap2.containsKey(str) && (concurrentHashMap = f27055f.get(str)) != null && concurrentHashMap.containsKey(str2)) {
                dVar.a(1);
                dVar.c(concurrentHashMap.get(str2));
            }
        } catch (Exception e10) {
            p0.a(f27050a, e10.getMessage());
        }
        return dVar;
    }

    public static void a(String str, String str2, int i10) {
        CopyOnWriteArrayList<String> copyOnWriteArrayList;
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return;
        }
        if (f27056g == null) {
            f27056g = new ConcurrentHashMap<>();
        }
        try {
            if (f27056g.containsKey(str)) {
                copyOnWriteArrayList = f27056g.get(str);
                copyOnWriteArrayList.add(str2);
            } else {
                CopyOnWriteArrayList<String> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                copyOnWriteArrayList2.add(str2);
                f27056g.put(str, copyOnWriteArrayList2);
                copyOnWriteArrayList = copyOnWriteArrayList2;
            }
            int size = copyOnWriteArrayList.size() - i10;
            if (size >= 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    copyOnWriteArrayList.remove(i11);
                }
            }
        } catch (Exception e10) {
            p0.a(f27050a, e10.getMessage());
        }
    }

    public static void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        try {
            if (f27055f == null) {
                f27055f = new ConcurrentHashMap<>();
            }
            if (f27055f.containsKey(str)) {
                if (f27055f.get(str) == null) {
                    ConcurrentHashMap<String, String> concurrentHashMap = new ConcurrentHashMap<>();
                    concurrentHashMap.put(str2, str3);
                    f27055f.put(str, concurrentHashMap);
                    return;
                }
                return;
            }
            ConcurrentHashMap<String, String> concurrentHashMap2 = new ConcurrentHashMap<>();
            concurrentHashMap2.put(str2, str3);
            f27055f.put(str, concurrentHashMap2);
        } catch (Exception e10) {
            p0.a(f27050a, e10.getMessage());
        }
    }

    public static String a(String str, String str2) {
        Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> b10;
        List<com.mbridge.msdk.foundation.same.metadata.a> list;
        JSONArray jSONArray = new JSONArray();
        if (TextUtils.isEmpty(str2)) {
            b10 = a(str);
        } else {
            b10 = b(str2);
        }
        if (b10 != null) {
            try {
                if (z0.b(str) && b10.containsKey(str) && (list = b10.get(str)) != null && list.size() > 0) {
                    for (int i10 = 0; i10 < list.size(); i10++) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("2", list.get(i10).a());
                        jSONObject.put("1", list.get(i10).c());
                        jSONArray.put(jSONObject);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    private static Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> a(String str) {
        if (f27059j.containsKey(str)) {
            return f27059j;
        }
        if (f27060k.containsKey(str)) {
            return f27060k;
        }
        if (f27057h.containsKey(str)) {
            return f27057h;
        }
        if (f27063n.containsKey(str)) {
            return f27063n;
        }
        if (f27058i.containsKey(str)) {
            return f27058i;
        }
        if (f27052c.containsKey(str)) {
            return f27052c;
        }
        if (f27062m.containsKey(str)) {
            return f27062m;
        }
        if (f27053d.containsKey(str)) {
            return f27053d;
        }
        return null;
    }

    public static void a(String str, CampaignEx campaignEx, String str2) {
        Map<String, List<com.mbridge.msdk.foundation.same.metadata.a>> b10 = b(str2);
        if (campaignEx == null || b10 == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(campaignEx.getId())) {
                return;
            }
            com.mbridge.msdk.foundation.same.metadata.a aVar = new com.mbridge.msdk.foundation.same.metadata.a(campaignEx.getId(), campaignEx.getRequestIdNotice());
            if (b10.containsKey(str)) {
                List<com.mbridge.msdk.foundation.same.metadata.a> list = b10.get(str);
                if (list != null && list.size() == 20) {
                    list.remove(0);
                }
                if (list != null) {
                    list.add(aVar);
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(aVar);
            b10.put(str, arrayList);
        } catch (Throwable th2) {
            p0.b(f27050a, th2.getMessage(), th2);
        }
    }
}
