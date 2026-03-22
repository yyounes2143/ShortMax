package xq;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.core.VisibilitySource;
import java.util.Map;
/* compiled from: UnifiedAdCallback.java */
/* loaded from: classes8.dex */
public interface c {
    void onAdClicked();

    void onAdExpired();

    void onAdLoadFailed(@NonNull fr.a aVar);

    void onAdShowFailed(@NonNull fr.a aVar);

    void onAdShown();

    void onBrokenCreativeEvent(@Nullable Map<String, Object> map);

    void setVisibilitySource(@NonNull VisibilitySource visibilitySource);
}
