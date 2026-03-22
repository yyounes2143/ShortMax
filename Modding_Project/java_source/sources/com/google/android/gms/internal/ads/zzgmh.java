package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgmh {
    private static final Logger zza = Logger.getLogger(zzgmh.class.getName());
    private static final AtomicBoolean zzb = new AtomicBoolean(false);

    private zzgmh() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean zza() {
        try {
            return (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            zza.logp(Level.INFO, "com.google.crypto.tink.config.internal.TinkFipsUtil", "checkConscryptIsAvailableAndUsesFipsBoringSsl", "Conscrypt is not available or does not support checking for FIPS build.");
            return Boolean.FALSE;
        }
    }

    public static boolean zzb() {
        if (zzb.get()) {
            return true;
        }
        return false;
    }
}
