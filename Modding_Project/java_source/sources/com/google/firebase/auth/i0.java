package com.google.firebase.auth;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzac;
import com.google.android.gms.internal.p003firebaseauthapi.zzacq;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.firebase.auth.internal.zzam;
import java.util.Objects;
import v7.u0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class i0 implements OnCompleteListener<u0> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ k f20477a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f20478b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20479c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(FirebaseAuth firebaseAuth, k kVar, String str) {
        this.f20477a = kVar;
        this.f20478b = str;
        Objects.requireNonNull(firebaseAuth);
        this.f20479c = firebaseAuth;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<u0> task) {
        String d10;
        String b10;
        String c10;
        PhoneAuthProvider.a v10;
        String str;
        boolean z10;
        String str2;
        boolean z11;
        if (!task.isSuccessful()) {
            Exception exception = task.getException();
            String str3 = "Error while validating application identity: ";
            if (exception != null) {
                str3 = "Error while validating application identity: " + exception.getMessage();
            }
            Log.e("FirebaseAuth", str3);
            if (exception != null && v7.r.i(exception)) {
                FirebaseAuth.w((FirebaseException) exception, this.f20477a, this.f20478b);
                return;
            }
            Log.e("FirebaseAuth", "Proceeding without any application identifier.");
            c10 = null;
            d10 = null;
            b10 = null;
        } else {
            d10 = task.getResult().d();
            b10 = task.getResult().b();
            c10 = task.getResult().c();
        }
        long longValue = this.f20477a.j().longValue();
        v10 = this.f20479c.v(this.f20477a.k(), this.f20477a.h());
        if (TextUtils.isEmpty(d10)) {
            v10 = this.f20479c.u(this.f20477a, v10, task.getResult());
        }
        PhoneAuthProvider.a aVar = v10;
        zzam zzamVar = (zzam) Preconditions.checkNotNull(this.f20477a.f());
        if (zzac.zzc(c10) && this.f20479c.E() != null && this.f20479c.E().d("PHONE_PROVIDER")) {
            c10 = "NO_RECAPTCHA";
        }
        String str4 = c10;
        if (zzamVar.zzd()) {
            zzacq zzacqVar = this.f20479c.f20412e;
            String str5 = (String) Preconditions.checkNotNull(this.f20477a.k());
            str2 = this.f20479c.f20416i;
            if (this.f20477a.g() != null) {
                z11 = true;
            } else {
                z11 = false;
            }
            zzacqVar.zza(zzamVar, str5, str2, longValue, z11, this.f20477a.n(), d10, b10, str4, this.f20479c.Q(), aVar, this.f20477a.l(), this.f20477a.b());
            return;
        }
        zzacq zzacqVar2 = this.f20479c.f20412e;
        PhoneMultiFactorInfo phoneMultiFactorInfo = (PhoneMultiFactorInfo) Preconditions.checkNotNull(this.f20477a.i());
        str = this.f20479c.f20416i;
        if (this.f20477a.g() != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzacqVar2.zza(zzamVar, phoneMultiFactorInfo, str, longValue, z10, this.f20477a.n(), d10, b10, str4, this.f20479c.Q(), aVar, this.f20477a.l(), this.f20477a.b());
    }
}
