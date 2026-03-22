package io.bidmachine;

import androidx.annotation.NonNull;
/* loaded from: classes7.dex */
public interface InternalNetworkInitializationCallback {
    void onFail(@NonNull NetworkAdapter networkAdapter, @NonNull String str);

    void onSuccess(@NonNull NetworkAdapter networkAdapter);
}
