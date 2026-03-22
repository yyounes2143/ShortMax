package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class bt {

    /* renamed from: a  reason: collision with root package name */
    private final bn f19923a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(bn bnVar) {
        this.f19923a = bnVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task a(long j10, long j11, int i10, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.f19923a.d(standardIntegrityTokenRequest, j10, j11, 0);
    }
}
