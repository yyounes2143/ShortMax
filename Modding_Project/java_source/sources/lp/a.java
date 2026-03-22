package lp;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.ContextProvider;
import io.bidmachine.NetworkAdUnit;
import java.util.Map;
import lp.b;
import xq.c;
import xq.d;
/* compiled from: AdObject.java */
/* loaded from: classes8.dex */
public interface a<AdObjectParamsType extends b, UnifiedAdRequestParamsType extends xq.d, UnifiedAdCallbackType extends xq.c> {
    @Nullable
    Map<String, Object> getCustomParams();

    AdObjectParamsType getParams();

    void hide();

    void load(@NonNull ContextProvider contextProvider, @NonNull UnifiedAdRequestParamsType unifiedadrequestparamstype, @NonNull NetworkAdUnit networkAdUnit) throws Throwable;

    void onClicked();

    void onClosed(boolean z10);

    void onDestroy();

    void onExpired();

    void onFinished();

    void onImpression();

    void onShowFailed();

    void onShown();
}
