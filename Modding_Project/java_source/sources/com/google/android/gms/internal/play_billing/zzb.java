package com.google.android.gms.internal.play_billing;

import com.bytedance.vodsetting.FetcherListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public enum zzb {
    RESPONSE_CODE_UNSPECIFIED(FetcherListener.ErrorOverRetryTimesCode),
    SERVICE_TIMEOUT(-3),
    FEATURE_NOT_SUPPORTED(-2),
    SERVICE_DISCONNECTED(-1),
    OK(0),
    USER_CANCELED(1),
    SERVICE_UNAVAILABLE(2),
    BILLING_UNAVAILABLE(3),
    ITEM_UNAVAILABLE(4),
    DEVELOPER_ERROR(5),
    ERROR(6),
    ITEM_ALREADY_OWNED(7),
    ITEM_NOT_OWNED(8),
    EXPIRED_OFFER_TOKEN(11),
    NETWORK_ERROR(12);
    
    private static final zzbw zzp;
    private final int zzr;

    static {
        zzb[] values;
        zzbv zzbvVar = new zzbv();
        for (zzb zzbVar : values()) {
            zzbvVar.zza(Integer.valueOf(zzbVar.zzr), zzbVar);
        }
        zzp = zzbvVar.zzb();
    }

    zzb(int i10) {
        this.zzr = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzb zza(int i10) {
        zzbw zzbwVar = zzp;
        Integer valueOf = Integer.valueOf(i10);
        if (!zzbwVar.containsKey(valueOf)) {
            return RESPONSE_CODE_UNSPECIFIED;
        }
        return (zzb) zzbwVar.get(valueOf);
    }
}
