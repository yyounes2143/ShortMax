package io.bidmachine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.core.VisibilitySource;
import java.util.Map;
/* loaded from: classes7.dex */
public interface AdProcessCallback {
    void onBrokenCreativeEvent(@Nullable Map<String, Object> map);

    void processClicked();

    void processClosed();

    void processDestroy();

    void processExpired();

    void processFillAd();

    void processFinished();

    void processLoadFail(@NonNull fr.a aVar);

    void processLoadSuccess();

    void processShowFail(@NonNull fr.a aVar);

    void processShown();

    void processStartVisibilityTracker();

    void processVisibilityTrackerImpression();

    boolean processVisibilityTrackerShown();

    void setVisibilitySource(@NonNull VisibilitySource visibilitySource);
}
