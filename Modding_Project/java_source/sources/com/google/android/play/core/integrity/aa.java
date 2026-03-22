package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
final class aa implements IntegrityManager {

    /* renamed from: a  reason: collision with root package name */
    private final aj f19828a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(aj ajVar) {
        this.f19828a = ajVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.f19828a.c(integrityTokenRequest);
    }
}
