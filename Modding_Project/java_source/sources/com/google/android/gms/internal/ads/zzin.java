package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzin extends zzba {
    public final int zzc;
    @Nullable
    public final String zzd;
    public final int zze;
    @Nullable
    public final zzz zzf;
    public final int zzg;
    @Nullable
    public final zzvh zzh;
    final boolean zzi;

    private zzin(int i10, Throwable th2, int i11) {
        this(i10, th2, null, i11, null, -1, null, 4, null, false);
    }

    public static zzin zzb(Throwable th2, String str, int i10, @Nullable zzz zzzVar, int i11, @Nullable zzvh zzvhVar, boolean z10, int i12) {
        int i13;
        if (zzzVar == null) {
            i13 = 4;
        } else {
            i13 = i11;
        }
        return new zzin(1, th2, null, i12, str, i10, zzzVar, i13, zzvhVar, z10);
    }

    public static zzin zzc(IOException iOException, int i10) {
        return new zzin(0, iOException, i10);
    }

    public static zzin zzd(RuntimeException runtimeException, int i10) {
        return new zzin(2, runtimeException, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckResult
    public final zzin zza(@Nullable zzvh zzvhVar) {
        String message = getMessage();
        String str = zzex.zza;
        return new zzin(message, getCause(), this.zza, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, zzvhVar, this.zzb, this.zzi);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private zzin(int r14, @androidx.annotation.Nullable java.lang.Throwable r15, @androidx.annotation.Nullable java.lang.String r16, int r17, @androidx.annotation.Nullable java.lang.String r18, int r19, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzz r20, int r21, @androidx.annotation.Nullable com.google.android.gms.internal.ads.zzvh r22, boolean r23) {
        /*
            r13 = this;
            r4 = r14
            r8 = r21
            if (r4 == 0) goto L5f
            r0 = 1
            if (r4 == r0) goto Lf
            java.lang.String r0 = "Unexpected runtime error"
            r5 = r18
            r6 = r19
            goto L65
        Lf:
            java.lang.String r1 = java.lang.String.valueOf(r20)
            java.lang.String r2 = com.google.android.gms.internal.ads.zzex.zza
            if (r8 == 0) goto L34
            if (r8 == r0) goto L31
            r0 = 2
            if (r8 == r0) goto L2e
            r0 = 3
            if (r8 == r0) goto L2b
            r0 = 4
            if (r8 != r0) goto L25
            java.lang.String r0 = "YES"
            goto L36
        L25:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L2b:
            java.lang.String r0 = "NO_EXCEEDS_CAPABILITIES"
            goto L36
        L2e:
            java.lang.String r0 = "NO_UNSUPPORTED_DRM"
            goto L36
        L31:
            java.lang.String r0 = "NO_UNSUPPORTED_TYPE"
            goto L36
        L34:
            java.lang.String r0 = "NO"
        L36:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r5 = r18
            r2.append(r5)
            java.lang.String r3 = " error, index="
            r2.append(r3)
            r6 = r19
            r2.append(r6)
            java.lang.String r3 = ", format="
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = ", format_supported="
            r2.append(r1)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            goto L65
        L5f:
            r5 = r18
            r6 = r19
            java.lang.String r0 = "Source error"
        L65:
            r1 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L72
            java.lang.String r1 = ": null"
            java.lang.String r0 = r0.concat(r1)
        L72:
            r1 = r0
            long r10 = android.os.SystemClock.elapsedRealtime()
            r0 = r13
            r2 = r15
            r3 = r17
            r4 = r14
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = r21
            r9 = r22
            r12 = r23
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzin.<init>(int, java.lang.Throwable, java.lang.String, int, java.lang.String, int, com.google.android.gms.internal.ads.zzz, int, com.google.android.gms.internal.ads.zzvh, boolean):void");
    }

    private zzin(String str, @Nullable Throwable th2, int i10, int i11, @Nullable String str2, int i12, @Nullable zzz zzzVar, int i13, @Nullable zzvh zzvhVar, long j10, boolean z10) {
        super(str, th2, i10, Bundle.EMPTY, j10);
        int i14;
        boolean z11;
        if (z10) {
            i14 = i11;
            if (i14 == 1) {
                i14 = 1;
                z11 = true;
            } else {
                z11 = false;
            }
        } else {
            i14 = i11;
            z11 = true;
        }
        zzdd.zzd(z11);
        zzdd.zzd(th2 != null);
        this.zzc = i14;
        this.zzd = str2;
        this.zze = i12;
        this.zzf = zzzVar;
        this.zzg = i13;
        this.zzh = zzvhVar;
        this.zzi = z10;
    }
}
