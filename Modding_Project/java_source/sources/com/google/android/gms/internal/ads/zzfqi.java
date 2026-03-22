package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfqi {
    @VisibleForTesting
    final zzfql zza;
    @VisibleForTesting
    final boolean zzb;

    private zzfqi(zzfql zzfqlVar) {
        boolean z10;
        this.zza = zzfqlVar;
        if (zzfqlVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zzb = z10;
    }

    public static zzfqi zzb(Context context, String str, String str2) {
        zzfql zzfqjVar;
        try {
            try {
                try {
                    IBinder instantiate = DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.gass.internal.clearcut.GassDynamiteClearcutLogger");
                    if (instantiate == null) {
                        zzfqjVar = null;
                    } else {
                        IInterface queryLocalInterface = instantiate.queryLocalInterface("com.google.android.gms.gass.internal.clearcut.IGassClearcut");
                        if (queryLocalInterface instanceof zzfql) {
                            zzfqjVar = (zzfql) queryLocalInterface;
                        } else {
                            zzfqjVar = new zzfqj(instantiate);
                        }
                    }
                    zzfqjVar.zze(ObjectWrapper.wrap(context), str, null);
                    Log.i("GASS", "GassClearcutLogger Initialized.");
                    return new zzfqi(zzfqjVar);
                } catch (RemoteException | zzfpk | NullPointerException | SecurityException unused) {
                    Log.d("GASS", "Cannot dynamite load clearcut");
                    return new zzfqi(new zzfqm());
                }
            } catch (Exception e10) {
                throw new zzfpk(e10);
            }
        } catch (Exception e11) {
            throw new zzfpk(e11);
        }
    }

    public static zzfqi zzc() {
        zzfqm zzfqmVar = new zzfqm();
        Log.d("GASS", "Clearcut logging disabled");
        return new zzfqi(zzfqmVar);
    }

    public final zzfqg zza(byte[] bArr) {
        return new zzfqg(this, bArr, null);
    }
}
