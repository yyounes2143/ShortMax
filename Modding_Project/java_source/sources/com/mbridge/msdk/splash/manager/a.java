package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.splash.view.MBSplashNativeView;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseNativeViewRenderManager.java */
/* loaded from: classes6.dex */
public class a {

    /* compiled from: BaseNativeViewRenderManager.java */
    /* renamed from: com.mbridge.msdk.splash.manager.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class C0423a implements com.mbridge.msdk.foundation.feedback.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.splash.middle.a f29109a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29110b;

        C0423a(com.mbridge.msdk.splash.middle.a aVar, int i10) {
            this.f29109a = aVar;
            this.f29110b = i10;
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a() {
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void close() {
            this.f29109a.a(2, this.f29110b);
        }

        @Override // com.mbridge.msdk.foundation.feedback.a
        public void a(String str) {
            this.f29109a.a(2, this.f29110b);
        }
    }

    protected void a(List<String> list, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        throw null;
    }

    public void a(MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        String str;
        Context context = mBSplashView.getContext();
        if (context == null) {
            context = com.mbridge.msdk.foundation.controller.c.m().d();
        }
        if (cVar == null && aVar != null) {
            aVar.onError("The render parameters is unavailable.");
            return;
        }
        if (cVar != null && cVar.b() != null) {
            str = y.a(cVar.b().getAdZip());
        } else {
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            if (cVar == null || cVar.b() == null) {
                return;
            }
            if (!TextUtils.isEmpty(cVar.b().getAdZip())) {
                try {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str);
                    a(arrayList, mBSplashView, cVar, aVar);
                    return;
                } catch (Exception unused) {
                    a(context, mBSplashView, cVar, aVar);
                    return;
                }
            }
            a(context, mBSplashView, cVar, aVar);
            return;
        }
        a(context, mBSplashView, cVar, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.mbridge.msdk.splash.middle.a aVar, CampaignEx campaignEx, com.mbridge.msdk.dycreator.viewdata.base.a aVar2) {
        if (campaignEx != null) {
            String campaignUnitId = campaignEx.getCampaignUnitId();
            String requestId = campaignEx.getRequestId();
            int currentCountDown = aVar2 != null ? aVar2.getEffectData().getCurrentCountDown() : 0;
            aVar.a(1, currentCountDown);
            com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
            com.mbridge.msdk.foundation.feedback.bean.a b11 = b10.b(campaignUnitId + "_" + requestId);
            if (b11 != null) {
                b11.a(campaignEx);
                com.mbridge.msdk.foundation.feedback.b b12 = com.mbridge.msdk.foundation.feedback.b.b();
                b12.a(campaignUnitId + "_" + requestId, new C0423a(aVar, currentCountDown));
                b11.p();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.mbridge.msdk.dycreator.viewdata.base.a aVar, com.mbridge.msdk.splash.middle.a aVar2, CampaignEx campaignEx) {
        float f10;
        int i10;
        float f11;
        if (aVar == null || !(aVar instanceof MBSplashData)) {
            f10 = 0.0f;
            i10 = 0;
            f11 = 0.0f;
        } else {
            MBSplashData mBSplashData = (MBSplashData) aVar;
            f10 = mBSplashData.getxInScreen();
            f11 = mBSplashData.getyInScreen();
            i10 = mBSplashData.getClickType();
        }
        if (aVar2 != null) {
            try {
                aVar2.a(com.mbridge.msdk.splash.common.util.a.a(com.mbridge.msdk.splash.common.util.a.a(i10, f10, f11), campaignEx));
            } catch (Throwable th2) {
                th2.printStackTrace();
                aVar2.a(campaignEx);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        try {
            MBSplashNativeView mBSplashNativeView = new MBSplashNativeView(context, mBSplashView, cVar);
            if (aVar != null) {
                aVar.a(mBSplashNativeView);
            }
        } catch (Throwable unused) {
            if (aVar != null) {
                aVar.onError("View render error.");
            }
        }
    }
}
