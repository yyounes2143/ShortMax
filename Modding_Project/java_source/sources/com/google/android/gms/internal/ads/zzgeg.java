package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzgeg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Throwable th2) {
        if (th2 instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzb(Throwable th2) {
        if ((th2 instanceof Error) && !(th2 instanceof StackOverflowError)) {
            throw ((Error) th2);
        }
    }
}
