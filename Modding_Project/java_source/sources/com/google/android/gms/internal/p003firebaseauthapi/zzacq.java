package com.google.android.gms.internal.p003firebaseauthapi;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.auth.ActionCodeSettings;
import com.google.firebase.auth.AuthCredential;
import com.google.firebase.auth.AuthResult;
import com.google.firebase.auth.EmailAuthCredential;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.auth.g;
import com.google.firebase.auth.internal.zzab;
import com.google.firebase.auth.internal.zzaf;
import com.google.firebase.auth.internal.zzah;
import com.google.firebase.auth.internal.zzam;
import com.google.firebase.auth.l;
import com.google.firebase.auth.m;
import com.google.firebase.f;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import v7.m0;
import v7.o;
import v7.p;
import v7.u;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzacq  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzacq extends zzafo {
    public zzacq(f fVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.zza = new zzaeo(fVar, scheduledExecutorService);
        this.zzb = executor;
    }

    public final Task<Void> zza(f fVar, String str, @Nullable String str2) {
        return zza((zzacp) new zzacp(str, str2).zza(fVar));
    }

    public final Task<Object> zzb(f fVar, String str, @Nullable String str2) {
        return zza((zzacs) new zzacs(str, str2).zza(fVar));
    }

    public final Task<Object> zzc(f fVar, String str, @Nullable String str2) {
        return zza((zzacw) new zzacw(str, str2).zza(fVar));
    }

    public final Task<Void> zzd(f fVar, FirebaseUser firebaseUser, String str, m0 m0Var) {
        return zza((zzaeg) new zzaeg(str).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(f fVar, String str, String str2, @Nullable String str3) {
        return zza((zzacr) new zzacr(str, str2, str3).zza(fVar));
    }

    public final Task<Void> zzb(f fVar, FirebaseUser firebaseUser, AuthCredential authCredential, @Nullable String str, m0 m0Var) {
        return zza((zzadg) new zzadg(authCredential, str).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<AuthResult> zzc(f fVar, FirebaseUser firebaseUser, AuthCredential authCredential, @Nullable String str, m0 m0Var) {
        return zza((zzadf) new zzadf(authCredential, str).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<AuthResult> zza(f fVar, String str, String str2, String str3, @Nullable String str4, w0 w0Var) {
        return zza((zzacu) new zzacu(str, str2, str3, str4).zza(fVar).zza((zzaff<AuthResult, w0>) w0Var));
    }

    public final Task<String> zzd(f fVar, String str, @Nullable String str2) {
        return zza((zzaek) new zzaek(str, str2).zza(fVar));
    }

    public final Task<AuthResult> zzb(f fVar, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential, @Nullable String str, m0 m0Var) {
        return zza((zzadh) new zzadh(emailAuthCredential, str).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zzc(f fVar, FirebaseUser firebaseUser, String str, m0 m0Var) {
        return zza((zzaed) new zzaed(str).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    @NonNull
    public final Task<Void> zza(FirebaseUser firebaseUser, p pVar) {
        return zza((zzact) new zzact().zza(firebaseUser).zza((zzaff<Void, p>) pVar).zza((o) pVar));
    }

    public final Task<Void> zza(f fVar, l lVar, FirebaseUser firebaseUser, @Nullable String str, w0 w0Var) {
        zzagb.zza();
        zzacv zzacvVar = new zzacv(lVar, firebaseUser.zze(), str, null);
        zzacvVar.zza(fVar).zza((zzaff<Void, w0>) w0Var);
        return zza(zzacvVar);
    }

    public final Task<AuthResult> zzb(f fVar, FirebaseUser firebaseUser, String str, String str2, @Nullable String str3, @Nullable String str4, m0 m0Var) {
        return zza((zzadj) new zzadj(str, str2, str3, str4).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(f fVar, m mVar, FirebaseUser firebaseUser, @Nullable String str, @Nullable String str2, w0 w0Var) {
        zzacv zzacvVar = new zzacv(mVar, firebaseUser.zze(), str, str2);
        zzacvVar.zza(fVar).zza((zzaff<Void, w0>) w0Var);
        return zza(zzacvVar);
    }

    public final Task<AuthResult> zzb(f fVar, FirebaseUser firebaseUser, PhoneAuthCredential phoneAuthCredential, @Nullable String str, m0 m0Var) {
        zzagb.zza();
        return zza((zzadl) new zzadl(phoneAuthCredential, str).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<AuthResult> zza(f fVar, @Nullable FirebaseUser firebaseUser, l lVar, String str, w0 w0Var) {
        zzagb.zza();
        zzacy zzacyVar = new zzacy(lVar, str, null);
        zzacyVar.zza(fVar).zza((zzaff<AuthResult, w0>) w0Var);
        if (firebaseUser != null) {
            zzacyVar.zza(firebaseUser);
        }
        return zza(zzacyVar);
    }

    public final Task<Void> zzb(f fVar, String str, ActionCodeSettings actionCodeSettings, @Nullable String str2, @Nullable String str3) {
        actionCodeSettings.zza(6);
        return zza((zzadp) new zzadp(str, actionCodeSettings, str2, str3, "sendSignInLinkToEmail").zza(fVar));
    }

    public final Task<AuthResult> zza(f fVar, @Nullable FirebaseUser firebaseUser, m mVar, String str, @Nullable String str2, w0 w0Var) {
        zzacy zzacyVar = new zzacy(mVar, str, str2);
        zzacyVar.zza(fVar).zza((zzaff<AuthResult, w0>) w0Var);
        if (firebaseUser != null) {
            zzacyVar.zza(firebaseUser);
        }
        return zza(zzacyVar);
    }

    public final Task<AuthResult> zzb(f fVar, String str, String str2, @Nullable String str3, @Nullable String str4, w0 w0Var) {
        return zza((zzadw) new zzadw(str, str2, str3, str4).zza(fVar).zza((zzaff<AuthResult, w0>) w0Var));
    }

    public final Task<g> zza(f fVar, FirebaseUser firebaseUser, String str, m0 m0Var) {
        return zza((zzacx) new zzacx(str).zza(fVar).zza(firebaseUser).zza((zzaff<g, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<AuthResult> zzb(f fVar, FirebaseUser firebaseUser, String str, m0 m0Var) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(m0Var);
        List<String> zzg = firebaseUser.zzg();
        if ((zzg != null && !zzg.contains(str)) || firebaseUser.R()) {
            return Tasks.forException(zzaen.zza(new Status(17016, str)));
        }
        str.hashCode();
        if (!str.equals(HintConstants.AUTOFILL_HINT_PASSWORD)) {
            return zza((zzaee) new zzaee(str).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
        }
        return zza((zzaeb) new zzaeb().zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<zzahr> zza() {
        return zza(new zzada());
    }

    public final Task<zzahs> zza(@Nullable String str, String str2) {
        return zza(new zzacz(str, str2));
    }

    public final Task<AuthResult> zza(f fVar, FirebaseUser firebaseUser, AuthCredential authCredential, @Nullable String str, m0 m0Var) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(authCredential);
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(m0Var);
        List<String> zzg = firebaseUser.zzg();
        if (zzg != null && zzg.contains(authCredential.m())) {
            return Tasks.forException(zzaen.zza(new Status(17015)));
        }
        if (authCredential instanceof EmailAuthCredential) {
            EmailAuthCredential emailAuthCredential = (EmailAuthCredential) authCredential;
            if (!emailAuthCredential.zzf()) {
                return zza((zzadc) new zzadc(emailAuthCredential, str).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
            }
            return zza((zzadd) new zzadd(emailAuthCredential).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
        } else if (authCredential instanceof PhoneAuthCredential) {
            zzagb.zza();
            return zza((zzade) new zzade((PhoneAuthCredential) authCredential).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
        } else {
            Preconditions.checkNotNull(fVar);
            Preconditions.checkNotNull(authCredential);
            Preconditions.checkNotNull(firebaseUser);
            Preconditions.checkNotNull(m0Var);
            return zza((zzadb) new zzadb(authCredential).zza(fVar).zza(firebaseUser).zza((zzaff<AuthResult, w0>) m0Var).zza((o) m0Var));
        }
    }

    public final Task<Void> zza(f fVar, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential, @Nullable String str, m0 m0Var) {
        return zza((zzadi) new zzadi(emailAuthCredential, str).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(f fVar, FirebaseUser firebaseUser, String str, String str2, @Nullable String str3, @Nullable String str4, m0 m0Var) {
        return zza((zzadk) new zzadk(str, str2, str3, str4).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(f fVar, FirebaseUser firebaseUser, PhoneAuthCredential phoneAuthCredential, @Nullable String str, m0 m0Var) {
        zzagb.zza();
        return zza((zzadm) new zzadm(phoneAuthCredential, str).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    @NonNull
    public final Task<Void> zza(f fVar, FirebaseUser firebaseUser, m0 m0Var) {
        return zza((zzado) new zzado().zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(String str, String str2, String str3, @Nullable String str4) {
        return zza(new zzadn(str, str2, str3, str4));
    }

    public final Task<Void> zza(f fVar, @Nullable ActionCodeSettings actionCodeSettings, String str) {
        return zza((zzadq) new zzadq(str, actionCodeSettings).zza(fVar));
    }

    public final Task<Void> zza(f fVar, String str, ActionCodeSettings actionCodeSettings, @Nullable String str2, @Nullable String str3) {
        actionCodeSettings.zza(1);
        return zza((zzadp) new zzadp(str, actionCodeSettings, str2, str3, "sendPasswordResetEmail").zza(fVar));
    }

    @NonNull
    public final Task<Void> zza(@Nullable String str) {
        return zza(new zzads(str));
    }

    public final Task<AuthResult> zza(f fVar, w0 w0Var, @Nullable String str) {
        return zza((zzadr) new zzadr(str).zza(fVar).zza((zzaff<AuthResult, w0>) w0Var));
    }

    public final Task<AuthResult> zza(f fVar, AuthCredential authCredential, @Nullable String str, w0 w0Var) {
        return zza((zzadu) new zzadu(authCredential, str).zza(fVar).zza((zzaff<AuthResult, w0>) w0Var));
    }

    public final Task<AuthResult> zza(f fVar, String str, @Nullable String str2, w0 w0Var) {
        return zza((zzadt) new zzadt(str, str2).zza(fVar).zza((zzaff<AuthResult, w0>) w0Var));
    }

    public final Task<AuthResult> zza(f fVar, EmailAuthCredential emailAuthCredential, @Nullable String str, w0 w0Var) {
        return zza((zzadv) new zzadv(emailAuthCredential, str).zza(fVar).zza((zzaff<AuthResult, w0>) w0Var));
    }

    public final Task<AuthResult> zza(f fVar, PhoneAuthCredential phoneAuthCredential, @Nullable String str, w0 w0Var) {
        zzagb.zza();
        return zza((zzady) new zzady(phoneAuthCredential, str).zza(fVar).zza((zzaff<AuthResult, w0>) w0Var));
    }

    public final Task<Void> zza(zzam zzamVar, String str, @Nullable String str2, long j10, boolean z10, boolean z11, @Nullable String str3, @Nullable String str4, @Nullable String str5, boolean z12, PhoneAuthProvider.a aVar, Executor executor, @Nullable Activity activity) {
        zzadx zzadxVar = new zzadx(zzamVar, str, str2, j10, z10, z11, str3, str4, str5, z12);
        zzadxVar.zza(aVar, activity, executor, str);
        return zza(zzadxVar);
    }

    public final Task<zzair> zza(zzam zzamVar, @Nullable String str) {
        return zza(new zzaea(zzamVar, str));
    }

    public final Task<Void> zza(zzam zzamVar, PhoneMultiFactorInfo phoneMultiFactorInfo, @Nullable String str, long j10, boolean z10, boolean z11, @Nullable String str2, @Nullable String str3, @Nullable String str4, boolean z12, PhoneAuthProvider.a aVar, Executor executor, @Nullable Activity activity) {
        zzadz zzadzVar = new zzadz(phoneMultiFactorInfo, Preconditions.checkNotEmpty(zzamVar.zzc()), str, j10, z10, z11, str2, str3, str4, z12);
        zzadzVar.zza(aVar, activity, executor, phoneMultiFactorInfo.p());
        return zza(zzadzVar);
    }

    public final Task<Void> zza(f fVar, FirebaseUser firebaseUser, String str, @Nullable String str2, m0 m0Var) {
        return zza((zzaec) new zzaec(firebaseUser.zze(), str, str2).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(f fVar, FirebaseUser firebaseUser, PhoneAuthCredential phoneAuthCredential, m0 m0Var) {
        zzagb.zza();
        return zza((zzaef) new zzaef(phoneAuthCredential).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(f fVar, FirebaseUser firebaseUser, UserProfileChangeRequest userProfileChangeRequest, m0 m0Var) {
        return zza((zzaei) new zzaei(userProfileChangeRequest).zza(fVar).zza(firebaseUser).zza((zzaff<Void, w0>) m0Var).zza((o) m0Var));
    }

    public final Task<Void> zza(String str, String str2, ActionCodeSettings actionCodeSettings) {
        actionCodeSettings.zza(7);
        return zza(new zzaeh(str, str2, actionCodeSettings));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @VisibleForTesting
    public static zzaf zza(f fVar, zzahk zzahkVar) {
        Preconditions.checkNotNull(fVar);
        Preconditions.checkNotNull(zzahkVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzab(zzahkVar, "firebase"));
        List<zzaib> zzl = zzahkVar.zzl();
        if (zzl != null && !zzl.isEmpty()) {
            for (int i10 = 0; i10 < zzl.size(); i10++) {
                arrayList.add(new zzab(zzl.get(i10)));
            }
        }
        zzaf zzafVar = new zzaf(fVar, arrayList);
        zzafVar.j0(new zzah(zzahkVar.zzb(), zzahkVar.zza()));
        zzafVar.zza(zzahkVar.zzn());
        zzafVar.m0(zzahkVar.zze());
        zzafVar.g0(u.b(zzahkVar.zzk()));
        zzafVar.e0(zzahkVar.zzd());
        return zzafVar;
    }

    public final void zza(f fVar, zzaij zzaijVar, PhoneAuthProvider.a aVar, @Nullable Activity activity, Executor executor) {
        zza((zzaej) new zzaej(zzaijVar).zza(fVar).zza(aVar, activity, executor, zzaijVar.zzd()));
    }
}
