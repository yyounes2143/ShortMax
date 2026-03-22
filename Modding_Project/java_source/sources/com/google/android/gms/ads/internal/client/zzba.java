package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbez;
import com.google.android.gms.internal.ads.zzbfn;
import com.ss.texturerender.TextureRenderKeys;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzba {
    @Nullable
    private static final zzcr zza;

    static {
        zzcr zzcpVar;
        zzcr zzcrVar = null;
        try {
            Object newInstance = zzaz.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzj("ClientApi class is not an instance of IBinder.");
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    if (queryLocalInterface instanceof zzcr) {
                        zzcpVar = (zzcr) queryLocalInterface;
                    } else {
                        zzcpVar = new zzcp(iBinder);
                    }
                    zzcrVar = zzcpVar;
                }
            }
        } catch (Exception unused) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to instantiate ClientApi class.");
        }
        zza = zzcrVar;
    }

    @Nullable
    private final Object zze() {
        zzcr zzcrVar = zza;
        if (zzcrVar != null) {
            try {
                return zzb(zzcrVar);
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke local loader using ClientApi class.", e10);
                return null;
            }
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzj("ClientApi class cannot be loaded.");
        return null;
    }

    @Nullable
    private final Object zzf() {
        try {
            return zzc();
        } catch (RemoteException e10) {
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Cannot invoke remote loader.", e10);
            return null;
        }
    }

    @NonNull
    protected abstract Object zza();

    @Nullable
    protected abstract Object zzb(zzcr zzcrVar) throws RemoteException;

    @Nullable
    protected abstract Object zzc() throws RemoteException;

    public final Object zzd(Context context, boolean z10) {
        boolean z11;
        boolean z12;
        Object zze;
        if (!z10) {
            zzbb.zzb();
            if (!com.google.android.gms.ads.internal.util.client.zzf.zzx(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                com.google.android.gms.ads.internal.util.client.zzo.zze("Google Play Services is not available.");
                z10 = true;
            }
        }
        boolean z13 = false;
        if (DynamiteModule.getLocalVersion(context, ModuleDescriptor.MODULE_ID) > DynamiteModule.getRemoteVersion(context, ModuleDescriptor.MODULE_ID)) {
            z11 = false;
        } else {
            z11 = true;
        }
        boolean z14 = !z11;
        zzbde.zza(context);
        if (((Boolean) zzbez.zza.zze()).booleanValue()) {
            z12 = false;
        } else if (((Boolean) zzbez.zzb.zze()).booleanValue()) {
            z12 = true;
            z13 = true;
        } else {
            z13 = z10 | z14;
            z12 = false;
        }
        if (z13) {
            zze = zze();
            if (zze == null && !z12) {
                zze = zzf();
            }
        } else {
            Object zzf = zzf();
            if (zzf == null) {
                if (zzbb.zze().nextInt(((Long) zzbfn.zza.zze()).intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString(TextureRenderKeys.KEY_IS_ACTION, "dynamite_load");
                    bundle.putInt("is_missing", 1);
                    zzbb.zzb().zzs(context, zzbb.zzc().afmaVersion, "gmob-apps", bundle, true);
                }
            }
            zze = zzf == null ? zze() : zzf;
        }
        if (zze == null) {
            return zza();
        }
        return zze;
    }
}
