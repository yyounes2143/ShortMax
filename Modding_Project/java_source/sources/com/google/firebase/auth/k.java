package com.google.firebase.auth;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.internal.zzam;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final FirebaseAuth f20538a;

    /* renamed from: b  reason: collision with root package name */
    private Long f20539b;

    /* renamed from: c  reason: collision with root package name */
    private PhoneAuthProvider.a f20540c;

    /* renamed from: d  reason: collision with root package name */
    private Executor f20541d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f20542e;

    /* renamed from: f  reason: collision with root package name */
    private Activity f20543f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private PhoneAuthProvider.ForceResendingToken f20544g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private MultiFactorSession f20545h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private PhoneMultiFactorInfo f20546i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f20547j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f20548k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f20549l;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final FirebaseAuth f20550a;

        /* renamed from: b  reason: collision with root package name */
        private String f20551b;

        /* renamed from: c  reason: collision with root package name */
        private Long f20552c;

        /* renamed from: d  reason: collision with root package name */
        private PhoneAuthProvider.a f20553d;

        /* renamed from: e  reason: collision with root package name */
        private Executor f20554e;

        /* renamed from: f  reason: collision with root package name */
        private Activity f20555f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private PhoneAuthProvider.ForceResendingToken f20556g;

        /* renamed from: h  reason: collision with root package name */
        private MultiFactorSession f20557h;

        /* renamed from: i  reason: collision with root package name */
        private PhoneMultiFactorInfo f20558i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f20559j;

        public a(@NonNull FirebaseAuth firebaseAuth) {
            this.f20550a = (FirebaseAuth) Preconditions.checkNotNull(firebaseAuth);
        }

        @NonNull
        public final k a() {
            boolean z10;
            Preconditions.checkNotNull(this.f20550a, "FirebaseAuth instance cannot be null");
            Preconditions.checkNotNull(this.f20552c, "You must specify an auto-retrieval timeout; please call #setTimeout()");
            Preconditions.checkNotNull(this.f20553d, "You must specify callbacks on your PhoneAuthOptions. Please call #setCallbacks()");
            this.f20554e = this.f20550a.A;
            if (this.f20552c.longValue() >= 0 && this.f20552c.longValue() <= 120) {
                MultiFactorSession multiFactorSession = this.f20557h;
                boolean z11 = false;
                if (multiFactorSession == null) {
                    Preconditions.checkNotEmpty(this.f20551b, "The given phoneNumber is empty. Please set a non-empty phone number with #setPhoneNumber()");
                    Preconditions.checkArgument(!this.f20559j, "You cannot require sms validation without setting a multi-factor session.");
                    if (this.f20558i == null) {
                        z11 = true;
                    }
                    Preconditions.checkArgument(z11, "A phoneMultiFactorInfo must be set for second factor sign-in.");
                } else if (multiFactorSession != null && ((zzam) multiFactorSession).zzd()) {
                    Preconditions.checkNotEmpty(this.f20551b);
                    if (this.f20558i == null) {
                        z11 = true;
                    }
                    Preconditions.checkArgument(z11, "Invalid MultiFactorSession - use the getSession method in MultiFactorResolver to get a valid sign-in session.");
                } else {
                    if (this.f20558i != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    Preconditions.checkArgument(z10, "A phoneMultiFactorInfo must be set for second factor sign-in.");
                    if (this.f20551b == null) {
                        z11 = true;
                    }
                    Preconditions.checkArgument(z11, "A phone number must not be set for MFA sign-in. A PhoneMultiFactorInfo should be set instead.");
                }
                return new k(this.f20550a, this.f20552c, this.f20553d, this.f20554e, this.f20551b, this.f20555f, this.f20556g, this.f20557h, this.f20558i, this.f20559j);
            }
            throw new IllegalArgumentException("We only support 0-120 seconds for sms-auto-retrieval timeout");
        }

        @NonNull
        public final a b(@NonNull Activity activity) {
            this.f20555f = activity;
            return this;
        }

        @NonNull
        public final a c(@NonNull PhoneAuthProvider.a aVar) {
            this.f20553d = aVar;
            return this;
        }

        @NonNull
        public final a d(@NonNull PhoneAuthProvider.ForceResendingToken forceResendingToken) {
            this.f20556g = forceResendingToken;
            return this;
        }

        @NonNull
        public final a e(@NonNull String str) {
            this.f20551b = str;
            return this;
        }

        @NonNull
        public final a f(@NonNull Long l10, @NonNull TimeUnit timeUnit) {
            this.f20552c = Long.valueOf(TimeUnit.SECONDS.convert(l10.longValue(), timeUnit));
            return this;
        }
    }

    @NonNull
    public static a a() {
        return new a(FirebaseAuth.getInstance());
    }

    @Nullable
    public final Activity b() {
        return this.f20543f;
    }

    public final void c(boolean z10) {
        this.f20548k = true;
    }

    @NonNull
    public final FirebaseAuth d() {
        return this.f20538a;
    }

    public final void e(boolean z10) {
        this.f20549l = true;
    }

    @Nullable
    public final MultiFactorSession f() {
        return this.f20545h;
    }

    @Nullable
    public final PhoneAuthProvider.ForceResendingToken g() {
        return this.f20544g;
    }

    @NonNull
    public final PhoneAuthProvider.a h() {
        return this.f20540c;
    }

    @Nullable
    public final PhoneMultiFactorInfo i() {
        return this.f20546i;
    }

    @NonNull
    public final Long j() {
        return this.f20539b;
    }

    @Nullable
    public final String k() {
        return this.f20542e;
    }

    @NonNull
    public final Executor l() {
        return this.f20541d;
    }

    public final boolean m() {
        return this.f20548k;
    }

    public final boolean n() {
        return this.f20547j;
    }

    public final boolean o() {
        return this.f20549l;
    }

    public final boolean p() {
        if (this.f20545h != null) {
            return true;
        }
        return false;
    }

    private k(FirebaseAuth firebaseAuth, Long l10, PhoneAuthProvider.a aVar, Executor executor, @Nullable String str, @NonNull Activity activity, @Nullable PhoneAuthProvider.ForceResendingToken forceResendingToken, @Nullable MultiFactorSession multiFactorSession, @Nullable PhoneMultiFactorInfo phoneMultiFactorInfo, boolean z10) {
        this.f20538a = firebaseAuth;
        this.f20542e = str;
        this.f20539b = l10;
        this.f20540c = aVar;
        this.f20543f = activity;
        this.f20541d = executor;
        this.f20544g = forceResendingToken;
        this.f20545h = multiFactorSession;
        this.f20546i = phoneMultiFactorInfo;
        this.f20547j = z10;
    }
}
