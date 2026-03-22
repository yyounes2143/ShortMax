package com.mbridge.msdk.dycreator.viewmodel;

import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.viewobserver.c;
import com.mbridge.msdk.dycreator.viewobserver.d;
import com.mbridge.msdk.dycreator.viewobserver.f;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;
/* loaded from: classes5.dex */
public class MBCommonViewVModel implements BaseViewModel {

    /* renamed from: a  reason: collision with root package name */
    private d f26590a;

    /* renamed from: b  reason: collision with root package name */
    private c f26591b;

    /* renamed from: c  reason: collision with root package name */
    private f f26592c;

    /* renamed from: d  reason: collision with root package name */
    private h f26593d;

    /* renamed from: e  reason: collision with root package name */
    private DynamicViewBackListener f26594e;

    public MBCommonViewVModel() {
        EventBus.getDefault().register(this);
    }

    private void a(SplashResData splashResData) {
        DynamicViewBackListener dynamicViewBackListener = this.f26594e;
        if (dynamicViewBackListener != null) {
            dynamicViewBackListener.viewClicked(splashResData);
        }
    }

    public void onEventMainThread(SplashResData splashResData) {
        a(splashResData);
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setClickSubject(c cVar) {
        if (cVar != null) {
            this.f26591b = cVar;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setConcreteSubject(d dVar) {
        if (dVar != null) {
            this.f26590a = dVar;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setDynamicViewBackListener(DynamicViewBackListener dynamicViewBackListener) {
        if (dynamicViewBackListener != null) {
            this.f26594e = dynamicViewBackListener;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setEffectSubject(f fVar) {
        if (fVar != null) {
            this.f26592c = fVar;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setReportSubject(h hVar) {
        if (hVar != null) {
            this.f26593d = hVar;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setModelDataAndBind() {
    }
}
