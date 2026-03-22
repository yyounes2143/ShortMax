package com.google.firebase.messaging;

import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RequestDeduplicator.java */
/* loaded from: classes5.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f21267a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Task<String>> f21268b = new ArrayMap();

    /* compiled from: RequestDeduplicator.java */
    /* loaded from: classes5.dex */
    interface a {
        Task<String> start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(Executor executor) {
        this.f21267a = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task c(String str, Task task) throws Exception {
        synchronized (this) {
            this.f21268b.remove(str);
        }
        return task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public synchronized Task<String> b(final String str, a aVar) {
        Task<String> task = this.f21268b.get(str);
        if (task != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Joining ongoing request for: " + str);
            }
            return task;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Making new request for: " + str);
        }
        Task continueWithTask = aVar.start().continueWithTask(this.f21267a, new Continuation() { // from class: com.google.firebase.messaging.r0
            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                Task c10;
                c10 = s0.this.c(str, task2);
                return c10;
            }
        });
        this.f21268b.put(str, continueWithTask);
        return continueWithTask;
    }
}
