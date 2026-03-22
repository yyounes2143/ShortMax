package com.google.firebase.crashlytics;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.common.e0;
import com.google.firebase.crashlytics.internal.common.i0;
import com.google.firebase.crashlytics.internal.common.l;
import com.google.firebase.crashlytics.internal.common.y;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.f;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import g8.b;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import w8.a;
import x8.e;
import z7.d;
import z7.g;
/* loaded from: classes5.dex */
public class FirebaseCrashlytics {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final y f20671a;

    private FirebaseCrashlytics(@NonNull y yVar) {
        this.f20671a = yVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static FirebaseCrashlytics b(@NonNull f fVar, @NonNull e eVar, @NonNull a<z7.a> aVar, @NonNull a<n7.a> aVar2, @NonNull a<h9.a> aVar3, ExecutorService executorService, ExecutorService executorService2, ExecutorService executorService3) {
        Context l10 = fVar.l();
        String packageName = l10.getPackageName();
        g f10 = g.f();
        f10.g("Initializing Firebase Crashlytics " + y.q() + " for " + packageName);
        CrashlyticsWorkers crashlyticsWorkers = new CrashlyticsWorkers(executorService, executorService2);
        h8.g gVar = new h8.g(l10);
        e0 e0Var = new e0(fVar);
        i0 i0Var = new i0(l10, packageName, eVar, e0Var);
        d dVar = new d(aVar);
        y7.d dVar2 = new y7.d(aVar2);
        l lVar = new l(e0Var, gVar);
        FirebaseSessionsDependencies.e(lVar);
        y yVar = new y(fVar, i0Var, dVar, e0Var, dVar2.e(), dVar2.d(), gVar, lVar, new z7.l(aVar3), crashlyticsWorkers);
        String c10 = fVar.p().c();
        String m10 = CommonUtils.m(l10);
        List<com.google.firebase.crashlytics.internal.common.f> j10 = CommonUtils.j(l10);
        g f11 = g.f();
        f11.b("Mapping file ID is: " + m10);
        for (com.google.firebase.crashlytics.internal.common.f fVar2 : j10) {
            g.f().b(String.format("Build id for %s on %s: %s", fVar2.c(), fVar2.a(), fVar2.b()));
        }
        try {
            com.google.firebase.crashlytics.internal.common.a a10 = com.google.firebase.crashlytics.internal.common.a.a(l10, i0Var, c10, m10, j10, new z7.f(l10));
            g f12 = g.f();
            f12.i("Installer package name is: " + a10.f20677d);
            com.google.firebase.crashlytics.internal.settings.e l11 = com.google.firebase.crashlytics.internal.settings.e.l(l10, c10, i0Var, new b(), a10.f20679f, a10.f20680g, gVar, e0Var);
            l11.o(crashlyticsWorkers).addOnFailureListener(executorService3, new OnFailureListener() { // from class: y7.h
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exc) {
                    FirebaseCrashlytics.c(exc);
                }
            });
            if (yVar.F(a10, l11)) {
                yVar.o(l11);
            }
            return new FirebaseCrashlytics(yVar);
        } catch (PackageManager.NameNotFoundException e10) {
            g.f().e("Error retrieving app package info.", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(Exception exc) {
        g.f().e("Error fetching settings.", exc);
    }

    @NonNull
    public static FirebaseCrashlytics getInstance() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) f.m().j(FirebaseCrashlytics.class);
        if (firebaseCrashlytics != null) {
            return firebaseCrashlytics;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    @NonNull
    public Task<Boolean> checkForUnsentReports() {
        return this.f20671a.j();
    }

    public void deleteUnsentReports() {
        this.f20671a.k();
    }

    public boolean didCrashOnPreviousExecution() {
        return this.f20671a.l();
    }

    public boolean isCrashlyticsCollectionEnabled() {
        return this.f20671a.s();
    }

    public void log(@NonNull String str) {
        this.f20671a.B(str);
    }

    public void recordException(@NonNull Throwable th2) {
        if (th2 == null) {
            g.f().k("A null value was passed to recordException. Ignoring.");
        } else {
            this.f20671a.C(th2, Collections.emptyMap());
        }
    }

    public void sendUnsentReports() {
        this.f20671a.G();
    }

    public void setCrashlyticsCollectionEnabled(boolean z10) {
        this.f20671a.H(Boolean.valueOf(z10));
    }

    public void setCustomKey(@NonNull String str, boolean z10) {
        this.f20671a.I(str, Boolean.toString(z10));
    }

    public void setCustomKeys(@NonNull y7.g gVar) {
        throw null;
    }

    public void setUserId(@NonNull String str) {
        this.f20671a.J(str);
    }

    public void setCrashlyticsCollectionEnabled(@Nullable Boolean bool) {
        this.f20671a.H(bool);
    }

    public void setCustomKey(@NonNull String str, double d10) {
        this.f20671a.I(str, Double.toString(d10));
    }

    public void setCustomKey(@NonNull String str, float f10) {
        this.f20671a.I(str, Float.toString(f10));
    }

    public void setCustomKey(@NonNull String str, int i10) {
        this.f20671a.I(str, Integer.toString(i10));
    }

    public void recordException(@NonNull Throwable th2, @NonNull y7.g gVar) {
        if (th2 == null) {
            g.f().k("A null value was passed to recordException. Ignoring.");
            return;
        }
        throw null;
    }

    public void setCustomKey(@NonNull String str, long j10) {
        this.f20671a.I(str, Long.toString(j10));
    }

    public void setCustomKey(@NonNull String str, @NonNull String str2) {
        this.f20671a.I(str, str2);
    }
}
