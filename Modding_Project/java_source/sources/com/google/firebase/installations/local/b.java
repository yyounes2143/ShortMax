package com.google.firebase.installations.local;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;
import com.google.firebase.installations.local.PersistedInstallation;
import com.google.firebase.installations.local.a;
/* compiled from: PersistedInstallationEntry.java */
@AutoValue
/* loaded from: classes5.dex */
public abstract class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public static b f21060a = a().a();

    /* compiled from: PersistedInstallationEntry.java */
    @AutoValue.Builder
    /* loaded from: classes5.dex */
    public static abstract class a {
        @NonNull
        public abstract b a();

        @NonNull
        public abstract a b(@Nullable String str);

        @NonNull
        public abstract a c(long j10);

        @NonNull
        public abstract a d(@NonNull String str);

        @NonNull
        public abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable String str);

        @NonNull
        public abstract a g(@NonNull PersistedInstallation.RegistrationStatus registrationStatus);

        @NonNull
        public abstract a h(long j10);
    }

    @NonNull
    public static a a() {
        return new a.b().h(0L).g(PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION).c(0L);
    }

    @Nullable
    public abstract String b();

    public abstract long c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract String e();

    @Nullable
    public abstract String f();

    @NonNull
    public abstract PersistedInstallation.RegistrationStatus g();

    public abstract long h();

    public boolean i() {
        if (g() == PersistedInstallation.RegistrationStatus.REGISTER_ERROR) {
            return true;
        }
        return false;
    }

    public boolean j() {
        if (g() != PersistedInstallation.RegistrationStatus.NOT_GENERATED && g() != PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION) {
            return false;
        }
        return true;
    }

    public boolean k() {
        if (g() == PersistedInstallation.RegistrationStatus.REGISTERED) {
            return true;
        }
        return false;
    }

    public boolean l() {
        if (g() == PersistedInstallation.RegistrationStatus.UNREGISTERED) {
            return true;
        }
        return false;
    }

    public boolean m() {
        if (g() == PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION) {
            return true;
        }
        return false;
    }

    @NonNull
    public abstract a n();

    @NonNull
    public b o(@NonNull String str, long j10, long j11) {
        return n().b(str).c(j10).h(j11).a();
    }

    @NonNull
    public b p() {
        return n().b(null).a();
    }

    @NonNull
    public b q(@NonNull String str) {
        return n().e(str).g(PersistedInstallation.RegistrationStatus.REGISTER_ERROR).a();
    }

    @NonNull
    public b r() {
        return n().g(PersistedInstallation.RegistrationStatus.NOT_GENERATED).a();
    }

    @NonNull
    public b s(@NonNull String str, @NonNull String str2, long j10, @Nullable String str3, long j11) {
        return n().d(str).g(PersistedInstallation.RegistrationStatus.REGISTERED).b(str3).f(str2).c(j11).h(j10).a();
    }

    @NonNull
    public b t(@NonNull String str) {
        return n().d(str).g(PersistedInstallation.RegistrationStatus.UNREGISTERED).a();
    }
}
