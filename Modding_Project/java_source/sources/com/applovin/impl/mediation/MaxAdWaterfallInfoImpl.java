package com.applovin.impl.mediation;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.v2;
import com.applovin.impl.x2;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdWaterfallInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
import java.util.List;
/* loaded from: classes2.dex */
public class MaxAdWaterfallInfoImpl implements MaxAdWaterfallInfo {

    /* renamed from: a  reason: collision with root package name */
    private final v2 f8508a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8509b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8510c;

    /* renamed from: d  reason: collision with root package name */
    private final List f8511d;

    /* renamed from: e  reason: collision with root package name */
    private final long f8512e;

    /* renamed from: f  reason: collision with root package name */
    private final x2 f8513f;

    /* renamed from: g  reason: collision with root package name */
    private final List f8514g;

    /* renamed from: h  reason: collision with root package name */
    private final String f8515h;

    /* renamed from: i  reason: collision with root package name */
    private final String f8516i;

    public MaxAdWaterfallInfoImpl(v2 v2Var, long j10, List<MaxNetworkResponseInfo> list, String str) {
        this(v2Var, v2Var.S(), v2Var.T(), j10, list, v2Var.M(), v2Var.R(), str, v2Var.P());
    }

    public String getEventId() {
        return this.f8516i;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public long getLatencyMillis() {
        return this.f8512e;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public MaxAd getLoadedAd() {
        return this.f8508a;
    }

    public String getMCode() {
        return this.f8515h;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public String getName() {
        return this.f8509b;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public List<MaxNetworkResponseInfo> getNetworkResponses() {
        return this.f8511d;
    }

    public List<String> getPostbackUrls() {
        return this.f8514g;
    }

    public x2 getRequestParameters() {
        return this.f8513f;
    }

    @Override // com.applovin.mediation.MaxAdWaterfallInfo
    public String getTestName() {
        return this.f8510c;
    }

    @NonNull
    public String toString() {
        return "MaxAdWaterfallInfo{name=" + this.f8509b + ", testName=" + this.f8510c + ", networkResponses=" + this.f8511d + ", latencyMillis=" + this.f8512e + '}';
    }

    public MaxAdWaterfallInfoImpl(@Nullable v2 v2Var, String str, String str2, long j10, List<MaxNetworkResponseInfo> list, x2 x2Var, List<String> list2, String str3, String str4) {
        this.f8508a = v2Var;
        this.f8509b = str;
        this.f8510c = str2;
        this.f8512e = j10;
        this.f8511d = list;
        this.f8513f = x2Var;
        this.f8514g = list2;
        this.f8515h = str3;
        this.f8516i = str4;
    }
}
