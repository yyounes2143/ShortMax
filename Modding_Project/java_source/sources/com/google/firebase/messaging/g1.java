package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.j1;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WithinAppServiceBinder.java */
/* loaded from: classes5.dex */
public class g1 extends Binder {

    /* renamed from: a  reason: collision with root package name */
    private final a f21194a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WithinAppServiceBinder.java */
    /* loaded from: classes5.dex */
    public interface a {
        Task<Void> a(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g1(a aVar) {
        this.f21194a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(final j1.a aVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "service received new intent via bind strategy");
            }
            this.f21194a.a(aVar.f21218a).addOnCompleteListener(new androidx.credentials.a(), new OnCompleteListener() { // from class: com.google.firebase.messaging.f1
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final void onComplete(Task task) {
                    j1.a.this.d();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
