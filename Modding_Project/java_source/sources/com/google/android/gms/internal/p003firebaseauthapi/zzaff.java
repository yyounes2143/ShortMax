package com.google.android.gms.internal.p003firebaseauthapi;

import android.app.Activity;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.f;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import v7.o;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaff  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzaff<ResultT, CallbackT> implements zzafq<ResultT> {
    protected final int zza;
    protected f zzc;
    protected FirebaseUser zzd;
    protected CallbackT zze;
    protected o zzf;
    protected zzafg<ResultT> zzg;
    protected Executor zzi;
    protected zzahv zzj;
    protected zzahk zzk;
    protected zzagv zzl;
    protected zzaif zzm;
    protected AuthCredential zzn;
    protected String zzo;
    protected String zzp;
    protected zzaas zzq;
    protected zzahs zzr;
    protected zzahr zzs;
    protected zzair zzt;
    @VisibleForTesting
    boolean zzu;
    protected final zzafh zzb = new zzafh(this);
    protected final List<PhoneAuthProvider.a> zzh = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaff$zza */
    /* loaded from: classes4.dex */
    public static class zza extends LifecycleCallback {
        private final List<PhoneAuthProvider.a> zza;

        private zza(LifecycleFragment lifecycleFragment, List<PhoneAuthProvider.a> list) {
            super(lifecycleFragment);
            this.mLifecycleFragment.addCallback("PhoneAuthActivityStopCallback", this);
            this.zza = list;
        }

        public static void zza(Activity activity, List<PhoneAuthProvider.a> list) {
            LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
            if (((zza) fragment.getCallbackOrNull("PhoneAuthActivityStopCallback", zza.class)) == null) {
                new zza(fragment, list);
            }
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        @MainThread
        public void onStop() {
            synchronized (this.zza) {
                this.zza.clear();
            }
        }
    }

    public zzaff(int i10) {
        this.zza = i10;
    }

    public final zzaff<ResultT, CallbackT> zza(CallbackT callbackt) {
        this.zze = (CallbackT) Preconditions.checkNotNull(callbackt, "external callback cannot be null");
        return this;
    }

    public abstract void zzb();

    public final void zzb(ResultT resultt) {
        this.zzu = true;
        this.zzg.zza(resultt, null);
    }

    public final zzaff<ResultT, CallbackT> zza(o oVar) {
        this.zzf = (o) Preconditions.checkNotNull(oVar, "external failure callback cannot be null");
        return this;
    }

    public final zzaff<ResultT, CallbackT> zza(f fVar) {
        this.zzc = (f) Preconditions.checkNotNull(fVar, "firebaseApp cannot be null");
        return this;
    }

    public final zzaff<ResultT, CallbackT> zza(FirebaseUser firebaseUser) {
        this.zzd = (FirebaseUser) Preconditions.checkNotNull(firebaseUser, "firebaseUser cannot be null");
        return this;
    }

    public final zzaff<ResultT, CallbackT> zza(PhoneAuthProvider.a aVar, @Nullable Activity activity, Executor executor, String str) {
        PhoneAuthProvider.a zza2 = zzagb.zza(str, aVar, this);
        synchronized (this.zzh) {
            this.zzh.add((PhoneAuthProvider.a) Preconditions.checkNotNull(zza2));
        }
        if (activity != null) {
            zza.zza(activity, this.zzh);
        }
        this.zzi = (Executor) Preconditions.checkNotNull(executor);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zza(zzaff zzaffVar) {
        zzaffVar.zzb();
        Preconditions.checkState(zzaffVar.zzu, "no success or failure set on method implementation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void zza(zzaff zzaffVar, Status status) {
        o oVar = zzaffVar.zzf;
        if (oVar != null) {
            oVar.zza(status);
        }
    }

    public final void zza(Status status) {
        this.zzu = true;
        this.zzg.zza(null, status);
    }
}
