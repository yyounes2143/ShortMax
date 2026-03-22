package com.mbridge.msdk.dycreator.bridge;

import com.mbridge.msdk.dycreator.viewdata.base.a;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* loaded from: classes5.dex */
public class MBSplashData implements a {

    /* renamed from: a  reason: collision with root package name */
    private DyOption f26452a;

    /* renamed from: b  reason: collision with root package name */
    private String f26453b;

    /* renamed from: c  reason: collision with root package name */
    private String f26454c;

    /* renamed from: d  reason: collision with root package name */
    private String f26455d;

    /* renamed from: e  reason: collision with root package name */
    private String f26456e;

    /* renamed from: f  reason: collision with root package name */
    private CampaignEx f26457f;

    /* renamed from: g  reason: collision with root package name */
    private int f26458g;

    /* renamed from: h  reason: collision with root package name */
    private int f26459h;

    /* renamed from: i  reason: collision with root package name */
    private float f26460i;

    /* renamed from: j  reason: collision with root package name */
    private float f26461j;

    /* renamed from: k  reason: collision with root package name */
    private int f26462k = 0;

    public MBSplashData(DyOption dyOption) {
        this.f26452a = dyOption;
        this.f26457f = dyOption.getCampaignEx();
    }

    public String getAdClickText() {
        return this.f26454c;
    }

    public String getAppInfo() {
        return this.f26453b;
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public CampaignEx getBindData() {
        return this.f26457f;
    }

    public int getClickType() {
        return this.f26462k;
    }

    public String getCountDownText() {
        return this.f26455d;
    }

    public DyOption getDyOption() {
        return this.f26452a;
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public DyOption getEffectData() {
        return this.f26452a;
    }

    public int getLogoImage() {
        return this.f26459h;
    }

    public String getLogoText() {
        return this.f26456e;
    }

    public int getNoticeImage() {
        return this.f26458g;
    }

    public float getxInScreen() {
        return this.f26460i;
    }

    public float getyInScreen() {
        return this.f26461j;
    }

    public void setAdClickText(String str) {
        this.f26454c = str;
    }

    public void setAppInfo(String str) {
        this.f26453b = str;
    }

    public void setClickType(int i10) {
        this.f26462k = i10;
    }

    public void setCountDownText(String str) {
        this.f26455d = str;
    }

    public void setLogoImage(int i10) {
        this.f26459h = i10;
    }

    public void setLogoText(String str) {
        this.f26456e = str;
    }

    public void setNoticeImage(int i10) {
        this.f26458g = i10;
    }

    public void setxInScreen(float f10) {
        this.f26460i = f10;
    }

    public void setyInScreen(float f10) {
        this.f26461j = f10;
    }
}
