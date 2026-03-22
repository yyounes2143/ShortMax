package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: DownLoadManager.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: f  reason: collision with root package name */
    private static volatile b f31603f;

    /* renamed from: a  reason: collision with root package name */
    private boolean f31604a = false;

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<String, l> f31605b = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<Map<String, a>>> f31606c;

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> f31607d;

    /* renamed from: e  reason: collision with root package name */
    private ConcurrentHashMap<String, CopyOnWriteArrayList<a>> f31608e;

    private b() {
    }

    public static b getInstance() {
        if (f31603f == null) {
            synchronized (b.class) {
                try {
                    if (f31603f == null) {
                        f31603f = new b();
                    }
                } finally {
                }
            }
        }
        return f31603f;
    }

    public a a(String str, String str2) {
        l c10 = c(str);
        if (c10 != null) {
            return c10.a(str2);
        }
        return null;
    }

    public CopyOnWriteArrayList<CampaignEx> b(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap = this.f31607d;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f31607d.get(str);
    }

    public l c(String str) {
        ConcurrentHashMap<String, l> concurrentHashMap = this.f31605b;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f31605b.get(str);
    }

    public l createUnitCache(Context context, String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, int i10, com.mbridge.msdk.videocommon.listener.a aVar) {
        l lVar;
        if (TextUtils.isEmpty(str) || copyOnWriteArrayList == null || copyOnWriteArrayList.size() == 0) {
            return null;
        }
        if (this.f31605b.containsKey(str)) {
            lVar = this.f31605b.get(str);
            if (lVar == null) {
                lVar = new l(context, copyOnWriteArrayList, str, i10);
                this.f31605b.put(str, lVar);
            }
            if (i10 != 94 && i10 != 287) {
                lVar.a(aVar);
            } else {
                lVar.a(copyOnWriteArrayList.get(0).getRequestId() + "_" + copyOnWriteArrayList.get(0).getSecondRequestIndex(), aVar);
            }
            lVar.b(copyOnWriteArrayList);
        } else {
            lVar = new l(context, copyOnWriteArrayList, str, i10);
            if (i10 != 94 && i10 != 287) {
                lVar.a(aVar);
            } else {
                lVar.a(copyOnWriteArrayList.get(0).getRequestId() + "_" + copyOnWriteArrayList.get(0).getSecondRequestIndex(), aVar);
            }
            this.f31605b.put(str, lVar);
        }
        return lVar;
    }

    public void load(String str) {
        l c10 = c(str);
        if (c10 != null) {
            c10.d();
        }
    }

    public CopyOnWriteArrayList<a> a(String str) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<a>> concurrentHashMap = this.f31608e;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.f31608e.get(str);
    }

    public boolean b(int i10, String str, boolean z10) {
        try {
            l c10 = c(str);
            if (c10 != null) {
                return c10.b(i10, z10) != null;
            }
            return false;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return false;
            }
            return false;
        }
    }

    public void c(String str, String str2) {
        l c10 = c(str);
        if (c10 != null) {
            try {
                c10.b(str2);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("DownLoadManager", e10.getMessage());
                }
            }
        }
    }

    public a a(int i10, String str, boolean z10) {
        l c10 = c(str);
        if (c10 != null) {
            return c10.a(i10, z10);
        }
        return null;
    }

    public boolean a(int i10, String str, boolean z10, int i11, boolean z11, int i12, List<CampaignEx> list) {
        return a(i10, str, z10, i11, z11, i12, list, false, null);
    }

    public void b(boolean z10) {
        this.f31604a = z10;
        ConcurrentHashMap<String, l> concurrentHashMap = this.f31605b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                l value = entry.getValue();
                if (value != null) {
                    value.e();
                }
            }
        }
    }

    public boolean a(int i10, String str, List<CampaignEx> list) {
        l c10 = c(str);
        if (c10 == null) {
            c10 = createUnitCache(com.mbridge.msdk.foundation.controller.c.m().d(), str, (CopyOnWriteArrayList) list, i10, (com.mbridge.msdk.videocommon.listener.a) null);
        }
        if (c10 != null) {
            return c10.a(list, str);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01ad, code lost:
        if (r14.f31607d != null) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01af, code lost:
        r14.f31607d = new java.util.concurrent.ConcurrentHashMap<>();
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01b6, code lost:
        if (r2 == null) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01bc, code lost:
        if (r2.size() <= 0) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01be, code lost:
        r3 = new java.util.concurrent.CopyOnWriteArrayList<>();
        r4 = new java.util.concurrent.CopyOnWriteArrayList<>();
        r5 = new java.util.concurrent.CopyOnWriteArrayList<>();
        r2 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x01d5, code lost:
        if (r2.hasNext() == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01d7, code lost:
        r6 = r2.next();
        r7 = new java.util.concurrent.ConcurrentHashMap();
        r8 = r6.c();
        r7.put(r8.getId() + r8.getVideoUrlEncode() + r8.getBidToken(), r6);
        r3.add(r7);
        r4.add(r8);
        r5.add(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0211, code lost:
        a(r16, r3, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0131, code lost:
        if (r5.size() >= r18) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0197, code lost:
        if (r14.f31606c != null) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0199, code lost:
        r14.f31606c = new java.util.concurrent.ConcurrentHashMap<>();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a2, code lost:
        if (r14.f31608e != null) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01a4, code lost:
        r14.f31608e = new java.util.concurrent.ConcurrentHashMap<>();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(int r15, java.lang.String r16, boolean r17, int r18, boolean r19, int r20, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r21, boolean r22, com.mbridge.msdk.foundation.same.report.metrics.e r23) {
        /*
            Method dump skipped, instructions count: 541
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.b.a(int, java.lang.String, boolean, int, boolean, int, java.util.List, boolean, com.mbridge.msdk.foundation.same.report.metrics.e):boolean");
    }

    public l createUnitCache(Context context, String str, CampaignEx campaignEx, int i10, com.mbridge.msdk.videocommon.listener.a aVar) {
        l lVar;
        if (TextUtils.isEmpty(str) || campaignEx == null) {
            return null;
        }
        if (this.f31605b.containsKey(str)) {
            lVar = this.f31605b.get(str);
            if (lVar == null) {
                lVar = new l(context, campaignEx, str, i10);
                this.f31605b.put(str, lVar);
            }
            if (i10 != 94 && i10 != 287) {
                lVar.a(aVar);
            } else {
                lVar.a(campaignEx.getRequestId() + "_" + campaignEx.getSecondRequestIndex(), aVar);
            }
            lVar.f(campaignEx);
        } else {
            lVar = new l(context, campaignEx, str, i10);
            if (i10 != 94 && i10 != 287) {
                lVar.a(aVar);
            } else {
                lVar.a(campaignEx.getRequestId() + "_" + campaignEx.getSecondRequestIndex(), aVar);
            }
            this.f31605b.put(str, lVar);
        }
        return lVar;
    }

    public int b(String str, String str2) {
        CopyOnWriteArrayList<Map<String, a>> c10;
        a value;
        CampaignEx c11;
        ConcurrentHashMap<String, l> concurrentHashMap = this.f31605b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                l value2 = entry.getValue();
                if (value2 != null && (c10 = value2.c()) != null) {
                    int size = c10.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        Map<String, a> map = c10.get(i10);
                        if (map != null) {
                            Iterator<Map.Entry<String, a>> it = map.entrySet().iterator();
                            if (it.hasNext() && (value = it.next().getValue()) != null && (c11 = value.c()) != null) {
                                String videoUrlEncode = c11.getVideoUrlEncode();
                                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(videoUrlEncode) && str2.equals(videoUrlEncode)) {
                                    return value.j();
                                }
                            }
                        }
                    }
                    continue;
                }
            }
        }
        return 0;
    }

    private void a(String str, CopyOnWriteArrayList<Map<String, a>> copyOnWriteArrayList, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2, CopyOnWriteArrayList<a> copyOnWriteArrayList3) {
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList4;
        if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
            CampaignEx campaignEx = copyOnWriteArrayList2.get(0);
            if (campaignEx.getSecondRequestIndex() == 1 && (concurrentHashMap = this.f31607d) != null && (copyOnWriteArrayList4 = concurrentHashMap.get(str)) != null && copyOnWriteArrayList4.size() > 0 && copyOnWriteArrayList4.get(0).getLocalRequestId().equals(campaignEx.getLocalRequestId())) {
                return;
            }
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<Map<String, a>>> concurrentHashMap2 = this.f31606c;
        if (concurrentHashMap2 == null) {
            this.f31606c = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap2.remove(str);
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<a>> concurrentHashMap3 = this.f31608e;
        if (concurrentHashMap3 == null) {
            this.f31608e = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap3.remove(str);
        }
        ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> concurrentHashMap4 = this.f31607d;
        if (concurrentHashMap4 == null) {
            this.f31607d = new ConcurrentHashMap<>();
        } else {
            concurrentHashMap4.remove(str);
        }
        this.f31606c.put(str, copyOnWriteArrayList);
        this.f31607d.put(str, copyOnWriteArrayList2);
        this.f31608e.put(str, copyOnWriteArrayList3);
    }

    public void a(boolean z10) {
        if (z10) {
            if (this.f31604a) {
                return;
            }
        } else {
            this.f31604a = false;
        }
        ConcurrentHashMap<String, l> concurrentHashMap = this.f31605b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                entry.getValue().d();
            }
        }
    }

    public void a() {
        ConcurrentHashMap<String, l> concurrentHashMap = this.f31605b;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, l> entry : concurrentHashMap.entrySet()) {
                a(entry.getValue(), entry.getKey());
            }
        }
    }

    private void a(l lVar, String str) {
        try {
            com.mbridge.msdk.videocommon.setting.c c10 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), str);
            if (c10 == null) {
                return;
            }
            if (c10.l() == 2) {
                lVar.e();
            } else {
                lVar.d();
            }
        } catch (Exception e10) {
            p0.b("DownLoadManager", e10.getMessage());
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                com.mbridge.msdk.setting.l e11 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
                if (e11 == null) {
                    e11 = com.mbridge.msdk.setting.l.j(str);
                }
                if (e11.q() == 2) {
                    lVar.e();
                } else {
                    lVar.d();
                }
            } catch (Exception e12) {
                p0.b("DownLoadManager", e12.getMessage());
            }
        }
    }
}
