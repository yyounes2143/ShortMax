package com.google.android.recaptcha.internal;

import android.app.Application;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.api.ApiException;
import com.google.android.recaptcha.RecaptchaException;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzcv {
    @NotNull
    private final Application zza;
    @Nullable
    private zzdc zzc;
    @NotNull
    private final qt.a zzb = d.b(false, 1, null);
    @NotNull
    private final String zzd = UUID.randomUUID().toString();
    @NotNull
    private zzbi zzf = new zzbi();
    @NotNull
    private final zzl zze = new zzl(null, 1, null);

    public zzcv(@NotNull Application application) {
        Map map;
        Map map2;
        this.zza = application;
        int i10 = zzav.zza;
        zzaw[] zzawVarArr = {new zzaw(zzaz.class.getName().hashCode(), new zzaz(null, 1, null)), new zzaw(zzfu.class.getName().hashCode(), new zzfu()), new zzaw(zzbe.class.getName().hashCode(), new zzbe()), new zzaw(zzjd.class.getName().hashCode(), new zzjd()), new zzaw(zzbr.class.getName().hashCode(), new zzbr("https://www.recaptcha.net/recaptcha/api3")), new zzaw(zzex.class.getName().hashCode(), new zzex(null, 1, null)), new zzaw(zzfk.class.getName().hashCode(), new zzfk(true)), new zzaw(Application.class.getName().hashCode(), application), new zzaw(zzbf.class.getName().hashCode(), new zzbf(application)), new zzaw(zzfj.class.getName().hashCode(), new zzfj()), new zzaw(zzaq.class.getName().hashCode(), new zzbm(application)), new zzaw(zzey.class.getName().hashCode(), new zzfa()), new zzaw(zzff.class.getName().hashCode(), new zzff())};
        for (int i11 = 0; i11 < 13; i11++) {
            zzaw zzawVar = zzawVarArr[i11];
            map = zzav.zzc;
            if (!map.containsKey(Integer.valueOf(zzawVar.zza()))) {
                map2 = zzav.zzc;
                map2.put(Integer.valueOf(zzawVar.zza()), zzawVar);
            }
        }
    }

    public static final /* synthetic */ zzdc zza(zzcv zzcvVar, String str) {
        zzdc zzdcVar = zzcvVar.zzc;
        if (zzdcVar == null) {
            return null;
        }
        if (!Intrinsics.areEqual(zzdcVar.zzd(), str)) {
            throw new zzbd(zzbb.zzd, zzba.zzam, null);
        }
        return zzdcVar;
    }

    public static final /* synthetic */ void zzc(zzcv zzcvVar, long j10) {
        if (j10 >= 5000) {
            if (ContextCompat.checkSelfPermission(zzcvVar.zza, "android.permission.INTERNET") == 0) {
                return;
            }
            throw new zzbd(zzbb.zzc, zzba.zzao, null);
        }
        throw new zzbd(zzbb.zzj, zzba.zzI, null);
    }

    public static final /* synthetic */ zzcn zze(zzcv zzcvVar, String str, zzbi zzbiVar, zzch zzchVar, zzek zzekVar) {
        zzdt zzdtVar = new zzdt(str, zzbiVar, zzekVar, zzcvVar.zze);
        if (Intrinsics.areEqual(zzchVar, zzch.zza)) {
            return new zzef(zzdtVar);
        }
        return new zzec(zzdtVar, zzbiVar, zzekVar, new zzbo());
    }

    public static /* synthetic */ Object zzh(zzcv zzcvVar, String str, long j10, zzcn zzcnVar, zzbi zzbiVar, zzch zzchVar, c cVar, int i10, Object obj) throws TimeoutCancellationException, ApiException, RecaptchaException {
        zzbi zzbiVar2;
        zzch zzchVar2;
        long j11;
        if ((i10 & 8) != 0) {
            zzbiVar2 = zzcvVar.zzf;
        } else {
            zzbiVar2 = zzbiVar;
        }
        if ((i10 & 16) != 0) {
            zzchVar2 = zzch.zza;
        } else {
            zzchVar2 = zzchVar;
        }
        if ((i10 & 2) != 0) {
            j11 = 10000;
        } else {
            j11 = j10;
        }
        return zzcvVar.zzg(str, j11, null, zzbiVar2, zzchVar2, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzj(java.lang.String r6, int r7, kotlin.jvm.functions.Function2 r8, rs.c r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.google.android.recaptcha.internal.zzcu
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.recaptcha.internal.zzcu r0 = (com.google.android.recaptcha.internal.zzcu) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzcu r0 = new com.google.android.recaptcha.internal.zzcu
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            com.google.android.recaptcha.internal.zzen r6 = r0.zzd
            kotlin.f.b(r9)     // Catch: java.lang.Exception -> L2b com.google.android.recaptcha.internal.zzbd -> L2d
            goto L50
        L2b:
            r7 = move-exception
            goto L5c
        L2d:
            r7 = move-exception
            goto L74
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            kotlin.f.b(r9)
            com.google.android.recaptcha.internal.zzbi r9 = r5.zzf
            com.google.android.recaptcha.internal.zzek r6 = r5.zzk(r6, r9, r7)
            r7 = 6
            com.google.android.recaptcha.internal.zzen r7 = r6.zzf(r7)
            r0.zzd = r7     // Catch: java.lang.Exception -> L55 com.google.android.recaptcha.internal.zzbd -> L57
            r0.zzc = r3     // Catch: java.lang.Exception -> L55 com.google.android.recaptcha.internal.zzbd -> L57
            java.lang.Object r9 = r8.invoke(r6, r0)     // Catch: java.lang.Exception -> L55 com.google.android.recaptcha.internal.zzbd -> L57
            if (r9 == r1) goto L54
            r6 = r7
        L50:
            r6.zza()     // Catch: java.lang.Exception -> L2b com.google.android.recaptcha.internal.zzbd -> L2d
            return r9
        L54:
            return r1
        L55:
            r6 = move-exception
            goto L59
        L57:
            r6 = move-exception
            goto L71
        L59:
            r4 = r7
            r7 = r6
            r6 = r4
        L5c:
            com.google.android.recaptcha.internal.zzbd r8 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r9 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r0 = com.google.android.recaptcha.internal.zzba.zza
            java.lang.String r7 = r7.getMessage()
            r8.<init>(r9, r0, r7)
            r6.zzb(r8)
            com.google.android.recaptcha.RecaptchaException r6 = r8.zzc()
            throw r6
        L71:
            r4 = r7
            r7 = r6
            r6 = r4
        L74:
            r6.zzb(r7)
            com.google.android.recaptcha.RecaptchaException r6 = r7.zzc()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzcv.zzj(java.lang.String, int, kotlin.jvm.functions.Function2, rs.c):java.lang.Object");
    }

    private final zzek zzk(String str, zzbi zzbiVar, int i10) {
        String uuid = UUID.randomUUID().toString();
        int i11 = zzav.zza;
        zzes zzesVar = new zzes(this.zza, new zzeu(((zzbr) kotlin.c.b(zzcr.zza).getValue()).zzc()), zzbiVar.zza());
        zzek zzekVar = new zzek(str, this.zzd, uuid, i10, this.zza, zzesVar, null);
        zzekVar.zzc(uuid);
        return zzekVar;
    }

    @NotNull
    public final zzbi zzd() {
        return this.zzf;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0091 A[Catch: all -> 0x00cd, TryCatch #1 {all -> 0x00cd, blocks: (B:69:0x0086, B:77:0x009c, B:73:0x0091), top: B:90:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00c6  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzg(@org.jetbrains.annotations.NotNull java.lang.String r23, long r24, @org.jetbrains.annotations.Nullable com.google.android.recaptcha.internal.zzcn r26, @org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzbi r27, @org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzch r28, @org.jetbrains.annotations.NotNull rs.c r29) throws kotlinx.coroutines.TimeoutCancellationException, com.google.android.gms.common.api.ApiException, com.google.android.recaptcha.RecaptchaException {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzcv.zzg(java.lang.String, long, com.google.android.recaptcha.internal.zzcn, com.google.android.recaptcha.internal.zzbi, com.google.android.recaptcha.internal.zzch, rs.c):java.lang.Object");
    }
}
