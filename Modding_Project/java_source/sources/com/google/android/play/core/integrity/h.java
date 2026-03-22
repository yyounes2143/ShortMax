package com.google.android.play.core.integrity;

import androidx.annotation.Nullable;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.Set;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class h extends StandardIntegrityManager.StandardIntegrityTokenRequest {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f19930a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f19931b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ h(String str, Set set, g gVar) {
        this.f19930a = str;
        this.f19931b = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StandardIntegrityManager.StandardIntegrityTokenRequest) {
            StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = (StandardIntegrityManager.StandardIntegrityTokenRequest) obj;
            String str = this.f19930a;
            if (str != null ? str.equals(standardIntegrityTokenRequest.requestHash()) : standardIntegrityTokenRequest.requestHash() == null) {
                if (this.f19931b.equals(standardIntegrityTokenRequest.verdictOptOut())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.f19930a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ this.f19931b.hashCode();
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    @Nullable
    public final String requestHash() {
        return this.f19930a;
    }

    public final String toString() {
        String obj = this.f19931b.toString();
        return "StandardIntegrityTokenRequest{requestHash=" + this.f19930a + ", verdictOptOut=" + obj + "}";
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    public final Set<Integer> verdictOptOut() {
        return this.f19931b;
    }
}
