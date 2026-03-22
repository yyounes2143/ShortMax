package com.google.android.gms.internal.ads;

import androidx.webkit.Profile;
import com.google.android.gms.common.util.ClientLibraryUtils;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcaf {
    public static final zzgdy zza;
    public static final zzgdy zzb;
    public static final zzgdy zzc;
    public static final ScheduledExecutorService zzd;
    public static final zzgdz zze;
    public static final zzgdy zzf;
    public static final zzgdy zzg;

    static {
        Executor threadPoolExecutor;
        ThreadPoolExecutor threadPoolExecutor2;
        ThreadPoolExecutor threadPoolExecutor3;
        if (ClientLibraryUtils.isPackageSide()) {
            zzfrv.zza();
            threadPoolExecutor = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(new zzcab(Profile.DEFAULT_PROFILE_NAME)));
        } else {
            zzbcv zzbcvVar = zzbde.zzlJ;
            if (com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcvVar) != null && ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcvVar)).booleanValue()) {
                zzbcv zzbcvVar2 = zzbde.zzlK;
                if (com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcvVar2) != null) {
                    zzbcv zzbcvVar3 = zzbde.zzlL;
                    if (com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcvVar3) != null) {
                        ThreadPoolExecutor threadPoolExecutor4 = new ThreadPoolExecutor(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcvVar2)).intValue(), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcvVar2)).intValue(), 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcab(Profile.DEFAULT_PROFILE_NAME));
                        threadPoolExecutor4.allowCoreThreadTimeOut(((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzc(zzbcvVar3)).booleanValue());
                        threadPoolExecutor = threadPoolExecutor4;
                    }
                }
            }
            threadPoolExecutor = new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10L, TimeUnit.SECONDS, new SynchronousQueue(), new zzcab(Profile.DEFAULT_PROFILE_NAME));
        }
        zza = new zzcad(threadPoolExecutor, null);
        if (ClientLibraryUtils.isPackageSide()) {
            threadPoolExecutor2 = zzfrv.zza().zzc(5, new zzcab("Loader"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor5 = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcab("Loader"));
            threadPoolExecutor5.allowCoreThreadTimeOut(true);
            threadPoolExecutor2 = threadPoolExecutor5;
        }
        zzb = new zzcad(threadPoolExecutor2, null);
        if (ClientLibraryUtils.isPackageSide()) {
            threadPoolExecutor3 = zzfrv.zza().zzb(new zzcab("Activeview"), 1);
        } else {
            ThreadPoolExecutor threadPoolExecutor6 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzcab("Activeview"));
            threadPoolExecutor6.allowCoreThreadTimeOut(true);
            threadPoolExecutor3 = threadPoolExecutor6;
        }
        zzc = new zzcad(threadPoolExecutor3, null);
        zzcaa zzcaaVar = new zzcaa(3, new zzcab("Schedule"));
        zzd = zzcaaVar;
        zze = zzgef.zzb(zzcaaVar);
        zzf = new zzcad(new zzcac(), null);
        zzg = new zzcad(zzgef.zzc(), null);
    }
}
