package com.google.android.gms.auth.api.identity;

import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
/* compiled from: com.google.android.gms:play-services-auth@@21.4.0 */
/* loaded from: classes4.dex */
final class zbe extends ClearTokenRequest.Builder {
    private String zba;
    private String zbb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbe() {
    }

    @Override // com.google.android.gms.auth.api.identity.ClearTokenRequest.Builder
    public final ClearTokenRequest build() {
        if (this.zba != null) {
            return new ClearTokenRequest(this.zba, this.zbb);
        }
        throw new IllegalStateException("Missing required properties: token");
    }

    @Override // com.google.android.gms.auth.api.identity.ClearTokenRequest.Builder
    public final ClearTokenRequest.Builder setToken(String str) {
        if (str != null) {
            this.zba = str;
            return this;
        }
        throw new NullPointerException("Null token");
    }

    @Override // com.google.android.gms.auth.api.identity.ClearTokenRequest.Builder
    public final ClearTokenRequest.Builder zba(@Nullable String str) {
        this.zbb = str;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zbe(ClearTokenRequest clearTokenRequest) {
        this.zba = clearTokenRequest.getToken();
        this.zbb = clearTokenRequest.zba();
    }
}
