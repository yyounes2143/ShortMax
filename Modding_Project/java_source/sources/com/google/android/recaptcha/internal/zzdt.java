package com.google.android.recaptcha.internal;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.google.android.recaptcha.RecaptchaAction;
import gt.e;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzdt {
    @NotNull
    private final String zza;
    @NotNull
    private final zzek zzb;
    @NotNull
    private final zzl zzc;
    @NotNull
    private final i zzd;
    @NotNull
    private final i zze;
    @NotNull
    private final i zzf;
    @NotNull
    private final i zzg;
    @NotNull
    private final i zzh;
    @NotNull
    private final zzbi zzi;

    public zzdt(@NotNull String str, @NotNull zzbi zzbiVar, @NotNull zzek zzekVar, @NotNull zzl zzlVar) {
        this.zza = str;
        this.zzi = zzbiVar;
        this.zzb = zzekVar;
        this.zzc = zzlVar;
        int i10 = zzav.zza;
        this.zzd = c.b(zzdm.zza);
        this.zze = c.b(zzdn.zza);
        this.zzf = c.b(zzdo.zza);
        this.zzg = c.b(zzdp.zza);
        this.zzh = c.b(zzdq.zza);
    }

    public static final /* synthetic */ zzbr zzd(zzdt zzdtVar) {
        return (zzbr) zzdtVar.zze.getValue();
    }

    public static final /* synthetic */ zzff zzg(zzdt zzdtVar) {
        return (zzff) zzdtVar.zzd.getValue();
    }

    public static final /* synthetic */ zzfj zzh(zzdt zzdtVar) {
        return (zzfj) zzdtVar.zzg.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Application zzr() {
        return (Application) this.zzh.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzbd zzs(Exception exc, zzbd zzbdVar) {
        if (!zzx()) {
            return new zzbd(zzbb.zzc, zzba.zzao, exc.getMessage());
        }
        return zzbdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzbf zzt() {
        return (zzbf) this.zzf.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzek zzu(String str) {
        zzek zza = this.zzb.zza();
        zza.zzc(str);
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzv(com.google.android.recaptcha.internal.zzsc r11, long r12, rs.c r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.google.android.recaptcha.internal.zzdj
            if (r0 == 0) goto L13
            r0 = r14
            com.google.android.recaptcha.internal.zzdj r0 = (com.google.android.recaptcha.internal.zzdj) r0
            int r1 = r0.zzd
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzd = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzdj r0 = new com.google.android.recaptcha.internal.zzdj
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.zzb
            java.lang.Object r7 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r0.zzd
            r8 = 2
            r9 = 1
            if (r1 == 0) goto L47
            if (r1 == r9) goto L39
            if (r1 == r8) goto L30
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L30:
            java.lang.Object r11 = r0.zza
            java.lang.Throwable r11 = (java.lang.Throwable) r11
            kotlin.f.b(r14)
            goto Lbd
        L39:
            java.lang.Object r11 = r0.zza
            com.google.android.recaptcha.internal.zzdt r11 = (com.google.android.recaptcha.internal.zzdt) r11
            kotlin.f.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r12 = r14.n()
            goto L82
        L47:
            kotlin.f.b(r14)
            java.lang.String r14 = r11.zzO()
            zzy(r14)
            java.util.List r14 = r10.zzw()
            java.util.Iterator r14 = r14.iterator()
        L59:
            boolean r1 = r14.hasNext()
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r14.next()
            com.google.android.recaptcha.internal.zze r1 = (com.google.android.recaptcha.internal.zze) r1
            com.google.android.recaptcha.internal.zzl r2 = r10.zzc
            com.google.android.recaptcha.internal.zze[] r1 = new com.google.android.recaptcha.internal.zze[]{r1}
            r2.zzf(r1)
            goto L59
        L6f:
            com.google.android.recaptcha.internal.zzl r1 = r10.zzc
            com.google.android.recaptcha.internal.zzek r5 = r10.zzb
            r0.zza = r10
            r0.zzd = r9
            r2 = r12
            r4 = r11
            r6 = r0
            java.lang.Object r12 = r1.zzc(r2, r4, r5, r6)
            if (r12 != r7) goto L81
            goto Lbb
        L81:
            r11 = r10
        L82:
            java.lang.Throwable r12 = kotlin.Result.g(r12)
            if (r12 != 0) goto L8b
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        L8b:
            com.google.android.recaptcha.internal.zzbi r13 = r11.zzi
            gt.g0 r13 = r13.zzd()
            kotlin.coroutines.CoroutineContext r13 = r13.getCoroutineContext()
            r14 = 0
            kotlinx.coroutines.t.i(r13, r14, r9, r14)
            com.google.android.recaptcha.internal.zzbi r11 = r11.zzi
            gt.g0 r11 = r11.zzd()
            kotlin.coroutines.CoroutineContext r11 = r11.getCoroutineContext()
            kotlinx.coroutines.r r11 = kotlinx.coroutines.t.m(r11)
            kotlin.sequences.Sequence r11 = r11.getChildren()
            java.util.List r11 = kotlin.sequences.j.P(r11)
            java.util.Collection r11 = (java.util.Collection) r11
            r0.zza = r12
            r0.zzd = r8
            java.lang.Object r11 = kotlinx.coroutines.AwaitKt.c(r11, r0)
            if (r11 != r7) goto Lbc
        Lbb:
            return r7
        Lbc:
            r11 = r12
        Lbd:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzdt.zzv(com.google.android.recaptcha.internal.zzsc, long, rs.c):java.lang.Object");
    }

    private final List zzw() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new zzv(zzr(), this.zzb.zza(), this.zzi, null, 8, null));
        arrayList.add(new zzja(this.zzb, this.zzi));
        return CollectionsKt.d1(arrayList);
    }

    private final boolean zzx() {
        NetworkCapabilities networkCapabilities;
        int i10 = zzav.zza;
        zzbe zzbeVar = (zzbe) c.b(zzdi.zza).getValue();
        try {
            Object systemService = zzr().getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                if (networkCapabilities.hasCapability(16)) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private static final void zzy(String str) {
        try {
            zzrv zzj = zzrv.zzj(zzbt.zza(str));
            int i10 = zzav.zza;
            ((zzfu) c.b(zzde.zza).getValue()).zza(zzj);
        } catch (Exception e10) {
            throw new zzbd(zzbb.zzl, zzba.zzan, e10.getMessage());
        }
    }

    @NotNull
    public final zzsp zzi(@NotNull RecaptchaAction recaptchaAction, @NotNull zzsi zzsiVar, @NotNull zzsc zzscVar) {
        zzso zzf = zzsp.zzf();
        zzf.zzs(this.zza);
        zzf.zze(recaptchaAction.getAction());
        zzf.zzf(zzscVar.zzN());
        zzf.zzq(zzscVar.zzM());
        zzf.zzr(zzsiVar);
        return (zzsp) zzf.zzk();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0039  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzl(@org.jetbrains.annotations.NotNull java.lang.String r6, long r7, @org.jetbrains.annotations.NotNull rs.c r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.google.android.recaptcha.internal.zzdd
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.recaptcha.internal.zzdd r0 = (com.google.android.recaptcha.internal.zzdd) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzdd r0 = new com.google.android.recaptcha.internal.zzdd
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            com.google.android.recaptcha.internal.zzen r6 = r0.zzd
            kotlin.f.b(r9)     // Catch: java.lang.Exception -> L2b kotlinx.coroutines.TimeoutCancellationException -> L2d com.google.android.recaptcha.internal.zzbd -> L2f
            goto L55
        L2b:
            r7 = move-exception
            goto L66
        L2d:
            r7 = move-exception
            goto L78
        L2f:
            r7 = move-exception
            goto L8a
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.f.b(r9)
            com.google.android.recaptcha.internal.zzek r9 = r5.zzu(r6)
            r2 = 27
            com.google.android.recaptcha.internal.zzen r9 = r9.zzf(r2)
            com.google.android.recaptcha.internal.zzl r2 = r5.zzc     // Catch: java.lang.Exception -> L5c kotlinx.coroutines.TimeoutCancellationException -> L5f com.google.android.recaptcha.internal.zzbd -> L62
            r0.zzd = r9     // Catch: java.lang.Exception -> L5c kotlinx.coroutines.TimeoutCancellationException -> L5f com.google.android.recaptcha.internal.zzbd -> L62
            r0.zzc = r3     // Catch: java.lang.Exception -> L5c kotlinx.coroutines.TimeoutCancellationException -> L5f com.google.android.recaptcha.internal.zzbd -> L62
            java.lang.Object r6 = r2.zzb(r6, r7, r0)     // Catch: java.lang.Exception -> L5c kotlinx.coroutines.TimeoutCancellationException -> L5f com.google.android.recaptcha.internal.zzbd -> L62
            if (r6 == r1) goto L5b
            r4 = r9
            r9 = r6
            r6 = r4
        L55:
            com.google.android.recaptcha.internal.zzsi r9 = (com.google.android.recaptcha.internal.zzsi) r9     // Catch: java.lang.Exception -> L2b kotlinx.coroutines.TimeoutCancellationException -> L2d com.google.android.recaptcha.internal.zzbd -> L2f
            r6.zza()     // Catch: java.lang.Exception -> L2b kotlinx.coroutines.TimeoutCancellationException -> L2d com.google.android.recaptcha.internal.zzbd -> L2f
            return r9
        L5b:
            return r1
        L5c:
            r6 = move-exception
            r7 = r6
            goto L65
        L5f:
            r6 = move-exception
            r7 = r6
            goto L77
        L62:
            r6 = move-exception
            r7 = r6
            goto L89
        L65:
            r6 = r9
        L66:
            com.google.android.recaptcha.internal.zzbd r8 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r9 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r0 = com.google.android.recaptcha.internal.zzba.zzaa
            java.lang.String r7 = r7.getMessage()
            r8.<init>(r9, r0, r7)
            r6.zzb(r8)
            throw r8
        L77:
            r6 = r9
        L78:
            com.google.android.recaptcha.internal.zzbd r8 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r9 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r0 = com.google.android.recaptcha.internal.zzba.zzb
            java.lang.String r7 = r7.getMessage()
            r8.<init>(r9, r0, r7)
            r6.zzb(r8)
            throw r8
        L89:
            r6 = r9
        L8a:
            r6.zzb(r7)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzdt.zzl(java.lang.String, long, rs.c):java.lang.Object");
    }

    @Nullable
    public final Object zzm(@NotNull zzsp zzspVar, @NotNull String str, long j10, @NotNull rs.c cVar) {
        return e.g(this.zzi.zza().getCoroutineContext(), new zzdg(this, str, j10, zzspVar, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzn(@org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzsc r11, long r12, @org.jetbrains.annotations.NotNull rs.c r14) {
        /*
            r10 = this;
            boolean r0 = r14 instanceof com.google.android.recaptcha.internal.zzdk
            if (r0 == 0) goto L13
            r0 = r14
            com.google.android.recaptcha.internal.zzdk r0 = (com.google.android.recaptcha.internal.zzdk) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzdk r0 = new com.google.android.recaptcha.internal.zzdk
            r0.<init>(r10, r14)
        L18:
            java.lang.Object r14 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r14)     // Catch: java.lang.Exception -> L29 kotlinx.coroutines.TimeoutCancellationException -> L2b com.google.android.recaptcha.internal.zzbd -> L2d
            goto L4d
        L29:
            r11 = move-exception
            goto L50
        L2b:
            r11 = move-exception
            goto L5e
        L2d:
            r11 = move-exception
            goto L6c
        L2f:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L37:
            kotlin.f.b(r14)
            com.google.android.recaptcha.internal.zzdl r14 = new com.google.android.recaptcha.internal.zzdl     // Catch: java.lang.Exception -> L29 kotlinx.coroutines.TimeoutCancellationException -> L2b com.google.android.recaptcha.internal.zzbd -> L2d
            r9 = 0
            r4 = r14
            r5 = r10
            r6 = r11
            r7 = r12
            r4.<init>(r5, r6, r7, r9)     // Catch: java.lang.Exception -> L29 kotlinx.coroutines.TimeoutCancellationException -> L2b com.google.android.recaptcha.internal.zzbd -> L2d
            r0.zzc = r3     // Catch: java.lang.Exception -> L29 kotlinx.coroutines.TimeoutCancellationException -> L2b com.google.android.recaptcha.internal.zzbd -> L2d
            java.lang.Object r11 = kotlinx.coroutines.TimeoutKt.c(r12, r14, r0)     // Catch: java.lang.Exception -> L29 kotlinx.coroutines.TimeoutCancellationException -> L2b com.google.android.recaptcha.internal.zzbd -> L2d
            if (r11 != r1) goto L4d
            return r1
        L4d:
            kotlin.Unit r11 = kotlin.Unit.f60915a
            return r11
        L50:
            com.google.android.recaptcha.internal.zzbd r12 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r13 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r14 = com.google.android.recaptcha.internal.zzba.zzap
            java.lang.String r11 = r11.getMessage()
            r12.<init>(r13, r14, r11)
            throw r12
        L5e:
            com.google.android.recaptcha.internal.zzbd r12 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r13 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r14 = com.google.android.recaptcha.internal.zzba.zzb
            java.lang.String r11 = r11.getMessage()
            r12.<init>(r13, r14, r11)
            throw r12
        L6c:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzdt.zzn(com.google.android.recaptcha.internal.zzsc, long, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a9  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzo(long r7, @org.jetbrains.annotations.NotNull rs.c r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.google.android.recaptcha.internal.zzdr
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.recaptcha.internal.zzdr r0 = (com.google.android.recaptcha.internal.zzdr) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzdr r0 = new com.google.android.recaptcha.internal.zzdr
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r9 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            com.google.android.recaptcha.internal.zzen r7 = r0.zze
            com.google.android.recaptcha.internal.zzdt r8 = r0.zzd
            kotlin.f.b(r9)     // Catch: java.lang.Exception -> L2d kotlinx.coroutines.TimeoutCancellationException -> L2f com.google.android.recaptcha.internal.zzbd -> L31
            goto L5d
        L2d:
            r9 = move-exception
            goto L6b
        L2f:
            r9 = move-exception
            goto L84
        L31:
            r9 = move-exception
            goto L9d
        L34:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3c:
            kotlin.f.b(r9)
            com.google.android.recaptcha.internal.zzek r9 = r6.zzb
            r2 = 22
            com.google.android.recaptcha.internal.zzen r9 = r9.zzf(r2)
            com.google.android.recaptcha.internal.zzds r2 = new com.google.android.recaptcha.internal.zzds     // Catch: java.lang.Exception -> L61 kotlinx.coroutines.TimeoutCancellationException -> L63 com.google.android.recaptcha.internal.zzbd -> L65
            r4 = 0
            r2.<init>(r6, r9, r4)     // Catch: java.lang.Exception -> L61 kotlinx.coroutines.TimeoutCancellationException -> L63 com.google.android.recaptcha.internal.zzbd -> L65
            r0.zzd = r6     // Catch: java.lang.Exception -> L61 kotlinx.coroutines.TimeoutCancellationException -> L63 com.google.android.recaptcha.internal.zzbd -> L65
            r0.zze = r9     // Catch: java.lang.Exception -> L61 kotlinx.coroutines.TimeoutCancellationException -> L63 com.google.android.recaptcha.internal.zzbd -> L65
            r0.zzc = r3     // Catch: java.lang.Exception -> L61 kotlinx.coroutines.TimeoutCancellationException -> L63 com.google.android.recaptcha.internal.zzbd -> L65
            java.lang.Object r7 = kotlinx.coroutines.TimeoutKt.c(r7, r2, r0)     // Catch: java.lang.Exception -> L61 kotlinx.coroutines.TimeoutCancellationException -> L63 com.google.android.recaptcha.internal.zzbd -> L65
            if (r7 == r1) goto L60
            r8 = r6
            r5 = r9
            r9 = r7
            r7 = r5
        L5d:
            com.google.android.recaptcha.internal.zzsc r9 = (com.google.android.recaptcha.internal.zzsc) r9     // Catch: java.lang.Exception -> L2d kotlinx.coroutines.TimeoutCancellationException -> L2f com.google.android.recaptcha.internal.zzbd -> L31
            return r9
        L60:
            return r1
        L61:
            r7 = move-exception
            goto L67
        L63:
            r7 = move-exception
            goto L80
        L65:
            r7 = move-exception
            goto L99
        L67:
            r8 = r6
            r5 = r9
            r9 = r7
            r7 = r5
        L6b:
            com.google.android.recaptcha.internal.zzbd r0 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r1 = com.google.android.recaptcha.internal.zzbb.zzc
            com.google.android.recaptcha.internal.zzba r2 = com.google.android.recaptcha.internal.zzba.zzaw
            java.lang.String r3 = r9.getMessage()
            r0.<init>(r1, r2, r3)
            com.google.android.recaptcha.internal.zzbd r8 = r8.zzs(r9, r0)
            r7.zzb(r8)
            throw r8
        L80:
            r8 = r6
            r5 = r9
            r9 = r7
            r7 = r5
        L84:
            com.google.android.recaptcha.internal.zzbd r0 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r1 = com.google.android.recaptcha.internal.zzbb.zzc
            com.google.android.recaptcha.internal.zzba r2 = com.google.android.recaptcha.internal.zzba.zzb
            java.lang.String r3 = r9.getMessage()
            r0.<init>(r1, r2, r3)
            com.google.android.recaptcha.internal.zzbd r8 = r8.zzs(r9, r0)
            r7.zzb(r8)
            throw r8
        L99:
            r8 = r6
            r5 = r9
            r9 = r7
            r7 = r5
        L9d:
            com.google.android.recaptcha.internal.zzbb r0 = r9.zzb()
            com.google.android.recaptcha.internal.zzbb r1 = com.google.android.recaptcha.internal.zzbb.zzc
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            if (r0 == 0) goto Lad
            com.google.android.recaptcha.internal.zzbd r9 = r8.zzs(r9, r9)
        Lad:
            r7.zzb(r9)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzdt.zzo(long, rs.c):java.lang.Object");
    }

    public final void zzq(@NotNull String str, @NotNull zzsr zzsrVar) {
        zzen zzf = zzu(str).zzf(29);
        try {
            List<zzst> zzk = zzsrVar.zzk();
            LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(CollectionsKt.z(zzk, 10)), 16));
            for (zzst zzstVar : zzk) {
                Pair a10 = k.a(zzstVar.zzg(), zzstVar.zzi());
                linkedHashMap.put(a10.e(), a10.f());
            }
            zzt().zzb(linkedHashMap);
            this.zzc.zzg(zzsrVar);
            zzf.zza();
        } catch (zzbd e10) {
            zzf.zzb(e10);
        } catch (Exception e11) {
            zzf.zzb(new zzbd(zzbb.zzb, zzba.zzas, e11.getMessage()));
        }
    }
}
