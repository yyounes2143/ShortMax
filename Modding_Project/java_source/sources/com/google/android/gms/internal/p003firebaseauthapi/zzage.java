package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.NonNull;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzage  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzage implements OnFailureListener {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzage(zzagc zzagcVar) {
        Objects.requireNonNull(zzagcVar);
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        Logger logger;
        logger = zzagc.zza;
        String message = exc.getMessage();
        logger.e("SmsRetrieverClient failed to start: " + message, new Object[0]);
    }
}
