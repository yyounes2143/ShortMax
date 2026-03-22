package com.google.android.gms.internal.measurement;

import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzy extends zzai {
    public zzy() {
        super("internal.platform");
        this.zze.put(MobileAdsBridge.versionMethodName, new zzx(this, MobileAdsBridge.versionMethodName));
    }

    @Override // com.google.android.gms.internal.measurement.zzai
    public final zzao zza(zzg zzgVar, List list) {
        return zzao.zzf;
    }
}
