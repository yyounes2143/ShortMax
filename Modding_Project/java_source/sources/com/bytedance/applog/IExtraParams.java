package com.bytedance.applog;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
/* loaded from: classes3.dex */
public interface IExtraParams {
    @Nullable
    HashMap<String, String> getExtraParams(@NonNull Level level);
}
