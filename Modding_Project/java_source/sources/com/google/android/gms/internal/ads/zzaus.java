package com.google.android.gms.internal.ads;

import com.ss.ttvideoengine.model.VideoRef;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaus {
    static boolean zza = false;
    public static final /* synthetic */ int zzc = 0;
    private static MessageDigest zzd;
    private static final Object zze = new Object();
    private static final Object zzf = new Object();
    static final CountDownLatch zzb = new CountDownLatch(1);

    public static zzaug zza(byte[] bArr, String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        Vector zzc2 = zzc(bArr, 255);
        if (zzc2 != null && !zzc2.isEmpty()) {
            zzaug zza2 = zzauh.zza();
            int size = zzc2.size();
            for (int i10 = 0; i10 < size; i10++) {
                zza2.zza(zzgxz.zzv(zzh((byte[]) zzc2.get(i10), str, false), 0, 256));
            }
            byte[] zzf2 = zzf(bArr);
            zzgxz zzgxzVar = zzgxz.zzb;
            zza2.zzb(zzgxz.zzv(zzf2, 0, zzf2.length));
            return zza2;
        }
        return null;
    }

    public static String zzb(byte[] bArr, String str) throws GeneralSecurityException, UnsupportedEncodingException {
        byte[] zzaV;
        zzaug zza2 = zza(bArr, str);
        if (zza2 == null) {
            zzaV = zzh(zzg(4096).zzaV(), str, true);
        } else {
            zzaV = ((zzauh) zza2.zzbr()).zzaV();
        }
        return zzaul.zza(zzaV, true);
    }

    static Vector zzc(byte[] bArr, int i10) {
        int length = bArr.length;
        if (length <= 0) {
            return null;
        }
        int i11 = length + 254;
        Vector vector = new Vector();
        for (int i12 = 0; i12 < i11 / 255; i12++) {
            int i13 = i12 * 255;
            try {
                int length2 = bArr.length;
                if (length2 - i13 > 255) {
                    length2 = i13 + 255;
                }
                vector.add(Arrays.copyOfRange(bArr, i13, length2));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    public static void zze() {
        synchronized (zzf) {
            try {
                if (!zza) {
                    zza = true;
                    new Thread(new zzauq(null)).start();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x001f, code lost:
        r1.reset();
        r1.update(r6);
        r6 = com.google.android.gms.internal.ads.zzaus.zzd.digest();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] zzf(byte[] r6) throws java.security.NoSuchAlgorithmException {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzaus.zze
            monitor-enter(r0)
            zze()     // Catch: java.lang.Throwable -> L1b
            r1 = 0
            java.util.concurrent.CountDownLatch r2 = com.google.android.gms.internal.ads.zzaus.zzb     // Catch: java.lang.Throwable -> L1b java.lang.InterruptedException -> L1d
            java.util.concurrent.TimeUnit r3 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Throwable -> L1b java.lang.InterruptedException -> L1d
            r4 = 2
            boolean r2 = r2.await(r4, r3)     // Catch: java.lang.Throwable -> L1b java.lang.InterruptedException -> L1d
            if (r2 != 0) goto L14
            goto L1d
        L14:
            java.security.MessageDigest r2 = com.google.android.gms.internal.ads.zzaus.zzd     // Catch: java.lang.Throwable -> L1b
            if (r2 != 0) goto L19
            goto L1d
        L19:
            r1 = r2
            goto L1d
        L1b:
            r6 = move-exception
            goto L35
        L1d:
            if (r1 == 0) goto L2d
            r1.reset()     // Catch: java.lang.Throwable -> L1b
            r1.update(r6)     // Catch: java.lang.Throwable -> L1b
            java.security.MessageDigest r6 = com.google.android.gms.internal.ads.zzaus.zzd     // Catch: java.lang.Throwable -> L1b
            byte[] r6 = r6.digest()     // Catch: java.lang.Throwable -> L1b
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            return r6
        L2d:
            java.security.NoSuchAlgorithmException r6 = new java.security.NoSuchAlgorithmException     // Catch: java.lang.Throwable -> L1b
            java.lang.String r1 = "Cannot compute hash"
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L1b
            throw r6     // Catch: java.lang.Throwable -> L1b
        L35:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L1b
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaus.zzf(byte[]):byte[]");
    }

    static zzatq zzg(int i10) {
        zzast zza2 = zzatq.zza();
        zza2.zzB(4096L);
        return (zzatq) zza2.zzbr();
    }

    private static byte[] zzh(byte[] bArr, String str, boolean z10) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        int i10;
        byte[] array;
        int length = bArr.length;
        if (true != z10) {
            i10 = 255;
        } else {
            i10 = VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X;
        }
        if (length > i10) {
            bArr = zzg(4096).zzaV();
        }
        int i11 = i10 + 1;
        int length2 = bArr.length;
        byte b10 = (byte) length2;
        if (length2 < i10) {
            byte[] bArr2 = new byte[i10 - length2];
            new SecureRandom().nextBytes(bArr2);
            array = ByteBuffer.allocate(i11).put(b10).put(bArr).put(bArr2).array();
        } else {
            array = ByteBuffer.allocate(i11).put(b10).put(bArr).array();
        }
        if (z10) {
            array = ByteBuffer.allocate(256).put(zzf(array)).put(array).array();
        }
        byte[] bArr3 = new byte[256];
        zzaut[] zzautVarArr = new zzavh().zzcG;
        int length3 = zzautVarArr.length;
        for (int i12 = 0; i12 < 12; i12++) {
            zzautVarArr[i12].zza(array, bArr3);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzauj(str.getBytes("UTF-8")).zza(bArr3);
        }
        return bArr3;
    }
}
