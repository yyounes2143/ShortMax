package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.ArrayUtils;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbbn extends com.google.android.gms.ads.internal.zzc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbn(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(zzbwa.zza(context), looper, 123, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.cache.ICacheService");
        if (queryLocalInterface instanceof zzbbq) {
            return (zzbbq) queryLocalInterface;
        }
        return new zzbbq(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.ads.zzh.zzb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.cache.ICacheService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    protected final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.CACHE";
    }

    public final boolean zzp() {
        Feature[] availableFeatures = getAvailableFeatures();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue() && ArrayUtils.contains(availableFeatures, com.google.android.gms.ads.zzh.zza)) {
            return true;
        }
        return false;
    }

    public final zzbbq zzq() throws DeadObjectException {
        return (zzbbq) super.getService();
    }
}
