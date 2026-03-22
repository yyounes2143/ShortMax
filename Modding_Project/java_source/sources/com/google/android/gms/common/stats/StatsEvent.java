package com.google.android.gms.common.stats;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
@KeepForSdk
@Deprecated
/* loaded from: classes4.dex */
public abstract class StatsEvent extends AbstractSafeParcelable implements ReflectedParcelable {

    /* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
    @KeepForSdk
    /* loaded from: classes4.dex */
    public interface Types {
        @KeepForSdk
        public static final int EVENT_TYPE_ACQUIRE_WAKE_LOCK = 7;
        @KeepForSdk
        public static final int EVENT_TYPE_RELEASE_WAKE_LOCK = 8;
    }

    @NonNull
    public final String toString() {
        long zza = zza();
        int zzb = zzb();
        String zzc = zzc();
        int length = String.valueOf(zza).length();
        StringBuilder sb2 = new StringBuilder(length + 1 + String.valueOf(zzb).length() + 3 + zzc.length());
        sb2.append(zza);
        sb2.append("\t");
        sb2.append(zzb);
        sb2.append("\t-1");
        sb2.append(zzc);
        return sb2.toString();
    }

    public abstract long zza();

    public abstract int zzb();

    @NonNull
    public abstract String zzc();
}
