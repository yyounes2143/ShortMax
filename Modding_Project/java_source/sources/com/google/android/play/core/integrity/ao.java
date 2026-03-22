package com.google.android.play.core.integrity;

import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class ao extends IntegrityTokenRequest {

    /* renamed from: a  reason: collision with root package name */
    private final String f19858a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Long f19859b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Object f19860c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ao(String str, Long l10, Object obj, an anVar) {
        this.f19858a = str;
        this.f19859b = l10;
    }

    @ChecksSdkIntAtLeast(api = 23)
    private static boolean a() {
        return true;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    @Nullable
    public final Long cloudProjectNumber() {
        return this.f19859b;
    }

    public final boolean equals(Object obj) {
        boolean z10;
        Long l10;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityTokenRequest) {
            IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
            if (this.f19858a.equals(integrityTokenRequest.nonce()) && ((l10 = this.f19859b) != null ? l10.equals(integrityTokenRequest.cloudProjectNumber()) : integrityTokenRequest.cloudProjectNumber() == null)) {
                z10 = true;
                if (!(obj instanceof ao) && a()) {
                    ao aoVar = (ao) obj;
                    if (!z10) {
                        return false;
                    }
                    Object obj2 = aoVar.f19860c;
                    return true;
                }
                return z10;
            }
        }
        z10 = false;
        if (!(obj instanceof ao)) {
        }
        return z10;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f19858a.hashCode() ^ 1000003;
        Long l10 = this.f19859b;
        if (l10 == null) {
            hashCode = 0;
        } else {
            hashCode = l10.hashCode();
        }
        int i10 = (hashCode2 * 1000003) ^ hashCode;
        if (a()) {
            return i10 * 1000003;
        }
        return i10;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final String nonce() {
        return this.f19858a;
    }

    public final String toString() {
        String str = "IntegrityTokenRequest{nonce=" + this.f19858a + ", cloudProjectNumber=" + this.f19859b;
        if (a()) {
            str = str.concat(", network=null");
        }
        return str.concat("}");
    }
}
