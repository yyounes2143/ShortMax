package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class e extends StandardIntegrityManager.PrepareIntegrityTokenRequest {

    /* renamed from: a  reason: collision with root package name */
    private final long f19927a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ e(long j10, int i10, d dVar) {
        this.f19927a = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    public final int a() {
        return 0;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    public final long b() {
        return this.f19927a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StandardIntegrityManager.PrepareIntegrityTokenRequest) {
            StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest = (StandardIntegrityManager.PrepareIntegrityTokenRequest) obj;
            if (this.f19927a == prepareIntegrityTokenRequest.b()) {
                prepareIntegrityTokenRequest.a();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.f19927a;
        return (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
    }

    public final String toString() {
        return "PrepareIntegrityTokenRequest{cloudProjectNumber=" + this.f19927a + ", webViewRequestMode=0}";
    }
}
