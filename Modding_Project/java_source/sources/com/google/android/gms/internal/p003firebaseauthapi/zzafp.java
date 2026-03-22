package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzafp  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzafp<ResultT, CallbackT> implements zzafg<ResultT> {
    private final zzaff<ResultT, CallbackT> zza;
    private final TaskCompletionSource<ResultT> zzb;

    public zzafp(zzaff<ResultT, CallbackT> zzaffVar, TaskCompletionSource<ResultT> taskCompletionSource) {
        this.zza = zzaffVar;
        this.zzb = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafg
    public final void zza(ResultT resultt, Status status) {
        FirebaseUser firebaseUser;
        Preconditions.checkNotNull(this.zzb, "completion source cannot be null");
        if (status != null) {
            zzaff<ResultT, CallbackT> zzaffVar = this.zza;
            if (zzaffVar.zzq != null) {
                TaskCompletionSource<ResultT> taskCompletionSource = this.zzb;
                FirebaseAuth firebaseAuth = FirebaseAuth.getInstance(zzaffVar.zzc);
                zzaff<ResultT, CallbackT> zzaffVar2 = this.zza;
                zzaas zzaasVar = zzaffVar2.zzq;
                if (!"reauthenticateWithCredential".equals(zzaffVar2.zza()) && !"reauthenticateWithCredentialWithData".equals(this.zza.zza())) {
                    firebaseUser = null;
                } else {
                    firebaseUser = this.zza.zzd;
                }
                taskCompletionSource.setException(zzaen.zza(firebaseAuth, zzaasVar, firebaseUser));
                return;
            }
            AuthCredential authCredential = zzaffVar.zzn;
            if (authCredential != null) {
                this.zzb.setException(zzaen.zza(status, authCredential, zzaffVar.zzo, zzaffVar.zzp));
                return;
            } else {
                this.zzb.setException(zzaen.zza(status));
                return;
            }
        }
        this.zzb.setResult(resultt);
    }
}
