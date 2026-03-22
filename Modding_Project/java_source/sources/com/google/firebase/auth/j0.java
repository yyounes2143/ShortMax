package com.google.firebase.auth;

import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseException;
import java.util.Objects;
import v7.u0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class j0 implements OnCompleteListener<u0> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ k f20535a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f20536b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ FirebaseAuth f20537c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(FirebaseAuth firebaseAuth, k kVar, String str) {
        this.f20535a = kVar;
        this.f20536b = str;
        Objects.requireNonNull(firebaseAuth);
        this.f20537c = firebaseAuth;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<u0> task) {
        String str;
        if (!task.isSuccessful()) {
            Exception exception = task.getException();
            if (exception != null) {
                str = exception.getMessage();
            } else {
                str = "";
            }
            Log.e("FirebaseAuth", "Error while validating application identity: " + str);
            if (exception != null && v7.r.i(exception)) {
                FirebaseAuth.w((FirebaseException) exception, this.f20535a, this.f20536b);
                return;
            }
            Log.e("FirebaseAuth", "Proceeding without any application identifier.");
        }
        this.f20537c.C(this.f20535a, task.getResult());
    }
}
