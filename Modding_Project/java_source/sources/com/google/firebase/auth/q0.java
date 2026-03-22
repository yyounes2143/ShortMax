package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzacq;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class q0 extends v7.x<AuthResult> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f20577a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ boolean f20578b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ FirebaseUser f20579c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ String f20580d;

    /* renamed from: e  reason: collision with root package name */
    private final /* synthetic */ String f20581e;

    /* renamed from: f  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20582f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q0(FirebaseAuth firebaseAuth, String str, boolean z10, FirebaseUser firebaseUser, String str2, String str3) {
        this.f20577a = str;
        this.f20578b = z10;
        this.f20579c = firebaseUser;
        this.f20580d = str2;
        this.f20581e = str3;
        Objects.requireNonNull(firebaseAuth);
        this.f20582f = firebaseAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [v7.m0, com.google.firebase.auth.FirebaseAuth$d] */
    @Override // v7.x
    public final Task<AuthResult> c(@Nullable String str) {
        com.google.firebase.f fVar;
        com.google.firebase.f fVar2;
        if (TextUtils.isEmpty(str)) {
            String str2 = this.f20577a;
            Log.i("FirebaseAuth", "Logging in as " + str2 + " with empty reCAPTCHA token");
        } else {
            String str3 = this.f20577a;
            Log.i("FirebaseAuth", "Got reCAPTCHA token for login with email " + str3);
        }
        if (this.f20578b) {
            FirebaseAuth firebaseAuth = this.f20582f;
            zzacq zzacqVar = firebaseAuth.f20412e;
            fVar2 = firebaseAuth.f20408a;
            return zzacqVar.zzb(fVar2, (FirebaseUser) Preconditions.checkNotNull(this.f20579c), this.f20577a, this.f20580d, this.f20581e, str, new FirebaseAuth.d(this.f20582f));
        }
        FirebaseAuth firebaseAuth2 = this.f20582f;
        zzacq zzacqVar2 = firebaseAuth2.f20412e;
        fVar = firebaseAuth2.f20408a;
        return zzacqVar2.zzb(fVar, this.f20577a, this.f20580d, this.f20581e, str, new FirebaseAuth.c(this.f20582f));
    }
}
