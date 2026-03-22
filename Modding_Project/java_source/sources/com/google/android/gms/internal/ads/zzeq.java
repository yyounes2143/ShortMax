package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzeq implements zzds {
    @Nullable
    private Message zza;

    private zzeq() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzds
    public final void zza() {
        Message message = this.zza;
        message.getClass();
        message.sendToTarget();
        this.zza = null;
        zzes.zzm(this);
    }

    public final zzeq zzb(Message message, zzes zzesVar) {
        this.zza = message;
        return this;
    }

    public final boolean zzc(Handler handler) {
        Message message = this.zza;
        message.getClass();
        boolean sendMessageAtFrontOfQueue = handler.sendMessageAtFrontOfQueue(message);
        this.zza = null;
        zzes.zzm(this);
        return sendMessageAtFrontOfQueue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzeq(zzer zzerVar) {
    }
}
