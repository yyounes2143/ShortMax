package com.ss.ttvideoengine.selector;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.model.IVideoModel;
import java.util.Map;
/* loaded from: classes6.dex */
public interface Selector {
    public static final String TAG = "Selector";

    @NonNull
    SelectedInfo select(@Nullable IVideoModel iVideoModel, @Nullable Map<Integer, Object> map);
}
