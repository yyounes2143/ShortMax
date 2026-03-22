package com.google.android.recaptcha.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzl {
    @NotNull
    private final List zza;
    @Nullable
    private zzek zzb;

    public zzl() {
        this(null, 1, null);
    }

    private final void zzh(zze... zzeVarArr) {
        CollectionsKt.G(this.zza, zzeVarArr);
    }

    @Nullable
    public final Object zzb(@NotNull String str, long j10, @NotNull c cVar) {
        return i.f(new zzh(this, str, j10, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzc(long r13, @org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzsc r15, @org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzek r16, @org.jetbrains.annotations.NotNull rs.c r17) {
        /*
            r12 = this;
            r0 = r17
            boolean r1 = r0 instanceof com.google.android.recaptcha.internal.zzi
            if (r1 == 0) goto L16
            r1 = r0
            com.google.android.recaptcha.internal.zzi r1 = (com.google.android.recaptcha.internal.zzi) r1
            int r2 = r1.zzc
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.zzc = r2
            r9 = r12
            goto L1c
        L16:
            com.google.android.recaptcha.internal.zzi r1 = new com.google.android.recaptcha.internal.zzi
            r9 = r12
            r1.<init>(r12, r0)
        L1c:
            java.lang.Object r0 = r1.zza
            java.lang.Object r10 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r1.zzc
            r11 = 1
            if (r2 == 0) goto L35
            if (r2 != r11) goto L2d
            kotlin.f.b(r0)
            goto L4d
        L2d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L35:
            kotlin.f.b(r0)
            com.google.android.recaptcha.internal.zzk r0 = new com.google.android.recaptcha.internal.zzk
            r8 = 0
            r2 = r0
            r3 = r12
            r4 = r16
            r5 = r13
            r7 = r15
            r2.<init>(r3, r4, r5, r7, r8)
            r1.zzc = r11
            java.lang.Object r0 = kotlinx.coroutines.i.f(r0, r1)
            if (r0 != r10) goto L4d
            return r10
        L4d:
            kotlin.Result r0 = (kotlin.Result) r0
            java.lang.Object r0 = r0.n()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzl.zzc(long, com.google.android.recaptcha.internal.zzsc, com.google.android.recaptcha.internal.zzek, rs.c):java.lang.Object");
    }

    @NotNull
    public final List zzd() {
        return this.zza;
    }

    public final void zzf(@NotNull zze... zzeVarArr) {
        zzh((zze[]) Arrays.copyOf(zzeVarArr, 1));
    }

    public final void zzg(@NotNull zzsr zzsrVar) {
        for (zze zzeVar : this.zza) {
            zzeVar.zzk(zzsrVar);
        }
    }

    public /* synthetic */ zzl(List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        List n10 = CollectionsKt.n();
        this.zza = new ArrayList();
        zze[] zzeVarArr = (zze[]) n10.toArray(new zze[0]);
        zzh((zze[]) Arrays.copyOf(zzeVarArr, zzeVarArr.length));
    }
}
