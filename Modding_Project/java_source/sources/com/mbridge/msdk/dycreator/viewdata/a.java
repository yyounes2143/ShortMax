package com.mbridge.msdk.dycreator.viewdata;

import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* compiled from: MBRewardData.java */
/* loaded from: classes5.dex */
public class a implements com.mbridge.msdk.dycreator.viewdata.base.a {

    /* renamed from: a  reason: collision with root package name */
    private DyOption f26588a;

    /* renamed from: b  reason: collision with root package name */
    private CampaignEx f26589b;

    public a(DyOption dyOption) {
        this.f26588a = dyOption;
        this.f26589b = dyOption.getCampaignEx();
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public CampaignEx getBindData() {
        return this.f26589b;
    }

    @Override // com.mbridge.msdk.dycreator.viewdata.base.a
    public DyOption getEffectData() {
        return this.f26588a;
    }
}
