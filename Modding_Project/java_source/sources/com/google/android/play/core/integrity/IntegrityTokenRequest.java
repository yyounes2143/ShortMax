package com.google.android.play.core.integrity;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public abstract class IntegrityTokenRequest {

    /* compiled from: com.google.android.play:integrity@@1.4.0 */
    /* loaded from: classes5.dex */
    public static abstract class Builder {
        public abstract IntegrityTokenRequest build();

        public abstract Builder setCloudProjectNumber(long j10);

        public abstract Builder setNonce(String str);
    }

    public static Builder builder() {
        return new am();
    }

    @Nullable
    public abstract Long cloudProjectNumber();

    public abstract String nonce();
}
