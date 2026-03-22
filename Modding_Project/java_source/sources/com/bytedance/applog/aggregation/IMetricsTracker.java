package com.bytedance.applog.aggregation;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Defines.kt */
@Metadata
/* loaded from: classes3.dex */
public interface IMetricsTracker {

    /* compiled from: Defines.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void track$default(IMetricsTracker iMetricsTracker, Object obj, JSONObject jSONObject, int i10, Object obj2) {
            if (obj2 == null) {
                if ((i10 & 2) != 0) {
                    jSONObject = null;
                }
                iMetricsTracker.track(obj, jSONObject);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: track");
        }
    }

    void track(@Nullable Object obj, @Nullable JSONObject jSONObject);
}
