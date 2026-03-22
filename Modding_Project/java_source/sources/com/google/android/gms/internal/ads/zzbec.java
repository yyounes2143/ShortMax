package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsCallback;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzbec extends CustomTabsCallback {
    final /* synthetic */ zzbed zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbec(zzbed zzbedVar) {
        Objects.requireNonNull(zzbedVar);
        this.zza = zzbedVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i10, @Nullable Bundle bundle) {
        this.zza.zze(i10);
    }
}
