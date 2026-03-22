package com.mbridge.msdk.video.module.listener.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
/* compiled from: DefaultImageLoaderListener.java */
/* loaded from: classes6.dex */
public class e implements com.mbridge.msdk.foundation.same.image.c {

    /* renamed from: a  reason: collision with root package name */
    protected ImageView f31153a;

    /* renamed from: b  reason: collision with root package name */
    private CampaignEx f31154b;

    /* renamed from: c  reason: collision with root package name */
    private String f31155c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultImageLoaderListener.java */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f31156a;

        a(String str) {
            this.f31156a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.n a10 = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (e.this.f31154b == null) {
                    p0.a("ImageLoaderListener", "campaign is null");
                    return;
                }
                com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
                nVar.j("2000044");
                nVar.c(l0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                nVar.b(e.this.f31154b.getId());
                nVar.i(e.this.f31154b.getImageUrl());
                nVar.n(e.this.f31154b.getRequestId());
                nVar.o(e.this.f31154b.getRequestIdNotice());
                nVar.u(e.this.f31155c);
                nVar.m(this.f31156a);
                a10.a(nVar);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public e(ImageView imageView) {
        this.f31153a = imageView;
    }

    @Override // com.mbridge.msdk.foundation.same.image.c
    public void onFailedLoad(String str, String str2) {
        a aVar = new a(str);
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
        p0.b("ImageLoaderListener", "desc:" + str);
    }

    @Override // com.mbridge.msdk.foundation.same.image.c
    public void onSuccessLoad(Bitmap bitmap, String str) {
        try {
            if (bitmap == null) {
                p0.b("ImageLoaderListener", "bitmap=null");
            } else if (this.f31153a != null && !bitmap.isRecycled()) {
                this.f31153a.setImageBitmap(bitmap);
                this.f31153a.setVisibility(0);
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }

    public e(ImageView imageView, CampaignEx campaignEx, String str) {
        this.f31153a = imageView;
        this.f31154b = campaignEx;
        this.f31155c = str;
    }
}
