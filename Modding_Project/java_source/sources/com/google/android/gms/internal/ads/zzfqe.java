package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfqe {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzfqf zzc;
    private final zzfoi zzd;
    private final zzfod zze;
    @Nullable
    private zzfpt zzf;
    private final Object zzg = new Object();

    public zzfqe(@NonNull Context context, @NonNull zzfqf zzfqfVar, @NonNull zzfoi zzfoiVar, @NonNull zzfod zzfodVar, boolean z10) {
        this.zzb = context;
        this.zzc = zzfqfVar;
        this.zzd = zzfoiVar;
        this.zze = zzfodVar;
    }

    private final synchronized Class zzd(@NonNull zzfpu zzfpuVar) throws zzfqd {
        try {
            String zzk = zzfpuVar.zza().zzk();
            HashMap hashMap = zza;
            Class cls = (Class) hashMap.get(zzk);
            if (cls != null) {
                return cls;
            }
            try {
                if (this.zze.zza(zzfpuVar.zzc())) {
                    try {
                        File zzb = zzfpuVar.zzb();
                        if (!zzb.exists()) {
                            zzb.mkdirs();
                        }
                        Class<?> loadClass = new DexClassLoader(zzfpuVar.zzc().getAbsolutePath(), zzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                        hashMap.put(zzk, loadClass);
                        return loadClass;
                    } catch (ClassNotFoundException e10) {
                        e = e10;
                        throw new zzfqd(2008, e);
                    } catch (IllegalArgumentException e11) {
                        e = e11;
                        throw new zzfqd(2008, e);
                    } catch (SecurityException e12) {
                        e = e12;
                        throw new zzfqd(2008, e);
                    }
                }
                throw new zzfqd(2026, "VM did not pass signature verification");
            } catch (GeneralSecurityException e13) {
                throw new zzfqd(2026, e13);
            }
        } finally {
        }
    }

    @Nullable
    public final zzfol zza() {
        zzfpt zzfptVar;
        synchronized (this.zzg) {
            zzfptVar = this.zzf;
        }
        return zzfptVar;
    }

    @Nullable
    public final zzfpu zzb() {
        synchronized (this.zzg) {
            try {
                zzfpt zzfptVar = this.zzf;
                if (zzfptVar != null) {
                    return zzfptVar.zzf();
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean zzc(@NonNull zzfpu zzfpuVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzfpt zzfptVar = new zzfpt(zzd(zzfpuVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzfpuVar.zze(), null, new Bundle(), 2), zzfpuVar, this.zzc, this.zzd, false);
                if (zzfptVar.zzh()) {
                    int zze = zzfptVar.zze();
                    if (zze == 0) {
                        synchronized (this.zzg) {
                            zzfpt zzfptVar2 = this.zzf;
                            if (zzfptVar2 != null) {
                                try {
                                    zzfptVar2.zzg();
                                } catch (zzfqd e10) {
                                    this.zzd.zzc(e10.zza(), -1L, e10);
                                }
                            }
                            this.zzf = zzfptVar;
                        }
                        this.zzd.zzd(3000, System.currentTimeMillis() - currentTimeMillis);
                        return true;
                    }
                    throw new zzfqd(4001, "ci: " + zze);
                }
                throw new zzfqd(4000, "init failed");
            } catch (Exception e11) {
                throw new zzfqd(2004, e11);
            }
        } catch (zzfqd e12) {
            this.zzd.zzc(e12.zza(), System.currentTimeMillis() - currentTimeMillis, e12);
            return false;
        } catch (Exception e13) {
            this.zzd.zzc(4010, System.currentTimeMillis() - currentTimeMillis, e13);
            return false;
        }
    }
}
