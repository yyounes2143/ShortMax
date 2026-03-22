package com.google.android.gms.internal.p003firebaseauthapi;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzanf  reason: invalid package */
/* loaded from: classes4.dex */
final class zzanf extends zzang {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanf() {
        super();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzang
    public final void zza() {
        if (!zze()) {
            for (int i10 = 0; i10 < zzb(); i10++) {
                Map.Entry zza = zza(i10);
                if (((zzakz) zza.getKey()).zze()) {
                    zza.setValue(Collections.unmodifiableList((List) zza.getValue()));
                }
            }
            for (Map.Entry entry : zzc()) {
                if (((zzakz) entry.getKey()).zze()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
