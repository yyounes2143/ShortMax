package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzagx extends zzahf {
    public final byte[] zza;

    public zzagx(String str, byte[] bArr) {
        super(str);
        this.zza = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagx.class == obj.getClass()) {
            zzagx zzagxVar = (zzagx) obj;
            if (this.zzf.equals(zzagxVar.zzf) && Arrays.equals(this.zza, zzagxVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zzf.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + Arrays.hashCode(this.zza);
    }
}
