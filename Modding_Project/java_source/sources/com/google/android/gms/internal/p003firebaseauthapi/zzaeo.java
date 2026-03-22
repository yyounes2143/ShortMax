package com.google.android.gms.internal.p003firebaseauthapi;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.UserProfileChangeRequest;
import com.google.firebase.auth.j;
import com.google.firebase.auth.l;
import com.google.firebase.auth.m;
import com.google.firebase.auth.n;
import com.google.firebase.f;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaeo  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzaeo {
    private static final Logger zza = new Logger("FirebaseAuth", "FirebaseAuthFallback:");
    private final zzaar zzb;
    private final zzagc zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaeo(f fVar, ScheduledExecutorService scheduledExecutorService) {
        Preconditions.checkNotNull(fVar);
        Context l10 = fVar.l();
        Preconditions.checkNotNull(l10);
        this.zzb = new zzaar(new zzafb(fVar, zzafc.zza()));
        this.zzc = new zzagc(l10, scheduledExecutorService);
    }

    public final void zza(String str, @Nullable String str2, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(str, str2, new zzael(zzaemVar, zza));
    }

    public final void zzb(String str, String str2, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzb(str, str2, new zzael(zzaemVar, zza));
    }

    public final void zzc(String str, String str2, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzc(str, str2, new zzael(zzaemVar, zza));
    }

    public final void zzd(String str, @Nullable String str2, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzd(str, str2, new zzael(zzaemVar, zza));
    }

    public final void zze(String str, @Nullable String str2, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        this.zzb.zze(str, str2, new zzael(zzaemVar, zza));
    }

    public final void zzf(String str, String str2, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzf(str, str2, new zzael(zzaemVar, zza));
    }

    public final void zze(String str, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzf(str, new zzael(zzaemVar, zza));
    }

    public final void zza(zzaic zzaicVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaicVar);
        Preconditions.checkNotEmpty(zzaicVar.zzb());
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(zzaicVar, new zzael(zzaemVar, zza));
    }

    public final void zzd(@Nullable String str, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zze(str, new zzael(zzaemVar, zza));
    }

    public final void zzb(String str, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzb(str, new zzael(zzaemVar, zza));
    }

    public final void zzc(String str, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzc(str, new zzael(zzaemVar, zza));
    }

    public final void zza(String str, String str2, @Nullable String str3, @Nullable String str4, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(str, str2, str3, str4, new zzael(zzaemVar, zza));
    }

    public final void zzb(@NonNull zzahm zzahmVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzahmVar);
        Preconditions.checkNotEmpty(zzahmVar.zzc());
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzb(zzahmVar, new zzael(zzaemVar, zza));
    }

    public final void zzc(zzahm zzahmVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzahmVar);
        this.zzb.zzc(zzahmVar, new zzael(zzaemVar, zza));
    }

    public final void zza(String str, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(str, new zzael(zzaemVar, zza));
    }

    public final void zzb(String str, String str2, @Nullable String str3, @Nullable String str4, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(zzaemVar);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzb(str, str2, str3, str4, new zzael(zzaemVar, zza));
    }

    public final void zza(j jVar, String str, @Nullable String str2, @Nullable String str3, zzaem zzaemVar) {
        zzagz zza2;
        Preconditions.checkNotNull(jVar);
        Preconditions.checkNotEmpty(str, "cachedTokenState should not be empty.");
        Preconditions.checkNotNull(zzaemVar);
        if (jVar instanceof l) {
            PhoneAuthCredential a10 = ((l) jVar).a();
            zza2 = zzahd.zza(str, (String) Preconditions.checkNotNull(a10.zzc()), (String) Preconditions.checkNotNull(a10.w()), str2, str3);
        } else if (jVar instanceof m) {
            m mVar = (m) jVar;
            zza2 = zzahf.zza(str, Preconditions.checkNotEmpty(str2), Preconditions.checkNotEmpty(((n) Preconditions.checkNotNull(mVar.a())).q()), Preconditions.checkNotEmpty(mVar.c()), str3);
        } else {
            throw new IllegalArgumentException("multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion.");
        }
        this.zzb.zza(zza2, str, new zzael(zzaemVar, zza));
    }

    public final void zza(String str, j jVar, @Nullable String str2, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(jVar);
        Preconditions.checkNotNull(zzaemVar);
        if (jVar instanceof l) {
            PhoneAuthCredential a10 = ((l) jVar).a();
            this.zzb.zza(zzahc.zza(str, (String) Preconditions.checkNotNull(a10.zzc()), (String) Preconditions.checkNotNull(a10.w()), str2), new zzael(zzaemVar, zza));
        } else if (jVar instanceof m) {
            m mVar = (m) jVar;
            this.zzb.zza(zzahe.zza(str, Preconditions.checkNotEmpty(mVar.c()), str2, Preconditions.checkNotEmpty(mVar.b())), new zzael(zzaemVar, zza));
        } else {
            throw new IllegalArgumentException("multiFactorAssertion must be either PhoneMultiFactorAssertion or TotpMultiFactorAssertion.");
        }
    }

    public final void zza(zzaho zzahoVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzahoVar);
        this.zzb.zza(zzahoVar, new zzael(zzaemVar, zza));
    }

    public final void zza(zzaht zzahtVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzahtVar);
        this.zzb.zza(zzahtVar, new zzael(zzaemVar, zza));
    }

    public final void zza(String str, String str2, String str3, @Nullable String str4, @Nullable String str5, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotEmpty(str3);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(str, str2, str3, str4, str5, new zzael(zzaemVar, zza));
    }

    public final void zza(String str, zzajb zzajbVar, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzajbVar);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(str, zzajbVar, new zzael(zzaemVar, zza));
    }

    public final void zza(zzahz zzahzVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaemVar);
        Preconditions.checkNotNull(zzahzVar);
        this.zzb.zza(Preconditions.checkNotEmpty(zzahzVar.zzb()), zzahzVar.zza(), new zzael(zzaemVar, zza));
    }

    public final void zza(zzaie zzaieVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaieVar);
        this.zzb.zza(zzaieVar, new zzael(zzaemVar, zza));
    }

    public final void zza(@NonNull zzahm zzahmVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzahmVar);
        Preconditions.checkNotEmpty(zzahmVar.zzd());
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(zzahmVar, new zzael(zzaemVar, zza));
    }

    public final void zza(zzaij zzaijVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaemVar);
        Preconditions.checkNotNull(zzaijVar);
        String zzd = zzaijVar.zzd();
        zzael zzaelVar = new zzael(zzaemVar, zza);
        if (this.zzc.zzc(zzd)) {
            if (zzaijVar.zze()) {
                this.zzc.zzb(zzd);
            } else {
                this.zzc.zzb(zzaelVar, zzd);
                return;
            }
        }
        long zzb = zzaijVar.zzb();
        boolean zzf = zzaijVar.zzf();
        if (zza(zzb, zzf)) {
            zzaijVar.zza(new zzagm(this.zzc.zzb()));
        }
        this.zzc.zza(zzd, zzaelVar, zzb, zzf);
        this.zzb.zza(zzaijVar, this.zzc.zza(zzaelVar, zzd));
    }

    public final void zza(zzain zzainVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzainVar);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zzd(zzainVar.zza(), new zzael(zzaemVar, zza));
    }

    public final void zza(zzajb zzajbVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzajbVar);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(zzajbVar, new zzael(zzaemVar, zza));
    }

    public final void zza(zzajc zzajcVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzajcVar);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(zzajcVar, new zzael(zzaemVar, zza));
    }

    public final void zza(zzagx zzagxVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaemVar);
        Preconditions.checkNotNull(zzagxVar.zzb());
        this.zzb.zza(zzagxVar.zzb(), zzagxVar.zzc(), new zzael(zzaemVar, zza));
    }

    public final void zza(zzaan zzaanVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaemVar);
        Preconditions.checkNotNull(zzaanVar);
        this.zzb.zza(zzafw.zza((PhoneAuthCredential) Preconditions.checkNotNull(zzaanVar.zza())), new zzael(zzaemVar, zza));
    }

    public final void zza(String str, String str2, @Nullable String str3, long j10, boolean z10, boolean z11, @Nullable String str4, @Nullable String str5, @Nullable String str6, boolean z12, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str, "idToken should not be empty.");
        Preconditions.checkNotNull(zzaemVar);
        zzael zzaelVar = new zzael(zzaemVar, zza);
        if (this.zzc.zzc(str2)) {
            if (z10) {
                this.zzc.zzb(str2);
            } else {
                this.zzc.zzb(zzaelVar, str2);
                return;
            }
        }
        zzais zza2 = zzais.zza(str, str2, str3, str4, str5, str6, null);
        if (zza(j10, z12)) {
            zza2.zza(new zzagm(this.zzc.zzb()));
        }
        this.zzc.zza(str2, zzaelVar, j10, z12);
        this.zzb.zza(zza2, this.zzc.zza(zzaelVar, str2));
    }

    public final void zza(zzaaq zzaaqVar, zzaem zzaemVar) {
        Preconditions.checkNotNull(zzaaqVar);
        Preconditions.checkNotNull(zzaemVar);
        String phoneNumber = zzaaqVar.zzb().getPhoneNumber();
        zzael zzaelVar = new zzael(zzaemVar, zza);
        if (this.zzc.zzc(phoneNumber)) {
            if (zzaaqVar.zzh()) {
                this.zzc.zzb(phoneNumber);
            } else {
                this.zzc.zzb(zzaelVar, phoneNumber);
                return;
            }
        }
        long zza2 = zzaaqVar.zza();
        boolean zzi = zzaaqVar.zzi();
        zzaiq zza3 = zzaiq.zza(zzaaqVar.zze(), zzaaqVar.zzb().p(), zzaaqVar.zzb().getPhoneNumber(), zzaaqVar.zzd(), zzaaqVar.zzg(), zzaaqVar.zzf(), zzaaqVar.zzc());
        if (zza(zza2, zzi)) {
            zza3.zza(new zzagm(this.zzc.zzb()));
        }
        this.zzc.zza(phoneNumber, zzaelVar, zza2, zzi);
        this.zzb.zza(zza3, this.zzc.zza(zzaelVar, phoneNumber));
    }

    public final void zza(zzaiu zzaiuVar, zzaem zzaemVar) {
        this.zzb.zza(zzaiuVar, new zzael((zzaem) Preconditions.checkNotNull(zzaemVar), zza));
    }

    public final void zza(String str, String str2, @Nullable String str3, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str, "cachedTokenState should not be empty.");
        Preconditions.checkNotEmpty(str2, "uid should not be empty.");
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(str, str2, str3, new zzael(zzaemVar, zza));
    }

    public final void zza(String str, UserProfileChangeRequest userProfileChangeRequest, zzaem zzaemVar) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(userProfileChangeRequest);
        Preconditions.checkNotNull(zzaemVar);
        this.zzb.zza(str, userProfileChangeRequest, new zzael(zzaemVar, zza));
    }

    private static boolean zza(long j10, boolean z10) {
        if (j10 <= 0 || !z10) {
            zza.w("App hash will not be appended to the request.", new Object[0]);
            return false;
        }
        return true;
    }
}
