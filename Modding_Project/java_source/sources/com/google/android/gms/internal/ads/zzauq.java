package com.google.android.gms.internal.ads;

import com.mbridge.msdk.foundation.tools.SameMD5;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzauq implements Runnable {
    private zzauq() {
        throw null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzaus.zzd(MessageDigest.getInstance(SameMD5.TAG));
            countDownLatch = zzaus.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzaus.zzb;
        } catch (Throwable th2) {
            zzaus.zzb.countDown();
            throw th2;
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzauq(zzaur zzaurVar) {
    }
}
