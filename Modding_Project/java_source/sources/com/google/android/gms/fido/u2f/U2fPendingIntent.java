package com.google.android.gms.fido.u2f;

import android.app.Activity;
import android.content.IntentSender;
import androidx.annotation.NonNull;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
@Deprecated
/* loaded from: classes4.dex */
public interface U2fPendingIntent {
    boolean hasPendingIntent();

    void launchPendingIntent(@NonNull Activity activity, int i10) throws IntentSender.SendIntentException;
}
