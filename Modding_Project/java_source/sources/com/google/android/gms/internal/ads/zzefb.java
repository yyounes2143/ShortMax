package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.ss.texturerender.TextureRenderKeys;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzefb implements zzedm {
    private final Context zza;
    private final zzdgf zzb;
    private final Executor zzc;
    private final zzfbz zzd;
    private final zzdsj zze;

    public zzefb(Context context, Executor executor, zzdgf zzdgfVar, zzfbz zzfbzVar, zzdsj zzdsjVar) {
        this.zza = context;
        this.zzb = zzdgfVar;
        this.zzc = executor;
        this.zzd = zzfbzVar;
        this.zze = zzdsjVar;
    }

    public static /* synthetic */ com.google.common.util.concurrent.e zzd(zzefb zzefbVar, Uri uri, zzfcn zzfcnVar, zzfca zzfcaVar, zzfcd zzfcdVar, Object obj) {
        try {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setData(uri);
            com.google.android.gms.ads.internal.overlay.zzc zzcVar = new com.google.android.gms.ads.internal.overlay.zzc(build.intent, null);
            zzcak zzcakVar = new zzcak();
            zzdfc zzd = zzefbVar.zzb.zzd(new zzcrq(zzfcnVar, zzfcaVar, null), new zzdff(new zzefa(zzefbVar, zzcakVar, zzfcaVar), null));
            zzcakVar.zzc(new AdOverlayInfoParcel(zzcVar, null, zzd.zza(), null, new VersionInfoParcel(0, 0, false), null, null, zzfcdVar.zzb));
            zzefbVar.zzd.zza();
            return zzgdn.zzh(zzd.zzg());
        } catch (Throwable th2) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Error in CustomTabsAdRenderer", th2);
            throw th2;
        }
    }

    @Nullable
    private static String zze(zzfca zzfcaVar) {
        try {
            return zzfcaVar.zzv.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final com.google.common.util.concurrent.e zza(final zzfcn zzfcnVar, final zzfca zzfcaVar) {
        final Uri uri;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznw)).booleanValue()) {
            zzdsi zza = this.zze.zza();
            zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "cstm_tbs_rndr");
            zza.zzj();
        }
        String zze = zze(zzfcaVar);
        if (zze != null) {
            uri = Uri.parse(zze);
        } else {
            uri = null;
        }
        final zzfcd zzfcdVar = zzfcnVar.zzb.zzb;
        return zzgdn.zzn(zzgdn.zzh(null), new zzgcu() { // from class: com.google.android.gms.internal.ads.zzeez
            @Override // com.google.android.gms.internal.ads.zzgcu
            public final com.google.common.util.concurrent.e zza(Object obj) {
                return zzefb.zzd(zzefb.this, uri, zzfcnVar, zzfcaVar, zzfcdVar, obj);
            }
        }, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final boolean zzb(zzfcn zzfcnVar, zzfca zzfcaVar) {
        Context context = this.zza;
        if ((context instanceof Activity) && zzbef.zzg(context) && !TextUtils.isEmpty(zze(zzfcaVar))) {
            return true;
        }
        return false;
    }
}
