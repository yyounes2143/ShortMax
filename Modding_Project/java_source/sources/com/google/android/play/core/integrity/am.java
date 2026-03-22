package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.IntegrityTokenRequest;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class am extends IntegrityTokenRequest.Builder {

    /* renamed from: a  reason: collision with root package name */
    private String f19856a;

    /* renamed from: b  reason: collision with root package name */
    private Long f19857b;

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest build() {
        String str = this.f19856a;
        if (str != null) {
            return new ao(str, this.f19857b, null, null);
        }
        throw new IllegalStateException("Missing required properties: nonce");
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setCloudProjectNumber(long j10) {
        this.f19857b = Long.valueOf(j10);
        return this;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest.Builder
    public final IntegrityTokenRequest.Builder setNonce(String str) {
        if (str != null) {
            this.f19856a = str;
            return this;
        }
        throw new NullPointerException("Null nonce");
    }
}
