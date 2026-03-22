package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.binding.response.base.BaseRespData;
import com.mbridge.msdk.dycreator.listener.DyCountDownListener;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NativeViewRenderManager.java */
/* loaded from: classes6.dex */
public class c extends com.mbridge.msdk.splash.manager.a {

    /* compiled from: NativeViewRenderManager.java */
    /* loaded from: classes6.dex */
    class a implements DyCountDownListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DyOption f29150a;

        a(DyOption dyOption) {
            this.f29150a = dyOption;
        }

        @Override // com.mbridge.msdk.dycreator.listener.DyCountDownListener
        public void getCountDownValue(int i10) {
            this.f29150a.setDyCountDownListener(i10);
        }
    }

    /* compiled from: NativeViewRenderManager.java */
    /* loaded from: classes6.dex */
    class b implements DynamicViewBackListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.splash.inter.a f29152a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MBSplashView f29153b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.splash.common.c f29154c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ DyOption f29155d;

        b(com.mbridge.msdk.splash.inter.a aVar, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, DyOption dyOption) {
            this.f29152a = aVar;
            this.f29153b = mBSplashView;
            this.f29154c = cVar;
            this.f29155d = dyOption;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewClicked(BaseRespData baseRespData) {
            com.mbridge.msdk.splash.middle.a aVar;
            CampaignEx campaignEx;
            com.mbridge.msdk.splash.signal.b splashSignalCommunicationImpl;
            MBSplashView mBSplashView = this.f29153b;
            EAction eAction = null;
            if (mBSplashView != null && (splashSignalCommunicationImpl = mBSplashView.getSplashSignalCommunicationImpl()) != null) {
                aVar = splashSignalCommunicationImpl.a();
            } else {
                aVar = null;
            }
            DyOption dyOption = this.f29155d;
            if (dyOption != null) {
                campaignEx = dyOption.getCampaignEx();
            } else {
                campaignEx = null;
            }
            if (baseRespData instanceof SplashResData) {
                eAction = ((SplashResData) baseRespData).geteAction();
            }
            if (eAction != null) {
                int i10 = C0425c.f29157a[eAction.ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 == 4 && baseRespData != null && (baseRespData instanceof SplashResData)) {
                                SplashResData splashResData = (SplashResData) baseRespData;
                                if (splashResData.getBaseViewData() != null) {
                                    c.this.a(aVar, campaignEx, splashResData.getBaseViewData());
                                }
                            }
                        } else if (this.f29155d != null) {
                            com.mbridge.msdk.click.c.e(com.mbridge.msdk.foundation.controller.c.m().d(), this.f29155d.getAdChoiceLink());
                        }
                    } else if (aVar != null) {
                        aVar.close();
                    }
                } else if (aVar != null) {
                    if (baseRespData != null) {
                        if (baseRespData instanceof SplashResData) {
                            SplashResData splashResData2 = (SplashResData) baseRespData;
                            if (splashResData2.getBaseViewData() != null) {
                                c.this.a(splashResData2.getBaseViewData(), aVar, campaignEx);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    aVar.a(campaignEx);
                }
            }
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewCreateFail(com.mbridge.msdk.dycreator.error.a aVar) {
            MBSplashView mBSplashView = this.f29153b;
            if (mBSplashView != null) {
                Context context = mBSplashView.getContext();
                if (context == null) {
                    context = com.mbridge.msdk.foundation.controller.c.m().d();
                }
                c.this.a(context, this.f29153b, this.f29154c, this.f29152a);
            }
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewCreatedSuccess(View view) {
            com.mbridge.msdk.splash.inter.a aVar = this.f29152a;
            if (aVar != null) {
                if (view != null) {
                    aVar.a(view);
                } else {
                    aVar.onError("View render error.");
                }
            }
        }
    }

    /* compiled from: NativeViewRenderManager.java */
    /* renamed from: com.mbridge.msdk.splash.manager.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    static /* synthetic */ class C0425c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f29157a;

        static {
            int[] iArr = new int[EAction.values().length];
            f29157a = iArr;
            try {
                iArr[EAction.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f29157a[EAction.CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f29157a[EAction.NOTICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f29157a[EAction.FEEDBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeViewRenderManager.java */
    /* loaded from: classes6.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private static final c f29158a = new c(null);
    }

    /* synthetic */ c(a aVar) {
        this();
    }

    public static c a() {
        return d.f29158a;
    }

    private c() {
    }

    @Override // com.mbridge.msdk.splash.manager.a
    protected void a(List<String> list, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        DyOption build = new DyOption.Builder().campaignEx(cVar.b()).fileDirs(list).dyAdType(DyAdType.SPLASH).canSkip(cVar.m()).isScreenClick(cVar.f() == 1).isClickButtonVisible(cVar.c() == 0).isShakeVisible(cVar.i() == 1).isApkInfoVisible(cVar.a() == 0).isLogoVisible(cVar.e() == 1).shakeStrenght(cVar.j()).shakeTime(cVar.k()).orientation(cVar.g()).countDownTime(cVar.d()).adChoiceLink(u0.a(cVar.b())).build();
        mBSplashView.setDyCountDownListener(new a(build));
        DynamicViewCreator.getInstance().createDynamicView(build, new b(aVar, mBSplashView, cVar, build));
    }
}
