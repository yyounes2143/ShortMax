package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class az implements StandardIntegrityManager {

    /* renamed from: a  reason: collision with root package name */
    private final bn f19877a;

    /* renamed from: b  reason: collision with root package name */
    private final bt f19878b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(bn bnVar, bt btVar) {
        this.f19877a = bnVar;
        this.f19878b = btVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Task a(StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest, Long l10) throws Exception {
        final long b10 = prepareIntegrityTokenRequest.b();
        final long longValue = l10.longValue();
        prepareIntegrityTokenRequest.a();
        final bt btVar = this.f19878b;
        return Tasks.forResult(new StandardIntegrityManager.StandardIntegrityTokenProvider(b10, longValue, 0) { // from class: com.google.android.play.core.integrity.bs

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ long f19921b;

            /* renamed from: c  reason: collision with root package name */
            public final /* synthetic */ long f19922c;

            @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
            public final Task request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
                return bt.this.a(this.f19921b, this.f19922c, 0, standardIntegrityTokenRequest);
            }
        });
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager
    public final Task<StandardIntegrityManager.StandardIntegrityTokenProvider> prepareIntegrityToken(final StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest) {
        long b10 = prepareIntegrityTokenRequest.b();
        prepareIntegrityTokenRequest.a();
        return this.f19877a.e(b10, 0).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.play.core.integrity.ay
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                return az.this.a(prepareIntegrityTokenRequest, (Long) obj);
            }
        });
    }
}
