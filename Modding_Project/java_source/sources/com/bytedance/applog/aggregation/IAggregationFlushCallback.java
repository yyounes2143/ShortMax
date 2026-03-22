package com.bytedance.applog.aggregation;

import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Defines.kt */
@Metadata
/* loaded from: classes3.dex */
public interface IAggregationFlushCallback {
    void onFinish(@NotNull List<Metrics> list);
}
