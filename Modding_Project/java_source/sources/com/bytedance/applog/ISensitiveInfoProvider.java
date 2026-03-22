package com.bytedance.applog;

import androidx.annotation.Nullable;
/* loaded from: classes3.dex */
public interface ISensitiveInfoProvider {
    @Nullable
    String getImsi();

    @Nullable
    String getMac();
}
