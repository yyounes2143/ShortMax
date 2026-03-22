package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzac;
import com.google.android.gms.internal.p003firebaseauthapi.zzacq;
import com.google.android.gms.internal.p003firebaseauthapi.zzaen;
import com.google.android.gms.internal.p003firebaseauthapi.zzaeu;
import com.google.android.gms.internal.p003firebaseauthapi.zzagb;
import com.google.android.gms.internal.p003firebaseauthapi.zzahr;
import com.google.android.gms.internal.p003firebaseauthapi.zzahs;
import com.google.android.gms.internal.p003firebaseauthapi.zzahv;
import com.google.android.gms.internal.p003firebaseauthapi.zzaij;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.android.recaptcha.RecaptchaAction;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.internal.zzam;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import v7.u0;
import v7.w0;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public class FirebaseAuth implements v7.b {
    @NonNull
    protected final Executor A;
    private String B;

    /* renamed from: a  reason: collision with root package name */
    private final com.google.firebase.f f20408a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    protected final List<b> f20409b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    protected final List<a> f20410c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    protected final List<v7.a> f20411d;

    /* renamed from: e  reason: collision with root package name */
    protected final zzacq f20412e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private FirebaseUser f20413f;

    /* renamed from: g  reason: collision with root package name */
    private final v7.e f20414g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f20415h;

    /* renamed from: i  reason: collision with root package name */
    private String f20416i;

    /* renamed from: j  reason: collision with root package name */
    private final Object f20417j;

    /* renamed from: k  reason: collision with root package name */
    private String f20418k;

    /* renamed from: l  reason: collision with root package name */
    private v7.e0 f20419l;

    /* renamed from: m  reason: collision with root package name */
    private final RecaptchaAction f20420m;

    /* renamed from: n  reason: collision with root package name */
    private final RecaptchaAction f20421n;

    /* renamed from: o  reason: collision with root package name */
    private final RecaptchaAction f20422o;

    /* renamed from: p  reason: collision with root package name */
    private final RecaptchaAction f20423p;
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    private final RecaptchaAction f20424q;
    @VisibleForTesting

    /* renamed from: r  reason: collision with root package name */
    private final RecaptchaAction f20425r;

    /* renamed from: s  reason: collision with root package name */
    private final v7.j0 f20426s;

    /* renamed from: t  reason: collision with root package name */
    private final v7.n0 f20427t;

    /* renamed from: u  reason: collision with root package name */
    private final v7.r f20428u;

    /* renamed from: v  reason: collision with root package name */
    private final w8.b<s7.b> f20429v;

    /* renamed from: w  reason: collision with root package name */
    private final w8.b<u8.h> f20430w;

    /* renamed from: x  reason: collision with root package name */
    private v7.i0 f20431x;

    /* renamed from: y  reason: collision with root package name */
    private final Executor f20432y;

    /* renamed from: z  reason: collision with root package name */
    private final Executor f20433z;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* loaded from: classes5.dex */
    public interface a {
        void a(@NonNull FirebaseAuth firebaseAuth);
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* loaded from: classes5.dex */
    public interface b {
        void a(@NonNull FirebaseAuth firebaseAuth);
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    @VisibleForTesting
    /* loaded from: classes5.dex */
    class c implements w0 {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ FirebaseAuth f20434a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(FirebaseAuth firebaseAuth) {
            Objects.requireNonNull(firebaseAuth);
            this.f20434a = firebaseAuth;
        }

        @Override // v7.w0
        public final void a(zzahv zzahvVar, FirebaseUser firebaseUser) {
            Preconditions.checkNotNull(zzahvVar);
            Preconditions.checkNotNull(firebaseUser);
            firebaseUser.c0(zzahvVar);
            this.f20434a.z(firebaseUser, zzahvVar, true);
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    @VisibleForTesting
    /* loaded from: classes5.dex */
    class d implements v7.o, w0 {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ FirebaseAuth f20435a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(FirebaseAuth firebaseAuth) {
            Objects.requireNonNull(firebaseAuth);
            this.f20435a = firebaseAuth;
        }

        @Override // v7.w0
        public final void a(zzahv zzahvVar, FirebaseUser firebaseUser) {
            Preconditions.checkNotNull(zzahvVar);
            Preconditions.checkNotNull(firebaseUser);
            firebaseUser.c0(zzahvVar);
            this.f20435a.A(firebaseUser, zzahvVar, true, true);
        }

        @Override // v7.o
        public final void zza(Status status) {
            if (status.getStatusCode() == 17011 || status.getStatusCode() == 17021 || status.getStatusCode() == 17005 || status.getStatusCode() == 17091) {
                this.f20435a.l();
            }
        }
    }

    public FirebaseAuth(@NonNull com.google.firebase.f fVar, @NonNull w8.b<s7.b> bVar, @NonNull w8.b<u8.h> bVar2, @NonNull @o7.a Executor executor, @NonNull @o7.b Executor executor2, @NonNull @o7.c Executor executor3, @NonNull @o7.c ScheduledExecutorService scheduledExecutorService, @NonNull @o7.d Executor executor4) {
        this(fVar, new zzacq(fVar, executor2, scheduledExecutorService), new v7.j0(fVar.l(), fVar.q()), v7.n0.d(), v7.r.b(), bVar, bVar2, executor, executor2, executor3, executor4);
    }

    public static void B(@NonNull k kVar) {
        String checkNotEmpty;
        String phoneNumber;
        RecaptchaAction recaptchaAction;
        if (kVar.p()) {
            FirebaseAuth d10 = kVar.d();
            zzam zzamVar = (zzam) Preconditions.checkNotNull(kVar.f());
            if (zzamVar.zzd()) {
                phoneNumber = Preconditions.checkNotEmpty(kVar.k());
                checkNotEmpty = phoneNumber;
            } else {
                PhoneMultiFactorInfo phoneMultiFactorInfo = (PhoneMultiFactorInfo) Preconditions.checkNotNull(kVar.i());
                checkNotEmpty = Preconditions.checkNotEmpty(phoneMultiFactorInfo.p());
                phoneNumber = phoneMultiFactorInfo.getPhoneNumber();
            }
            if (kVar.g() == null || !zzagb.zza(checkNotEmpty, kVar.h(), kVar.b(), kVar.l())) {
                if (zzamVar.zzd()) {
                    recaptchaAction = d10.f20424q;
                } else {
                    recaptchaAction = d10.f20425r;
                }
                d10.f20428u.a(d10, phoneNumber, kVar.b(), d10.Q(), kVar.m(), kVar.o(), recaptchaAction).addOnCompleteListener(new i0(d10, kVar, checkNotEmpty));
                return;
            }
            return;
        }
        FirebaseAuth d11 = kVar.d();
        String checkNotEmpty2 = Preconditions.checkNotEmpty(kVar.k());
        if (kVar.g() != null || !zzagb.zza(checkNotEmpty2, kVar.h(), kVar.b(), kVar.l())) {
            d11.f20428u.a(d11, checkNotEmpty2, kVar.b(), d11.Q(), kVar.m(), kVar.o(), d11.f20423p).addOnCompleteListener(new j0(d11, kVar, checkNotEmpty2));
        }
    }

    private static void F(FirebaseAuth firebaseAuth, @Nullable FirebaseUser firebaseUser) {
        String str;
        if (firebaseUser != null) {
            String x10 = firebaseUser.x();
            Log.d("FirebaseAuth", "Notifying id token listeners about user ( " + x10 + " ).");
        } else {
            Log.d("FirebaseAuth", "Notifying id token listeners about a sign-out event.");
        }
        if (firebaseUser != null) {
            str = firebaseUser.zzd();
        } else {
            str = null;
        }
        firebaseAuth.A.execute(new n0(firebaseAuth, new b9.b(str)));
    }

    private final boolean G(String str) {
        com.google.firebase.auth.d b10 = com.google.firebase.auth.d.b(str);
        if (b10 != null && !TextUtils.equals(this.f20418k, b10.c())) {
            return true;
        }
        return false;
    }

    private static v7.i0 O(FirebaseAuth firebaseAuth) {
        if (firebaseAuth.f20431x == null) {
            firebaseAuth.f20431x = new v7.i0((com.google.firebase.f) Preconditions.checkNotNull(firebaseAuth.f20408a));
        }
        return firebaseAuth.f20431x;
    }

    @NonNull
    @Keep
    public static FirebaseAuth getInstance() {
        return (FirebaseAuth) com.google.firebase.f.m().j(FirebaseAuth.class);
    }

    private final Task<AuthResult> n(EmailAuthCredential emailAuthCredential, @Nullable FirebaseUser firebaseUser, boolean z10) {
        return new r(this, z10, firebaseUser, emailAuthCredential).b(this, this.f20418k, this.f20420m, "EMAIL_PASSWORD_PROVIDER");
    }

    private final Task<AuthResult> r(String str, String str2, @Nullable String str3, @Nullable FirebaseUser firebaseUser, boolean z10) {
        return new q0(this, str, z10, firebaseUser, str2, str3).b(this, str3, this.f20421n, "EMAIL_PASSWORD_PROVIDER");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PhoneAuthProvider.a v(@Nullable String str, PhoneAuthProvider.a aVar) {
        if (this.f20414g.d() && str != null && str.equals(this.f20414g.a())) {
            return new l0(this, aVar);
        }
        return aVar;
    }

    public static void w(@NonNull final FirebaseException firebaseException, @NonNull k kVar, @NonNull String str) {
        Log.e("FirebaseAuth", "Invoking verification failure callback for phone number/uid - " + str);
        final PhoneAuthProvider.a zza = zzagb.zza(str, kVar.h(), null);
        kVar.l().execute(new Runnable() { // from class: com.google.firebase.auth.h0
            @Override // java.lang.Runnable
            public final void run() {
                PhoneAuthProvider.a.this.onVerificationFailed(firebaseException);
            }
        });
    }

    private static void x(FirebaseAuth firebaseAuth, @Nullable FirebaseUser firebaseUser) {
        if (firebaseUser != null) {
            String x10 = firebaseUser.x();
            Log.d("FirebaseAuth", "Notifying auth state listeners about user ( " + x10 + " ).");
        } else {
            Log.d("FirebaseAuth", "Notifying auth state listeners about a sign-out event.");
        }
        firebaseAuth.A.execute(new p0(firebaseAuth));
    }

    @VisibleForTesting
    private static void y(FirebaseAuth firebaseAuth, FirebaseUser firebaseUser, zzahv zzahvVar, boolean z10, boolean z11) {
        boolean z12;
        boolean z13;
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(zzahvVar);
        boolean z14 = false;
        boolean z15 = true;
        if (firebaseAuth.f20413f != null && firebaseUser.x().equals(firebaseAuth.f20413f.x())) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (!z12 && z11) {
            return;
        }
        FirebaseUser firebaseUser2 = firebaseAuth.f20413f;
        if (firebaseUser2 == null) {
            z14 = true;
        } else {
            boolean equals = firebaseUser2.f0().zzc().equals(zzahvVar.zzc());
            if (z12 && equals) {
                z13 = false;
            } else {
                z13 = true;
            }
            if (!z12) {
                z14 = true;
            }
            z15 = z13;
        }
        Preconditions.checkNotNull(firebaseUser);
        if (firebaseAuth.f20413f != null && firebaseUser.x().equals(firebaseAuth.h())) {
            firebaseAuth.f20413f.b0(firebaseUser.p());
            if (!firebaseUser.R()) {
                firebaseAuth.f20413f.d0();
            }
            List<MultiFactorInfo> a10 = firebaseUser.o().a();
            List<zzan> h02 = firebaseUser.h0();
            firebaseAuth.f20413f.g0(a10);
            firebaseAuth.f20413f.e0(h02);
        } else {
            firebaseAuth.f20413f = firebaseUser;
        }
        if (z10) {
            firebaseAuth.f20426s.j(firebaseAuth.f20413f);
        }
        if (z15) {
            FirebaseUser firebaseUser3 = firebaseAuth.f20413f;
            if (firebaseUser3 != null) {
                firebaseUser3.c0(zzahvVar);
            }
            F(firebaseAuth, firebaseAuth.f20413f);
        }
        if (z14) {
            x(firebaseAuth, firebaseAuth.f20413f);
        }
        if (z10) {
            firebaseAuth.f20426s.e(firebaseUser, zzahvVar);
        }
        FirebaseUser firebaseUser4 = firebaseAuth.f20413f;
        if (firebaseUser4 != null) {
            O(firebaseAuth).c(firebaseUser4.f0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final void A(FirebaseUser firebaseUser, zzahv zzahvVar, boolean z10, boolean z11) {
        y(this, firebaseUser, zzahvVar, true, z11);
    }

    public final void C(k kVar, u0 u0Var) {
        boolean z10;
        long longValue = kVar.j().longValue();
        if (longValue >= 0 && longValue <= 120) {
            String checkNotEmpty = Preconditions.checkNotEmpty(kVar.k());
            String c10 = u0Var.c();
            String b10 = u0Var.b();
            String d10 = u0Var.d();
            if (zzac.zzc(c10) && E() != null && E().d("PHONE_PROVIDER")) {
                c10 = "NO_RECAPTCHA";
            }
            String str = c10;
            if (kVar.g() != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            zzaij zzaijVar = new zzaij(checkNotEmpty, longValue, z10, this.f20416i, this.f20418k, d10, b10, str, Q());
            PhoneAuthProvider.a v10 = v(checkNotEmpty, kVar.h());
            if (TextUtils.isEmpty(u0Var.d())) {
                v10 = u(kVar, v10, u0.a().d(d10).c(str).a(b10).b());
            }
            this.f20412e.zza(this.f20408a, zzaijVar, v10, kVar.b(), kVar.l());
            return;
        }
        throw new IllegalArgumentException("We only support 0-120 seconds for sms-auto-retrieval timeout");
    }

    public final synchronized void D(v7.e0 e0Var) {
        this.f20419l = e0Var;
    }

    public final synchronized v7.e0 E() {
        return this.f20419l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [v7.m0, com.google.firebase.auth.FirebaseAuth$d] */
    /* JADX WARN: Type inference failed for: r9v0, types: [v7.m0, com.google.firebase.auth.FirebaseAuth$d] */
    @NonNull
    public final Task<AuthResult> H(@NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(authCredential);
        AuthCredential p10 = authCredential.p();
        if (p10 instanceof EmailAuthCredential) {
            EmailAuthCredential emailAuthCredential = (EmailAuthCredential) p10;
            if (HintConstants.AUTOFILL_HINT_PASSWORD.equals(emailAuthCredential.o())) {
                return r(emailAuthCredential.zzc(), Preconditions.checkNotEmpty(emailAuthCredential.zzd()), firebaseUser.w(), firebaseUser, true);
            }
            if (G(Preconditions.checkNotEmpty(emailAuthCredential.zze()))) {
                return Tasks.forException(zzaen.zza(new Status(17072)));
            }
            return n(emailAuthCredential, firebaseUser, true);
        } else if (p10 instanceof PhoneAuthCredential) {
            return this.f20412e.zzb(this.f20408a, firebaseUser, (PhoneAuthCredential) p10, this.f20418k, (v7.m0) new d(this));
        } else {
            return this.f20412e.zzc(this.f20408a, firebaseUser, p10, firebaseUser.w(), new d(this));
        }
    }

    @NonNull
    public final w8.b<s7.b> J() {
        return this.f20429v;
    }

    @NonNull
    public final w8.b<u8.h> L() {
        return this.f20430w;
    }

    @NonNull
    public final Executor M() {
        return this.f20432y;
    }

    @NonNull
    public final Executor N() {
        return this.f20433z;
    }

    public final void P() {
        Preconditions.checkNotNull(this.f20426s);
        FirebaseUser firebaseUser = this.f20413f;
        if (firebaseUser != null) {
            this.f20426s.h(firebaseUser);
            this.f20413f = null;
        }
        this.f20426s.g();
        F(this, null);
        x(this, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final boolean Q() {
        return zzaeu.zza(b().l());
    }

    @NonNull
    public Task<g> a(boolean z10) {
        return p(this.f20413f, z10);
    }

    @NonNull
    public com.google.firebase.f b() {
        return this.f20408a;
    }

    @Nullable
    public FirebaseUser c() {
        return this.f20413f;
    }

    @Nullable
    public String d() {
        return this.B;
    }

    @NonNull
    public f e() {
        return this.f20414g;
    }

    @Nullable
    public String f() {
        String str;
        synchronized (this.f20415h) {
            str = this.f20416i;
        }
        return str;
    }

    @Nullable
    public String g() {
        String str;
        synchronized (this.f20417j) {
            str = this.f20418k;
        }
        return str;
    }

    @Nullable
    public String h() {
        FirebaseUser firebaseUser = this.f20413f;
        if (firebaseUser == null) {
            return null;
        }
        return firebaseUser.x();
    }

    @NonNull
    public Task<Void> i() {
        if (this.f20419l == null) {
            this.f20419l = new v7.e0(this.f20408a, this);
        }
        return this.f20419l.a(this.f20418k, Boolean.FALSE).continueWithTask(new q(this));
    }

    public void j(@NonNull String str) {
        Preconditions.checkNotEmpty(str);
        synchronized (this.f20417j) {
            this.f20418k = str;
        }
    }

    @NonNull
    public Task<AuthResult> k(@NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(authCredential);
        AuthCredential p10 = authCredential.p();
        if (p10 instanceof EmailAuthCredential) {
            EmailAuthCredential emailAuthCredential = (EmailAuthCredential) p10;
            if (!emailAuthCredential.zzf()) {
                return r(emailAuthCredential.zzc(), (String) Preconditions.checkNotNull(emailAuthCredential.zzd()), this.f20418k, null, false);
            }
            if (G(Preconditions.checkNotEmpty(emailAuthCredential.zze()))) {
                return Tasks.forException(zzaen.zza(new Status(17072)));
            }
            return n(emailAuthCredential, null, false);
        } else if (p10 instanceof PhoneAuthCredential) {
            return this.f20412e.zza(this.f20408a, (PhoneAuthCredential) p10, this.f20418k, (w0) new c(this));
        } else {
            return this.f20412e.zza(this.f20408a, p10, this.f20418k, new c(this));
        }
    }

    public void l() {
        P();
        v7.i0 i0Var = this.f20431x;
        if (i0Var != null) {
            i0Var.b();
        }
    }

    @NonNull
    public final Task<zzahr> m() {
        return this.f20412e.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [v7.m0, com.google.firebase.auth.FirebaseAuth$d] */
    @NonNull
    public final Task<AuthResult> o(@NonNull FirebaseUser firebaseUser, @NonNull AuthCredential authCredential) {
        Preconditions.checkNotNull(authCredential);
        Preconditions.checkNotNull(firebaseUser);
        if (authCredential instanceof EmailAuthCredential) {
            return new m0(this, firebaseUser, (EmailAuthCredential) authCredential.p()).b(this, firebaseUser.w(), this.f20422o, "EMAIL_PASSWORD_PROVIDER");
        }
        return this.f20412e.zza(this.f20408a, firebaseUser, authCredential.p(), (String) null, (v7.m0) new d(this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [v7.m0, com.google.firebase.auth.o0] */
    @NonNull
    public final Task<g> p(@Nullable FirebaseUser firebaseUser, boolean z10) {
        if (firebaseUser == null) {
            return Tasks.forException(zzaen.zza(new Status(17495)));
        }
        zzahv f02 = firebaseUser.f0();
        if (f02.zzg() && !z10) {
            return Tasks.forResult(com.google.firebase.auth.internal.e.a(f02.zzc()));
        }
        return this.f20412e.zza(this.f20408a, firebaseUser, f02.zzd(), (v7.m0) new o0(this));
    }

    @NonNull
    public final Task<zzahs> q(@NonNull String str) {
        return this.f20412e.zza(this.f20418k, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public final PhoneAuthProvider.a u(k kVar, PhoneAuthProvider.a aVar, u0 u0Var) {
        if (kVar.m()) {
            return aVar;
        }
        return new k0(this, kVar, u0Var, aVar);
    }

    public final void z(FirebaseUser firebaseUser, zzahv zzahvVar, boolean z10) {
        A(firebaseUser, zzahvVar, true, false);
    }

    @NonNull
    @Keep
    public static FirebaseAuth getInstance(@NonNull com.google.firebase.f fVar) {
        return (FirebaseAuth) fVar.j(FirebaseAuth.class);
    }

    @VisibleForTesting
    private FirebaseAuth(com.google.firebase.f fVar, zzacq zzacqVar, v7.j0 j0Var, v7.n0 n0Var, v7.r rVar, w8.b<s7.b> bVar, w8.b<u8.h> bVar2, @o7.a Executor executor, @o7.b Executor executor2, @o7.c Executor executor3, @o7.d Executor executor4) {
        zzahv a10;
        this.f20409b = new CopyOnWriteArrayList();
        this.f20410c = new CopyOnWriteArrayList();
        this.f20411d = new CopyOnWriteArrayList();
        this.f20415h = new Object();
        this.f20417j = new Object();
        this.f20420m = RecaptchaAction.custom("getOobCode");
        this.f20421n = RecaptchaAction.custom("signInWithPassword");
        this.f20422o = RecaptchaAction.custom("signUpPassword");
        this.f20423p = RecaptchaAction.custom("sendVerificationCode");
        this.f20424q = RecaptchaAction.custom("mfaSmsEnrollment");
        this.f20425r = RecaptchaAction.custom("mfaSmsSignIn");
        this.f20408a = (com.google.firebase.f) Preconditions.checkNotNull(fVar);
        this.f20412e = (zzacq) Preconditions.checkNotNull(zzacqVar);
        v7.j0 j0Var2 = (v7.j0) Preconditions.checkNotNull(j0Var);
        this.f20426s = j0Var2;
        this.f20414g = new v7.e();
        v7.n0 n0Var2 = (v7.n0) Preconditions.checkNotNull(n0Var);
        this.f20427t = n0Var2;
        this.f20428u = (v7.r) Preconditions.checkNotNull(rVar);
        this.f20429v = bVar;
        this.f20430w = bVar2;
        this.f20432y = executor2;
        this.f20433z = executor3;
        this.A = executor4;
        FirebaseUser b10 = j0Var2.b();
        this.f20413f = b10;
        if (b10 != null && (a10 = j0Var2.a(b10)) != null) {
            y(this, this.f20413f, a10, false, false);
        }
        n0Var2.b(this);
    }
}
