package com.applovin.impl;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.Collections;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class q6 extends s6 {

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.b f9341g;

    /* renamed from: h  reason: collision with root package name */
    private final AppLovinAdRewardListener f9342h;

    public q6(com.applovin.impl.sdk.ad.b bVar, AppLovinAdRewardListener appLovinAdRewardListener, com.applovin.impl.sdk.k kVar) {
        super("TaskValidateAppLovinReward", kVar);
        this.f9341g = bVar;
        this.f9342h = appLovinAdRewardListener;
    }

    @Override // com.applovin.impl.o6
    protected void a(JSONObject jSONObject) {
        JsonUtils.putString(jSONObject, AppLovinUtils.ServerParameterKeys.ZONE_ID, this.f9341g.getAdZone().e());
        String clCode = this.f9341g.getClCode();
        if (!StringUtils.isValidString(clCode)) {
            clCode = "NO_CLCODE";
        }
        JsonUtils.putString(jSONObject, "clcode", clCode);
    }

    @Override // com.applovin.impl.o6
    public String f() {
        return "2.0/vr";
    }

    @Override // com.applovin.impl.s6
    protected boolean h() {
        return this.f9341g.W0();
    }

    @Override // com.applovin.impl.s6
    protected void a(l4 l4Var) {
        this.f9341g.a(l4Var);
        String b10 = l4Var.b();
        Map<String, String> a10 = l4Var.a();
        if (b10.equals("accepted")) {
            this.f9342h.userRewardVerified(this.f9341g, a10);
        } else if (b10.equals("quota_exceeded")) {
            this.f9342h.userOverQuota(this.f9341g, a10);
        } else if (b10.equals("rejected")) {
            this.f9342h.userRewardRejected(this.f9341g, a10);
        } else {
            this.f9342h.validationRequestFailed(this.f9341g, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.o6
    public void a(int i10) {
        String str;
        super.a(i10);
        if (i10 >= 400 && i10 < 500) {
            this.f9342h.userRewardRejected(this.f9341g, Collections.emptyMap());
            str = "rejected";
        } else {
            this.f9342h.validationRequestFailed(this.f9341g, i10);
            str = IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT;
        }
        this.f9341g.a(l4.a(str));
    }
}
