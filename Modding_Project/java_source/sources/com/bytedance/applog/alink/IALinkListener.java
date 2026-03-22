package com.bytedance.applog.alink;

import androidx.annotation.WorkerThread;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes3.dex */
public interface IALinkListener {
    @WorkerThread
    void onALinkData(@Nullable Map<String, String> map, @Nullable Exception exc);

    @WorkerThread
    void onAttributionData(@Nullable Map<String, String> map, @Nullable Exception exc);

    @WorkerThread
    void onAttributionFailedCallback(@Nullable Exception exc);
}
