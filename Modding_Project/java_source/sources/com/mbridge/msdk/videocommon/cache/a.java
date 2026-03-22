package com.mbridge.msdk.videocommon.cache;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.videocommon.setting.b;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: VideoCampaignCache.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static final String f31569b = "com.mbridge.msdk.videocommon.cache.a";

    /* renamed from: c  reason: collision with root package name */
    private static a f31570c;

    /* renamed from: a  reason: collision with root package name */
    private e f31571a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: VideoCampaignCache.java */
    /* renamed from: com.mbridge.msdk.videocommon.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class RunnableC0456a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31572a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f31573b;

        RunnableC0456a(String str, CampaignEx campaignEx) {
            this.f31572a = str;
            this.f31573b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.a(this.f31572a, this.f31573b);
        }
    }

    private a() {
        try {
            Context d10 = c.m().d();
            if (d10 != null) {
                this.f31571a = e.a(g.a(d10));
            } else {
                p0.b(f31569b, "RewardCampaignCache get Context is null");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static a a() {
        if (f31570c == null) {
            synchronized (a.class) {
                try {
                    if (f31570c == null) {
                        f31570c = new a();
                    }
                } finally {
                }
            }
        }
        return f31570c;
    }

    public void b(String str, String str2) {
        if (this.f31571a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f31571a.a(str, str2);
    }

    public CopyOnWriteArrayList<CampaignEx> c(String str, int i10) {
        List<CampaignEx> a10;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = null;
        try {
            if (TextUtils.isEmpty(str) || (a10 = this.f31571a.a(str, 0, 0, i10)) == null) {
                return null;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
            try {
                for (CampaignEx campaignEx : a10) {
                    if (campaignEx != null) {
                        copyOnWriteArrayList2.add(campaignEx);
                    }
                }
                return copyOnWriteArrayList2;
            } catch (Exception e10) {
                e = e10;
                copyOnWriteArrayList = copyOnWriteArrayList2;
                e.printStackTrace();
                return copyOnWriteArrayList;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    public synchronized void d(String str, String str2) {
        try {
            this.f31571a.f(str2, str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public List<CampaignEx> b(String str, int i10, boolean z10) {
        return b(str, i10, z10, "");
    }

    public CopyOnWriteArrayList<CampaignEx> b(String str, int i10, boolean z10, String str2) {
        List<CampaignEx> a10;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = null;
        try {
            com.mbridge.msdk.videocommon.setting.a c10 = b.b().c();
            long e10 = c10 != null ? c10.e() : 0L;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (z10) {
                a10 = this.f31571a.a(str, 0, 0, i10, str2);
            } else {
                a10 = this.f31571a.a(str, 0, 0, i10, false);
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (a10 != null) {
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
                try {
                    for (CampaignEx campaignEx : a10) {
                        if (campaignEx != null) {
                            if (campaignEx.getReadyState() != 0 && campaignEx.getLoadTimeoutState() != 1) {
                            }
                            long plct = campaignEx.getPlct() * 1000;
                            long timestamp = currentTimeMillis - campaignEx.getTimestamp();
                            int i11 = (plct > 0L ? 1 : (plct == 0L ? 0 : -1));
                            if ((i11 > 0 && plct >= timestamp) || (i11 <= 0 && e10 >= timestamp)) {
                                copyOnWriteArrayList2.add(campaignEx);
                            }
                        }
                    }
                    return copyOnWriteArrayList2;
                } catch (Exception e11) {
                    e = e11;
                    copyOnWriteArrayList = copyOnWriteArrayList2;
                    e.printStackTrace();
                    return copyOnWriteArrayList;
                }
            }
            return null;
        } catch (Exception e12) {
            e = e12;
        }
    }

    public void a(String str, List<CampaignEx> list, String str2, int i10) {
        e eVar;
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0 || TextUtils.isEmpty(str2) || (eVar = this.f31571a) == null) {
            return;
        }
        eVar.a(str, list, str2, i10);
    }

    public List<CampaignEx> c(String str, int i10, boolean z10) {
        return c(str, i10, z10, "");
    }

    public List<CampaignEx> c(String str, int i10, boolean z10, String str2) {
        long a02;
        List<CampaignEx> a10;
        ArrayList arrayList = null;
        try {
            com.mbridge.msdk.setting.g d10 = h.b().d(c.m().b());
            if (d10 != null) {
                a02 = d10.a0();
            } else {
                a02 = h.b().a().a0();
            }
            long j10 = a02 * 1000;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (z10) {
                a10 = this.f31571a.a(str, 0, 0, i10, str2);
            } else {
                a10 = this.f31571a.a(str, 0, 0, i10, false);
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (a10 != null) {
                ArrayList arrayList2 = new ArrayList();
                try {
                    for (CampaignEx campaignEx : a10) {
                        if (campaignEx != null && campaignEx.getReadyState() == 0) {
                            long plctb = campaignEx.getPlctb() * 1000;
                            long timestamp = currentTimeMillis - campaignEx.getTimestamp();
                            int i11 = (plctb > 0L ? 1 : (plctb == 0L ? 0 : -1));
                            if ((i11 <= 0 && j10 >= timestamp) || (i11 > 0 && plctb >= timestamp)) {
                                arrayList2.add(campaignEx);
                            }
                        }
                    }
                    return arrayList2;
                } catch (Exception e10) {
                    e = e10;
                    arrayList = arrayList2;
                    e.printStackTrace();
                    return arrayList;
                }
            }
            return null;
        } catch (Exception e11) {
            e = e11;
        }
    }

    public void a(String str, List<CampaignEx> list) {
        e eVar;
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0 || (eVar = this.f31571a) == null) {
            return;
        }
        eVar.b(str, list);
    }

    public void a(String str, List<CampaignEx> list, String str2) {
        e eVar;
        try {
            if (TextUtils.isEmpty(str) || list == null || list.size() <= 0 || (eVar = this.f31571a) == null) {
                return;
            }
            eVar.a(str, list, str2);
        } catch (Exception e10) {
            p0.b(f31569b, e10.getMessage());
        }
    }

    public List<CampaignEx> a(List<CampaignEx> list) {
        ArrayList arrayList = null;
        if (list == null) {
            return null;
        }
        try {
            com.mbridge.msdk.videocommon.setting.a c10 = b.b().c();
            long e10 = c10 != null ? c10.e() : 0L;
            long currentTimeMillis = System.currentTimeMillis();
            if (list.size() > 0) {
                ArrayList arrayList2 = new ArrayList();
                try {
                    for (CampaignEx campaignEx : list) {
                        if (campaignEx != null) {
                            long plct = campaignEx.getPlct() * 1000;
                            long timestamp = currentTimeMillis - campaignEx.getTimestamp();
                            int i10 = (plct > 0L ? 1 : (plct == 0L ? 0 : -1));
                            if ((i10 > 0 && plct >= timestamp) || (i10 <= 0 && e10 >= timestamp)) {
                                arrayList2.add(campaignEx);
                            }
                        }
                    }
                    return arrayList2;
                } catch (Exception e11) {
                    e = e11;
                    arrayList = arrayList2;
                    e.printStackTrace();
                    return arrayList;
                }
            }
            return null;
        } catch (Exception e12) {
            e = e12;
        }
    }

    public void b(String str, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0456a(str, campaignEx));
    }

    public void b(String str) {
        ConcurrentHashMap<String, com.mbridge.msdk.foundation.entity.c> f10;
        try {
            if (TextUtils.isEmpty(str) || (f10 = this.f31571a.f(str)) == null || f10.size() <= 0) {
                return;
            }
            com.mbridge.msdk.setting.g d10 = h.b().d(c.m().b());
            if (d10 == null) {
                d10 = h.b().a();
            }
            long a02 = d10 != null ? d10.a0() : 0L;
            long currentTimeMillis = System.currentTimeMillis();
            for (com.mbridge.msdk.foundation.entity.c cVar : f10.values()) {
                if (cVar != null) {
                    long e10 = cVar.e();
                    if (e10 <= 0) {
                        e10 = a02;
                    }
                    if (cVar.f() + (e10 * 1000) < currentTimeMillis && !TextUtils.isEmpty(cVar.a())) {
                        p0.b("HBOPTIMIZE", "不在有效期范围内 删除" + cVar.a());
                        d(str, cVar.a());
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public List<com.mbridge.msdk.foundation.entity.c> a(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                return this.f31571a.d(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public void c(String str, String str2) {
        e eVar = this.f31571a;
        if (eVar != null) {
            eVar.c(str, str2);
        }
    }

    public int a(String str, int i10, boolean z10, String str2) {
        List<CampaignEx> a10;
        try {
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            ArrayList arrayList = new ArrayList();
            if (z10) {
                a10 = this.f31571a.a(str, 0, 0, i10, str2);
            } else {
                a10 = this.f31571a.a(str, 0, 0, i10, false);
            }
            if (a10 != null) {
                for (CampaignEx campaignEx : a10) {
                    if (campaignEx != null && campaignEx.getReadyState() == 0) {
                        arrayList.add(campaignEx);
                    }
                }
                return arrayList.size();
            }
            return 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public synchronized void b(String str, int i10) {
        int f10;
        try {
            try {
                com.mbridge.msdk.setting.g d10 = h.b().d(c.m().b());
                if (d10 == null) {
                    d10 = h.b().a();
                }
                f10 = d10.f();
            } catch (Exception e10) {
                p0.b(f31569b, e10.getMessage());
            }
            if (f10 == 0) {
                return;
            }
            List<CampaignEx> b10 = this.f31571a.b(str, i10, f10 == 2);
            if (b10 != null && b10.size() > 0) {
                for (CampaignEx campaignEx : b10) {
                    String requestIdNotice = campaignEx.getRequestIdNotice();
                    String id2 = campaignEx.getId();
                    String campaignUnitId = campaignEx.getCampaignUnitId();
                    String cMPTEntryUrl = campaignEx.getCMPTEntryUrl();
                    com.mbridge.msdk.videocommon.a.e(campaignUnitId + "_" + id2 + "_" + requestIdNotice + "_" + cMPTEntryUrl);
                }
            }
            this.f31571a.a(str, i10, f10 == 2);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public List<CampaignEx> a(String str, int i10, boolean z10) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return this.f31571a.a(str, 0, 0, i10, z10);
        } catch (Exception e10) {
            p0.b(f31569b, e10.getLocalizedMessage());
            return null;
        }
    }

    public void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (campaignEx.isBidCampaign()) {
                    com.mbridge.msdk.foundation.same.buffer.b.c(str, campaignEx.getRequestId());
                }
                String localRequestId = campaignEx.getLocalRequestId();
                if (!TextUtils.isEmpty(localRequestId)) {
                    boolean z10 = true;
                    if (campaignEx.getSecondRequestIndex() != 1 && !localRequestId.contains("label_second")) {
                        z10 = false;
                    }
                    if (localRequestId.contains("label_second")) {
                        localRequestId = localRequestId.replace("label_second", "");
                    }
                    if (z10) {
                        e eVar = this.f31571a;
                        eVar.a(str, localRequestId, localRequestId + "label_second");
                        return;
                    }
                    this.f31571a.a(campaignEx.getId(), str, campaignEx.isBidCampaign(), campaignEx.getRequestId());
                    return;
                }
                this.f31571a.a(campaignEx.getId(), str, campaignEx.isBidCampaign(), campaignEx.getRequestId());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                String localRequestId = campaignEx.getLocalRequestId();
                if (!TextUtils.isEmpty(localRequestId)) {
                    boolean z10 = true;
                    if (campaignEx.getSecondRequestIndex() != 1 && !localRequestId.contains("label_second")) {
                        z10 = false;
                    }
                    if (localRequestId.contains("label_second")) {
                        localRequestId = localRequestId.replace("label_second", "");
                    }
                    if (z10) {
                        e eVar = this.f31571a;
                        eVar.a(str, localRequestId, localRequestId + "label_second");
                        return;
                    }
                    this.f31571a.a(campaignEx.getId(), str, campaignEx.isBidCampaign(), campaignEx.getRequestId());
                    return;
                }
                this.f31571a.a(campaignEx.getId(), str, campaignEx.isBidCampaign(), campaignEx.getRequestId());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getId())) {
                    return;
                }
                this.f31571a.d(campaignEx.getId(), campaignEx.getRequestId());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str2)) {
                List<com.mbridge.msdk.foundation.entity.c> d10 = this.f31571a.d(str);
                if (str2.contains("label_second")) {
                    String replace = str2.replace("label_second", "");
                    if (d10 != null && !d10.isEmpty() && !TextUtils.isEmpty(replace)) {
                        for (com.mbridge.msdk.foundation.entity.c cVar : d10) {
                            if (replace.equals(cVar.d())) {
                                d(str, cVar.a());
                                com.mbridge.msdk.foundation.same.buffer.b.c(str, cVar.a());
                                break;
                            }
                        }
                    }
                } else {
                    String str3 = str2 + "label_second";
                    if (d10 != null && !d10.isEmpty() && !TextUtils.isEmpty(str3)) {
                        for (com.mbridge.msdk.foundation.entity.c cVar2 : d10) {
                            if (str3.equals(cVar2.d())) {
                                for (com.mbridge.msdk.foundation.entity.c cVar3 : d10) {
                                    if (str2.equals(cVar3.d())) {
                                        d(str, cVar3.a());
                                        com.mbridge.msdk.foundation.same.buffer.b.c(str, cVar3.a());
                                        break;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            p0.b("videoCache", e10.getMessage());
        }
    }

    public void a(String str, int i10) {
        int size;
        try {
            List<com.mbridge.msdk.foundation.entity.c> d10 = this.f31571a.d(str);
            if (d10 == null || d10.size() <= 0 || (size = d10.size() - i10) <= 0) {
                return;
            }
            for (int i11 = 0; i11 < size; i11++) {
                d(str, d10.get(i11).a());
                com.mbridge.msdk.foundation.same.buffer.b.c(str, d10.get(i11).a());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(String str, String str2, List<CampaignEx> list) {
        try {
            if (TextUtils.isEmpty(str2) || list == null || list.size() <= 0) {
                return;
            }
            this.f31571a.a(list, str, str2, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public synchronized void a(long j10, String str) {
        try {
            this.f31571a.b(j10, str);
        } catch (Exception e10) {
            e10.printStackTrace();
            p0.b(f31569b, e10.getMessage());
        }
    }
}
