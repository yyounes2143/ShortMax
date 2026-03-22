package com.google.android.recaptcha;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Task;
import com.google.android.recaptcha.internal.zzcq;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
@Metadata
/* loaded from: classes5.dex */
public final class Recaptcha {
    @NotNull
    public static final Recaptcha INSTANCE = new Recaptcha();

    private Recaptcha() {
    }

    @NotNull
    public static final Task<RecaptchaTasksClient> fetchTaskClient(@NonNull Application application, @NonNull String str) {
        return zzcq.zze(application, str);
    }

    @NonNull
    /* renamed from: getClient-BWLJW6A$default  reason: not valid java name */
    public static /* synthetic */ Object m4668getClientBWLJW6A$default(@NonNull Recaptcha recaptcha, @NonNull Application application, @NonNull String str, long j10, @NonNull c cVar, int i10, @NonNull Object obj) {
        if ((i10 & 4) != 0) {
            j10 = 10000;
        }
        return recaptcha.m4669getClientBWLJW6A(application, str, j10, cVar);
    }

    @ms.c
    @NotNull
    public static final Task<RecaptchaTasksClient> getTasksClient(@NonNull Application application, @NonNull String str) {
        return zzcq.zzc(application, str, 10000L);
    }

    @Nullable
    public final Object fetchClient(@NonNull Application application, @NonNull String str, @NonNull c<? super RecaptchaClient> cVar) {
        return zzcq.zzd(application, str, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    @androidx.annotation.Nullable
    @ms.c
    /* renamed from: getClient-BWLJW6A  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m4669getClientBWLJW6A(@androidx.annotation.NonNull android.app.Application r5, @androidx.annotation.NonNull java.lang.String r6, long r7, @androidx.annotation.NonNull rs.c<? super kotlin.Result<? extends com.google.android.recaptcha.RecaptchaClient>> r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof com.google.android.recaptcha.Recaptcha$getClient$1
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.recaptcha.Recaptcha$getClient$1 r0 = (com.google.android.recaptcha.Recaptcha$getClient$1) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.Recaptcha$getClient$1 r0 = new com.google.android.recaptcha.Recaptcha$getClient$1
            r0.<init>(r4, r9)
        L18:
            java.lang.Object r9 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            kotlin.f.b(r9)     // Catch: java.lang.Throwable -> L29
            goto L41
        L29:
            r5 = move-exception
            goto L48
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            kotlin.f.b(r9)
            kotlin.Result$a r9 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L29
            r0.zzc = r3     // Catch: java.lang.Throwable -> L29
            java.lang.Object r9 = com.google.android.recaptcha.internal.zzcq.zzb(r5, r6, r7, r0)     // Catch: java.lang.Throwable -> L29
            if (r9 != r1) goto L41
            return r1
        L41:
            com.google.android.recaptcha.internal.zzdc r9 = (com.google.android.recaptcha.internal.zzdc) r9     // Catch: java.lang.Throwable -> L29
            java.lang.Object r5 = kotlin.Result.d(r9)     // Catch: java.lang.Throwable -> L29
            goto L52
        L48:
            kotlin.Result$a r6 = kotlin.Result.f60901b
            java.lang.Object r5 = kotlin.f.a(r5)
            java.lang.Object r5 = kotlin.Result.d(r5)
        L52:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.Recaptcha.m4669getClientBWLJW6A(android.app.Application, java.lang.String, long, rs.c):java.lang.Object");
    }

    @ms.c
    @NotNull
    public static final Task<RecaptchaTasksClient> getTasksClient(@NonNull Application application, @NonNull String str, long j10) {
        return zzcq.zzc(application, str, j10);
    }
}
