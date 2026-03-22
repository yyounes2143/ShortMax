package com.google.android.gms.internal.play_billing;
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
final class zzik implements zzfl {
    static final zzfl zza = new zzik();

    private zzik() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzfl
    public final boolean zza(int i10) {
        zzil zzilVar;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        zzilVar = null;
                    } else {
                        zzilVar = zzil.ALTERNATIVE_BILLING_ACTION;
                    }
                } else {
                    zzilVar = zzil.LOCAL_PURCHASES_UPDATED_ACTION;
                }
            } else {
                zzilVar = zzil.PURCHASES_UPDATED_ACTION;
            }
        } else {
            zzilVar = zzil.BROADCAST_ACTION_UNSPECIFIED;
        }
        if (zzilVar != null) {
            return true;
        }
        return false;
    }
}
