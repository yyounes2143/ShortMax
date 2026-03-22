package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.core.VisibilitySource;
import java.util.Map;
/* compiled from: SimpleAdProcessCallback.java */
/* loaded from: classes7.dex */
class p5 implements AdProcessCallback {
    @Override // io.bidmachine.AdProcessCallback
    public boolean processVisibilityTrackerShown() {
        return false;
    }

    @Override // io.bidmachine.AdProcessCallback
    public void processStartVisibilityTracker() {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void onBrokenCreativeEvent(@Nullable Map<String, Object> map) {
    }

    @Override // io.bidmachine.AdProcessCallback
    public void setVisibilitySource(@NonNull VisibilitySource visibilitySource) {
    }
}
