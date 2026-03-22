package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbed extends CustomTabsServiceConnection {
    public static final /* synthetic */ int zza = 0;
    private final AtomicBoolean zzb = new AtomicBoolean(false);
    @Nullable
    private Context zzc;
    @Nullable
    private zzdsj zzd;
    @Nullable
    private CustomTabsSession zze;
    @Nullable
    private CustomTabsClient zzf;

    public static /* synthetic */ void zzb(zzbed zzbedVar, int i10) {
        zzdsj zzdsjVar = zzbedVar.zzd;
        if (zzdsjVar != null) {
            zzdsi zza2 = zzdsjVar.zza();
            zza2.zzb(TextureRenderKeys.KEY_IS_ACTION, "cct_nav");
            zza2.zzb("cct_navs", String.valueOf(i10));
            zza2.zzj();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzf(@Nullable Context context) {
        String packageName;
        if (this.zzf == null && context != null && (packageName = CustomTabsClient.getPackageName(context, null)) != null && !packageName.equals(context.getPackageName())) {
            CustomTabsClient.bindCustomTabsService(context, packageName, this);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsServiceConnection
    public final void onCustomTabsServiceConnected(@NonNull ComponentName componentName, @NonNull CustomTabsClient customTabsClient) {
        this.zzf = customTabsClient;
        customTabsClient.warmup(0L);
        this.zze = customTabsClient.newSession(new zzbec(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.zzf = null;
        this.zze = null;
    }

    @Nullable
    public final CustomTabsSession zza() {
        if (this.zze == null) {
            zzcaf.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbeb
                @Override // java.lang.Runnable
                public final void run() {
                    r0.zzf(zzbed.this.zzc);
                }
            });
        }
        return this.zze;
    }

    public final void zzd(Context context, zzdsj zzdsjVar) {
        if (this.zzb.getAndSet(true)) {
            return;
        }
        this.zzc = context;
        this.zzd = zzdsjVar;
        zzf(context);
    }

    @VisibleForTesting
    public final void zze(final int i10) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzeS)).booleanValue() && this.zzd != null) {
            zzcaf.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbea
                @Override // java.lang.Runnable
                public final void run() {
                    zzbed.zzb(zzbed.this, i10);
                }
            });
        }
    }
}
