package com.inmobi.media;

import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* renamed from: com.inmobi.media.q3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3124q3 {

    /* renamed from: a  reason: collision with root package name */
    public final String f25176a;

    /* renamed from: b  reason: collision with root package name */
    public final String f25177b;

    /* renamed from: c  reason: collision with root package name */
    public final String f25178c;

    public AbstractC3124q3(String str) {
        this.f25176a = str.concat(CampaignEx.JSON_KEY_ST_TS);
        this.f25177b = str.concat("ivl");
        this.f25178c = str.concat(MetricsSQLiteCacheKt.METRICS_COUNT);
    }
}
