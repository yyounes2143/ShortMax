package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.logging.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagh  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzagh extends zzael {
    private final String zza;
    private final /* synthetic */ zzagc zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzagh(zzagc zzagcVar, zzael zzaelVar, String str) {
        super(zzaelVar);
        Objects.requireNonNull(zzagcVar);
        this.zzb = zzagcVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzael, com.google.android.gms.internal.p003firebaseauthapi.zzaem
    public final void zza(Status status) {
        Logger logger;
        HashMap hashMap;
        logger = zzagc.zza;
        String statusCodeString = CommonStatusCodes.getStatusCodeString(status.getStatusCode());
        String statusMessage = status.getStatusMessage();
        int i10 = 0;
        logger.e("SMS verification code request failed: " + statusCodeString + " " + statusMessage, new Object[0]);
        hashMap = this.zzb.zzd;
        zzagj zzagjVar = (zzagj) hashMap.get(this.zza);
        if (zzagjVar == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(zzagjVar.zzb);
        this.zzb.zzb(this.zza);
        int size = arrayList.size();
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((zzael) obj).zza(status);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzael, com.google.android.gms.internal.p003firebaseauthapi.zzaem
    public final void zzb(String str) {
        Logger logger;
        HashMap hashMap;
        logger = zzagc.zza;
        logger.d("onCodeSent", new Object[0]);
        hashMap = this.zzb.zzd;
        zzagj zzagjVar = (zzagj) hashMap.get(this.zza);
        if (zzagjVar == null) {
            return;
        }
        for (zzael zzaelVar : zzagjVar.zzb) {
            zzaelVar.zzb(str);
        }
        zzagjVar.zzg = true;
        zzagjVar.zzd = str;
        if (zzagjVar.zza <= 0) {
            this.zzb.zze(this.zza);
        } else if (!zzagjVar.zzc) {
            this.zzb.zzd(this.zza);
        } else if (!zzac.zzc(zzagjVar.zze)) {
            zzagc.zzb(this.zzb, this.zza);
        }
    }
}
