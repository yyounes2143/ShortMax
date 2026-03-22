package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzcn;
import com.google.android.gms.ads.internal.client.zzco;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
@SafeParcelable.Class(creator = "PublisherAdViewOptionsCreator")
@Deprecated
/* loaded from: classes4.dex */
public final class PublisherAdViewOptions extends AbstractSafeParcelable {
    @NonNull
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzh();
    @SafeParcelable.Field(getter = "getManualImpressionsEnabled", id = 1)
    private final boolean zza;
    @Nullable
    @SafeParcelable.Field(getter = "getAppEventListenerBinder", id = 2, type = "android.os.IBinder")
    private final zzco zzb;
    @Nullable
    @SafeParcelable.Field(getter = "getDelayedBannerAdListenerBinder", id = 3)
    private final IBinder zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PublisherAdViewOptions(@SafeParcelable.Param(id = 1) boolean z10, @Nullable @SafeParcelable.Param(id = 2) IBinder iBinder, @Nullable @SafeParcelable.Param(id = 3) IBinder iBinder2) {
        zzco zzcoVar;
        this.zza = z10;
        if (iBinder != null) {
            zzcoVar = zzcn.zzd(iBinder);
        } else {
            zzcoVar = null;
        }
        this.zzb = zzcoVar;
        this.zzc = iBinder2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i10) {
        IBinder asBinder;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zza);
        zzco zzcoVar = this.zzb;
        if (zzcoVar == null) {
            asBinder = null;
        } else {
            asBinder = zzcoVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 2, asBinder, false);
        SafeParcelWriter.writeIBinder(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @Nullable
    public final zzco zza() {
        return this.zzb;
    }

    public final boolean zzb() {
        return this.zza;
    }

    /* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
    @Deprecated
    /* loaded from: classes4.dex */
    public static final class Builder {
        @NonNull
        @KeepForSdk
        public Builder setShouldDelayBannerRenderingListener(@NonNull ShouldDelayBannerRenderingListener shouldDelayBannerRenderingListener) {
            return this;
        }
    }
}
