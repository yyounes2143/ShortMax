package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.cloudmessaging.CloudMessagingReceiver;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.messaging.g0;
import com.google.firebase.messaging.m;
import java.util.concurrent.ExecutionException;
/* loaded from: classes5.dex */
public final class FirebaseInstanceIdReceiver extends CloudMessagingReceiver {
    private static Intent a(@NonNull Context context, @NonNull String str, @NonNull Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected int onMessageReceive(@NonNull Context context, @NonNull CloudMessage cloudMessage) {
        try {
            return ((Integer) Tasks.await(new m(context).k(cloudMessage.getIntent()))).intValue();
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e10);
            return 500;
        }
    }

    @Override // com.google.android.gms.cloudmessaging.CloudMessagingReceiver
    @WorkerThread
    protected void onNotificationDismissed(@NonNull Context context, @NonNull Bundle bundle) {
        Intent a10 = a(context, CloudMessagingReceiver.IntentActionKeys.NOTIFICATION_DISMISS, bundle);
        if (g0.D(a10)) {
            g0.v(a10);
        }
    }
}
