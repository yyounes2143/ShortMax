package io.bidmachine;

import androidx.annotation.NonNull;
import java.util.Map;
/* loaded from: classes7.dex */
public interface HeaderBiddingCollectParamsCallback {
    void onCollectFail(@NonNull fr.a aVar);

    void onCollectFinished(@NonNull Map<String, String> map);
}
