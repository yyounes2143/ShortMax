package com.mbridge.msdk.videocommon;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: TemplateWebviewCache.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31557a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31558b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31559c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31560d = new ConcurrentHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31561e = new ConcurrentHashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31562f = new ConcurrentHashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31563g = new ConcurrentHashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31564h = new ConcurrentHashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31565i = new ConcurrentHashMap<>();

    /* renamed from: j  reason: collision with root package name */
    private static ConcurrentHashMap<String, C0455a> f31566j = new ConcurrentHashMap<>();

    /* compiled from: TemplateWebviewCache.java */
    /* renamed from: com.mbridge.msdk.videocommon.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0455a {

        /* renamed from: a  reason: collision with root package name */
        private WindVaneWebView f31567a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f31568b;

        public void a(WindVaneWebView windVaneWebView) {
            this.f31567a = windVaneWebView;
        }

        public WindVaneWebView b() {
            return this.f31567a;
        }

        public boolean c() {
            return this.f31568b;
        }

        public void a(String str) {
            WindVaneWebView windVaneWebView = this.f31567a;
            if (windVaneWebView != null) {
                windVaneWebView.setTag(str);
            }
        }

        public String a() {
            WindVaneWebView windVaneWebView = this.f31567a;
            if (windVaneWebView != null) {
                return (String) windVaneWebView.getTag();
            }
            return "";
        }

        public void a(boolean z10) {
            this.f31568b = z10;
        }
    }

    public static void a(String str, C0455a c0455a, boolean z10, boolean z11) {
        if (z10) {
            if (z11) {
                f31564h.put(str, c0455a);
            } else {
                f31563g.put(str, c0455a);
            }
        } else if (z11) {
            f31566j.put(str, c0455a);
        } else {
            f31565i.put(str, c0455a);
        }
    }

    public static C0455a b(String str) {
        if (f31563g.containsKey(str)) {
            return f31563g.get(str);
        }
        if (f31564h.containsKey(str)) {
            return f31564h.get(str);
        }
        if (f31565i.containsKey(str)) {
            return f31565i.get(str);
        }
        if (f31566j.containsKey(str)) {
            return f31566j.get(str);
        }
        return null;
    }

    public static void c(String str) {
        for (Map.Entry<String, C0455a> entry : f31563g.entrySet()) {
            if (entry.getKey().contains(str)) {
                f31563g.remove(entry.getKey());
            }
        }
    }

    public static void d(String str) {
        for (Map.Entry<String, C0455a> entry : f31564h.entrySet()) {
            if (entry.getKey().contains(str)) {
                f31564h.remove(entry.getKey());
            }
        }
    }

    public static void e(String str) {
        if (f31563g.containsKey(str)) {
            f31563g.remove(str);
        }
        if (f31565i.containsKey(str)) {
            f31565i.remove(str);
        }
        if (f31564h.containsKey(str)) {
            f31564h.remove(str);
        }
        if (f31566j.containsKey(str)) {
            f31566j.remove(str);
        }
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : f31563g.keySet()) {
                if (!TextUtils.isEmpty(str2) && str2.startsWith(str)) {
                    f31563g.remove(str2);
                }
            }
        } else {
            f31563g.clear();
        }
        f31564h.clear();
    }

    public static void b(int i10, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i10 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i10 == 94) {
                if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0455a> concurrentHashMap = f31558b;
                    if (concurrentHashMap != null) {
                        concurrentHashMap.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0455a> concurrentHashMap2 = f31561e;
                if (concurrentHashMap2 != null) {
                    concurrentHashMap2.remove(requestIdNotice);
                }
            } else if (i10 != 287) {
                if (i10 != 288) {
                    ConcurrentHashMap<String, C0455a> concurrentHashMap3 = f31557a;
                    if (concurrentHashMap3 != null) {
                        concurrentHashMap3.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0455a> concurrentHashMap4 = f31560d;
                if (concurrentHashMap4 != null) {
                    concurrentHashMap4.remove(requestIdNotice);
                }
            } else if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0455a> concurrentHashMap5 = f31559c;
                if (concurrentHashMap5 != null) {
                    concurrentHashMap5.remove(requestIdNotice);
                }
            } else {
                ConcurrentHashMap<String, C0455a> concurrentHashMap6 = f31562f;
                if (concurrentHashMap6 != null) {
                    concurrentHashMap6.remove(requestIdNotice);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public static void a() {
        f31565i.clear();
        f31566j.clear();
    }

    public static C0455a a(int i10, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i10 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i10 != 94) {
                if (i10 != 287) {
                    if (i10 != 288) {
                        ConcurrentHashMap<String, C0455a> concurrentHashMap = f31557a;
                        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
                            return f31557a.get(requestIdNotice);
                        }
                    } else {
                        ConcurrentHashMap<String, C0455a> concurrentHashMap2 = f31560d;
                        if (concurrentHashMap2 != null && concurrentHashMap2.size() > 0) {
                            return f31560d.get(requestIdNotice);
                        }
                    }
                } else if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0455a> concurrentHashMap3 = f31559c;
                    if (concurrentHashMap3 != null && concurrentHashMap3.size() > 0) {
                        return f31559c.get(requestIdNotice);
                    }
                } else {
                    ConcurrentHashMap<String, C0455a> concurrentHashMap4 = f31562f;
                    if (concurrentHashMap4 != null && concurrentHashMap4.size() > 0) {
                        return f31562f.get(requestIdNotice);
                    }
                }
            } else if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0455a> concurrentHashMap5 = f31558b;
                if (concurrentHashMap5 != null && concurrentHashMap5.size() > 0) {
                    return f31558b.get(requestIdNotice);
                }
            } else {
                ConcurrentHashMap<String, C0455a> concurrentHashMap6 = f31561e;
                if (concurrentHashMap6 != null && concurrentHashMap6.size() > 0) {
                    return f31561e.get(requestIdNotice);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static void b(int i10, String str, C0455a c0455a) {
        try {
            if (i10 == 94) {
                if (f31561e == null) {
                    f31561e = new ConcurrentHashMap<>();
                }
                f31561e.put(str, c0455a);
            } else if (i10 == 287) {
                if (f31562f == null) {
                    f31562f = new ConcurrentHashMap<>();
                }
                f31562f.put(str, c0455a);
            } else if (i10 != 288) {
                if (f31557a == null) {
                    f31557a = new ConcurrentHashMap<>();
                }
                f31557a.put(str, c0455a);
            } else {
                if (f31560d == null) {
                    f31560d = new ConcurrentHashMap<>();
                }
                f31560d.put(str, c0455a);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public static void a(int i10, String str, C0455a c0455a) {
        try {
            if (i10 == 94) {
                if (f31558b == null) {
                    f31558b = new ConcurrentHashMap<>();
                }
                f31558b.put(str, c0455a);
            } else if (i10 != 287) {
            } else {
                if (f31559c == null) {
                    f31559c = new ConcurrentHashMap<>();
                }
                f31559c.put(str, c0455a);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }
}
