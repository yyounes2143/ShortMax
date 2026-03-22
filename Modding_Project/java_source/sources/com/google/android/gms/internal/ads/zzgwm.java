package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgwm {
    public static final zzgwm zza = new zzgwm(new zzgwn());
    public static final zzgwm zzb = new zzgwm(new zzgwr());
    private final zzgwk zzc;

    static {
        new zzgwm(new zzgwt());
        new zzgwm(new zzgws());
        new zzgwm(new zzgwo());
        new zzgwm(new zzgwq());
        new zzgwm(new zzgwp());
    }

    public zzgwm(zzgwu zzgwuVar) {
        zzgwk zzgwjVar;
        if (!zzgmh.zzb()) {
            if ("The Android Project".equals(System.getProperty("java.vendor"))) {
                zzgwjVar = new zzgwh(zzgwuVar, null);
            } else {
                zzgwjVar = new zzgwi(zzgwuVar, null);
            }
        } else {
            zzgwjVar = new zzgwj(zzgwuVar, null);
        }
        this.zzc = zzgwjVar;
    }

    public static List zzb(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object zza(String str) throws GeneralSecurityException {
        return this.zzc.zza(str);
    }
}
