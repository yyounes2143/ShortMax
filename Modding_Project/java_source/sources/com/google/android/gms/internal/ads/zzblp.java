package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.BaseGmsClient;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzblp extends com.google.android.gms.ads.internal.zzc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzblp(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(zzbwa.zza(context), looper, 166, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
        if (queryLocalInterface instanceof zzblw) {
            return (zzblw) queryLocalInterface;
        }
        return new zzblw(iBinder);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getServiceDescriptor() {
        return "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    protected final String getStartServiceAction() {
        return "com.google.android.gms.ads.service.HTTP";
    }

    public final zzblw zzp() throws DeadObjectException {
        return (zzblw) super.getService();
    }
}
