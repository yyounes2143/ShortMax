package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class c extends StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder {

    /* renamed from: a  reason: collision with root package name */
    private long f19925a;

    /* renamed from: b  reason: collision with root package name */
    private byte f19926b;

    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder a(int i10) {
        this.f19926b = (byte) (this.f19926b | 2);
        return this;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest build() {
        if (this.f19926b != 3) {
            StringBuilder sb2 = new StringBuilder();
            if ((this.f19926b & 1) == 0) {
                sb2.append(" cloudProjectNumber");
            }
            if ((this.f19926b & 2) == 0) {
                sb2.append(" webViewRequestMode");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb2.toString()));
        }
        return new e(this.f19925a, 0, null);
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder setCloudProjectNumber(long j10) {
        this.f19925a = j10;
        this.f19926b = (byte) (this.f19926b | 1);
        return this;
    }
}
