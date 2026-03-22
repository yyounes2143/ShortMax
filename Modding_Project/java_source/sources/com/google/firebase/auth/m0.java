package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p003firebaseauthapi.zzacq;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class m0 extends v7.x<AuthResult> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ FirebaseUser f20570a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ EmailAuthCredential f20571b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20572c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(FirebaseAuth firebaseAuth, FirebaseUser firebaseUser, EmailAuthCredential emailAuthCredential) {
        this.f20570a = firebaseUser;
        this.f20571b = emailAuthCredential;
        Objects.requireNonNull(firebaseAuth);
        this.f20572c = firebaseAuth;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [v7.m0, com.google.firebase.auth.FirebaseAuth$d] */
    @Override // v7.x
    public final Task<AuthResult> c(@Nullable String str) {
        com.google.firebase.f fVar;
        if (TextUtils.isEmpty(str)) {
            Log.i("FirebaseAuth", "Linking email account with empty reCAPTCHA token");
        } else {
            Log.i("FirebaseAuth", "Got reCAPTCHA token for linking email account");
        }
        FirebaseAuth firebaseAuth = this.f20572c;
        zzacq zzacqVar = firebaseAuth.f20412e;
        fVar = firebaseAuth.f20408a;
        return zzacqVar.zza(fVar, this.f20570a, (AuthCredential) this.f20571b, str, (v7.m0) new FirebaseAuth.d(this.f20572c));
    }
}
