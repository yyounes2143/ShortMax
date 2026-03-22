package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzgdi extends zzgdg implements com.google.common.util.concurrent.e {
    @Override // com.google.common.util.concurrent.e
    public final void addListener(Runnable runnable, Executor executor) {
        zzc().addListener(runnable, executor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzgdg
    public /* bridge */ /* synthetic */ Future zzb() {
        throw null;
    }

    protected abstract com.google.common.util.concurrent.e zzc();
}
