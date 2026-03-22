package com.google.android.play.core.integrity;

import androidx.annotation.Nullable;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class f extends StandardIntegrityManager.StandardIntegrityTokenRequest.Builder {

    /* renamed from: a  reason: collision with root package name */
    private String f19928a;

    /* renamed from: b  reason: collision with root package name */
    private Set f19929b;

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest build() {
        Set set = this.f19929b;
        if (set != null) {
            return new h(this.f19928a, set, null);
        }
        throw new IllegalStateException("Missing required properties: verdictOptOut");
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setRequestHash(@Nullable String str) {
        this.f19928a = str;
        return this;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityTokenRequest.Builder setVerdictOptOut(Set<Integer> set) {
        if (set != null) {
            this.f19929b = set;
            return this;
        }
        throw new NullPointerException("Null verdictOptOut");
    }
}
