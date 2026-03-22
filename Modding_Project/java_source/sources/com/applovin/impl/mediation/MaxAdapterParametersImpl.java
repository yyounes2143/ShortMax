package com.applovin.impl.mediation;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.impl.b5;
import com.applovin.impl.h3;
import com.applovin.impl.v2;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import java.util.Map;
/* loaded from: classes2.dex */
public class MaxAdapterParametersImpl implements MaxAdapterResponseParameters, MaxAdapterSignalCollectionParameters, MaxAdapterInitializationParameters {

    /* renamed from: a  reason: collision with root package name */
    private String f8517a;

    /* renamed from: b  reason: collision with root package name */
    private Map f8518b;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f8519c;

    /* renamed from: d  reason: collision with root package name */
    private Bundle f8520d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f8521e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f8522f;

    /* renamed from: g  reason: collision with root package name */
    private String f8523g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f8524h;

    /* renamed from: i  reason: collision with root package name */
    private String f8525i;

    /* renamed from: j  reason: collision with root package name */
    private String f8526j;

    /* renamed from: k  reason: collision with root package name */
    private long f8527k;

    /* renamed from: l  reason: collision with root package name */
    private MaxAdFormat f8528l;

    private MaxAdapterParametersImpl() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MaxAdapterParametersImpl a(v2 v2Var) {
        MaxAdapterParametersImpl a10 = a((h3) v2Var);
        a10.f8525i = v2Var.Q();
        a10.f8526j = v2Var.E();
        a10.f8527k = v2Var.D();
        return a10;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters
    public MaxAdFormat getAdFormat() {
        return this.f8528l;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public String getAdUnitId() {
        return this.f8517a;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public long getBidExpirationMillis() {
        return this.f8527k;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getBidResponse() {
        return this.f8526j;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    @Nullable
    public String getConsentString() {
        return this.f8523g;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getCustomParameters() {
        return this.f8520d;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Map<String, Object> getLocalExtraParameters() {
        return this.f8518b;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public Bundle getServerParameters() {
        return this.f8519c;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters
    public String getThirdPartyAdPlacementId() {
        return this.f8525i;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    @Nullable
    public Boolean hasUserConsent() {
        return this.f8521e;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    @Nullable
    public Boolean isAgeRestrictedUser() {
        return null;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    @Nullable
    public Boolean isDoNotSell() {
        return this.f8522f;
    }

    @Override // com.applovin.mediation.adapter.parameters.MaxAdapterParameters
    public boolean isTesting() {
        return this.f8524h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MaxAdapterParametersImpl a(b5 b5Var, String str, MaxAdFormat maxAdFormat) {
        MaxAdapterParametersImpl a10 = a(b5Var);
        a10.f8517a = str;
        a10.f8528l = maxAdFormat;
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MaxAdapterParametersImpl a(h3 h3Var) {
        MaxAdapterParametersImpl maxAdapterParametersImpl = new MaxAdapterParametersImpl();
        maxAdapterParametersImpl.f8517a = h3Var.getAdUnitId();
        maxAdapterParametersImpl.f8521e = h3Var.n();
        maxAdapterParametersImpl.f8522f = h3Var.o();
        maxAdapterParametersImpl.f8523g = h3Var.d();
        maxAdapterParametersImpl.f8518b = h3Var.i();
        maxAdapterParametersImpl.f8519c = h3Var.l();
        maxAdapterParametersImpl.f8520d = h3Var.f();
        maxAdapterParametersImpl.f8524h = h3Var.p();
        return maxAdapterParametersImpl;
    }
}
