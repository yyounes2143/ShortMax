package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzacq;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import java.util.Objects;
import v7.w0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class r extends v7.x<AuthResult> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ boolean f20583a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ FirebaseUser f20584b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ EmailAuthCredential f20585c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20586d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(FirebaseAuth firebaseAuth, boolean z10, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential) {
        this.f20583a = z10;
        this.f20584b = firebaseUser;
        this.f20585c = emailAuthCredential;
        Objects.requireNonNull(firebaseAuth);
        this.f20586d = firebaseAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [v7.m0, com.google.firebase.auth.FirebaseAuth$d] */
    @Override // v7.x
    public final Task<AuthResult> c(@Nullable String str) {
        com.google.firebase.f fVar;
        com.google.firebase.f fVar2;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Email link login/reauth with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for login/reauth with email link");
        }
        if (this.f20583a) {
            FirebaseAuth firebaseAuth = this.f20586d;
            zzacq zzacqVar = firebaseAuth.f20412e;
            fVar2 = firebaseAuth.f20408a;
            return zzacqVar.zzb(fVar2, (FirebaseUser) Preconditions.checkNotNull(this.f20584b), this.f20585c, str, (v7.m0) new FirebaseAuth.d(this.f20586d));
        }
        FirebaseAuth firebaseAuth2 = this.f20586d;
        zzacq zzacqVar2 = firebaseAuth2.f20412e;
        fVar = firebaseAuth2.f20408a;
        return zzacqVar2.zza(fVar, this.f20585c, str, (w0) new FirebaseAuth.c(this.f20586d));
    }
}
