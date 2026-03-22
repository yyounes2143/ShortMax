package com.mbridge.msdk.mbbanner.common.util;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: BannerDelivery.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static final String f27847c = "a";

    /* renamed from: a  reason: collision with root package name */
    private final Handler f27848a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private boolean f27849b;

    /* compiled from: BannerDelivery.java */
    /* renamed from: com.mbridge.msdk.mbbanner.common.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class RunnableC0387a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f27850a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27851b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CampaignUnit f27852c;

        RunnableC0387a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, CampaignUnit campaignUnit) {
            this.f27850a = bVar;
            this.f27851b = str;
            this.f27852c = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f27850a;
            if (bVar != null) {
                bVar.a(this.f27851b, this.f27852c, a.this.f27849b);
            }
        }
    }

    /* compiled from: BannerDelivery.java */
    /* loaded from: classes5.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f27854a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.error.b f27855b;

        b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f27854a = bVar;
            this.f27855b = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f27854a != null) {
                this.f27855b.a(a.this.f27849b);
                this.f27854a.a(this.f27855b);
            }
        }
    }

    /* compiled from: BannerDelivery.java */
    /* loaded from: classes5.dex */
    class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f27857a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27858b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27859c;

        c(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i10) {
            this.f27857a = bVar;
            this.f27858b = str;
            this.f27859c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f27857a;
            if (bVar != null) {
                bVar.a(this.f27858b, this.f27859c, a.this.f27849b);
            }
        }
    }

    /* compiled from: BannerDelivery.java */
    /* loaded from: classes5.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f27861a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.error.b f27862b;

        d(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f27861a = bVar;
            this.f27862b = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f27861a != null) {
                this.f27862b.a(a.this.f27849b);
                this.f27861a.b(this.f27862b);
            }
        }
    }

    public void b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        String str = f27847c;
        p0.b(str, "postResourceFail unitId=" + bVar2);
        this.f27848a.post(new d(bVar, bVar2));
    }

    public void a(boolean z10) {
        this.f27849b = z10;
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, CampaignUnit campaignUnit, String str) {
        String str2 = f27847c;
        p0.b(str2, "postCampaignSuccess unitId=" + str);
        this.f27848a.post(new RunnableC0387a(bVar, str, campaignUnit));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        this.f27848a.post(new b(bVar, bVar2));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i10) {
        String str2 = f27847c;
        p0.b(str2, "postResourceSuccess unitId=" + str);
        this.f27848a.post(new c(bVar, str, i10));
    }
}
