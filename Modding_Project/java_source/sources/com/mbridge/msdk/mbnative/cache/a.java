package com.mbridge.msdk.mbnative.cache;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.db.e;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.Campaign;
import java.util.ArrayList;
import java.util.List;
/* compiled from: APICache.java */
/* loaded from: classes2.dex */
public class a extends b<String, List<Campaign>> {

    /* renamed from: a  reason: collision with root package name */
    private e f27929a = e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));

    /* renamed from: b  reason: collision with root package name */
    private int f27930b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: APICache.java */
    /* renamed from: com.mbridge.msdk.mbnative.cache.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0390a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27931a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27932b;

        RunnableC0390a(List list, String str) {
            this.f27931a = list;
            this.f27932b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f27931a.size(); i10++) {
                CampaignEx campaignEx = (CampaignEx) this.f27931a.get(i10);
                campaignEx.setCacheLevel(1);
                a.this.f27929a.a(campaignEx, this.f27932b, 1);
            }
        }
    }

    public a(int i10) {
        this.f27930b = i10;
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public List<Campaign> b(String str, int i10) {
        List<CampaignEx> a10 = this.f27929a.a(str, i10, 2, this.f27930b);
        if (a10 == null) {
            return null;
        }
        if (a(a10, 2)) {
            this.f27929a.a(str, 2, this.f27930b);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(a10);
        return arrayList;
    }

    public void a(List<CampaignEx> list, String str) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = list.get(i10);
            campaignEx.setCacheLevel(2);
            this.f27929a.a(campaignEx, str, 1);
        }
    }

    public boolean a(List<CampaignEx> list, int i10) {
        long a10;
        if (list != null && list.size() > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long timestamp = list.get(0).getTimestamp();
            if (i10 != 1) {
                a10 = i10 != 2 ? 0L : b();
            } else {
                a10 = a();
            }
            if (currentTimeMillis - timestamp > a10) {
                return true;
            }
        }
        return false;
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public void a(String str, List<Campaign> list) {
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        this.f27929a.a(str, 1, this.f27930b, false);
        this.f27929a.a(str, 2, this.f27930b, false);
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = (CampaignEx) list.get(i10);
            campaignEx.setCacheLevel(1);
            this.f27929a.a(campaignEx, str, 1);
        }
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public void a(String str, List<Campaign> list, String str2) {
        boolean z10 = !TextUtils.isEmpty(str2);
        if (TextUtils.isEmpty(str) || list == null || list.size() <= 0) {
            return;
        }
        this.f27929a.a(str, 1, this.f27930b, z10);
        this.f27929a.a(str, 2, this.f27930b, z10);
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new RunnableC0390a(list, str));
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public List<Campaign> a(String str, int i10) {
        List<CampaignEx> a10 = this.f27929a.a(str, i10, 1, this.f27930b);
        if (a10 == null) {
            return null;
        }
        if (a(a10, 1)) {
            a(a10, str);
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(a10);
        return arrayList;
    }

    @Override // com.mbridge.msdk.mbnative.cache.b
    public void a(String str, Campaign campaign, String str2) {
        boolean z10 = !TextUtils.isEmpty(str2);
        if (campaign == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (this.f27929a.a(campaignEx.getId(), campaignEx.getTab(), str, campaignEx.getCacheLevel(), campaignEx.getType(), z10)) {
                this.f27929a.a(campaignEx.getId(), str, campaignEx.getCacheLevel(), this.f27930b, z10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
