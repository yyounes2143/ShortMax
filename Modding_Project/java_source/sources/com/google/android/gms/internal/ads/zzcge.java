package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcge implements Runnable {
    final /* synthetic */ zzcgf zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcge(zzcgf zzcgfVar) {
        Objects.requireNonNull(zzcgfVar);
        this.zza = zzcgfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        super/*android.webkit.WebView*/.destroy();
    }
}
