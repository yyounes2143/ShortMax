package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzams  reason: invalid package */
/* loaded from: classes4.dex */
final class zzams<T> implements zzanb<T> {
    private final zzamm zza;
    private final zzanu<?, ?> zzb;
    private final boolean zzc;
    private final zzakw<?> zzd;

    private zzams(zzanu<?, ?> zzanuVar, zzakw<?> zzakwVar, zzamm zzammVar) {
        this.zzb = zzanuVar;
        this.zzc = zzakwVar.zza(zzammVar);
        this.zzd = zzakwVar;
        this.zza = zzammVar;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final int zza(T t10) {
        zzanu<?, ?> zzanuVar = this.zzb;
        int zzb = zzanuVar.zzb(zzanuVar.zzd(t10));
        return this.zzc ? zzb + this.zzd.zza(t10).zza() : zzb;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final int zzb(T t10) {
        int hashCode = this.zzb.zzd(t10).hashCode();
        return this.zzc ? (hashCode * 53) + this.zzd.zza(t10).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final void zzd(T t10) {
        this.zzb.zzf(t10);
        this.zzd.zzc(t10);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final boolean zze(T t10) {
        return this.zzd.zza(t10).zzg();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final boolean zzb(T t10, T t11) {
        if (this.zzb.zzd(t10).equals(this.zzb.zzd(t11))) {
            if (this.zzc) {
                return this.zzd.zza(t10).equals(this.zzd.zza(t11));
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> zzams<T> zza(zzanu<?, ?> zzanuVar, zzakw<?> zzakwVar, zzamm zzammVar) {
        return new zzams<>(zzanuVar, zzakwVar, zzammVar);
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final T zza() {
        zzamm zzammVar = this.zza;
        if (zzammVar instanceof zzalf) {
            return (T) ((zzalf) zzammVar).zzo();
        }
        return (T) zzammVar.zzq().zzf();
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final void zza(T t10, T t11) {
        zzand.zza(this.zzb, t10, t11);
        if (this.zzc) {
            zzand.zza(this.zzd, t10, t11);
        }
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final void zza(T t10, zzanc zzancVar, zzaku zzakuVar) throws IOException {
        boolean z10;
        zzanu<?, ?> zzanuVar = this.zzb;
        zzakw<?> zzakwVar = this.zzd;
        Object zzc = zzanuVar.zzc(t10);
        zzakx<?> zzb = zzakwVar.zzb(t10);
        do {
            try {
                if (zzancVar.zzc() == Integer.MAX_VALUE) {
                    zzanuVar.zzb((Object) t10, (T) zzc);
                    return;
                }
                int zzd = zzancVar.zzd();
                int i10 = 0;
                if (zzd == 11) {
                    Object obj = null;
                    zzajv zzajvVar = null;
                    while (zzancVar.zzc() != Integer.MAX_VALUE) {
                        int zzd2 = zzancVar.zzd();
                        if (zzd2 != 16) {
                            if (zzd2 != 26) {
                                if (zzd2 == 12 || !zzancVar.zzt()) {
                                    break;
                                }
                            } else if (obj != null) {
                                zzakwVar.zza(zzancVar, obj, zzakuVar, zzb);
                            } else {
                                zzajvVar = zzancVar.zzp();
                            }
                        } else {
                            i10 = zzancVar.zzj();
                            obj = zzakwVar.zza(zzakuVar, this.zza, i10);
                        }
                    }
                    if (zzancVar.zzd() != 12) {
                        throw zzall.zzb();
                    } else if (zzajvVar != null) {
                        if (obj != null) {
                            zzakwVar.zza(zzajvVar, obj, zzakuVar, zzb);
                        } else {
                            zzanuVar.zza((zzanu<?, ?>) zzc, i10, zzajvVar);
                        }
                    }
                } else if ((zzd & 7) == 2) {
                    Object zza = zzakwVar.zza(zzakuVar, this.zza, zzd >>> 3);
                    if (zza != null) {
                        zzakwVar.zza(zzancVar, zza, zzakuVar, zzb);
                    } else {
                        z10 = zzanuVar.zza((zzanu<?, ?>) zzc, zzancVar, 0);
                        continue;
                    }
                } else {
                    z10 = zzancVar.zzt();
                    continue;
                }
                z10 = true;
                continue;
            } catch (Throwable th2) {
                zzanuVar.zzb((Object) t10, (T) zzc);
                throw th2;
            }
        } while (z10);
        zzanuVar.zzb((Object) t10, (T) zzc);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0099 A[EDGE_INSN: B:57:0x0099->B:34:0x0099 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.p003firebaseauthapi.zzaju r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.firebase-auth-api.zzalf r0 = (com.google.android.gms.internal.p003firebaseauthapi.zzalf) r0
            com.google.android.gms.internal.firebase-auth-api.zzanx r1 = r0.zzb
            com.google.android.gms.internal.firebase-auth-api.zzanx r2 = com.google.android.gms.internal.p003firebaseauthapi.zzanx.zzc()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.firebase-auth-api.zzanx r1 = com.google.android.gms.internal.p003firebaseauthapi.zzanx.zzd()
            r0.zzb = r1
        L11:
            com.google.android.gms.internal.firebase-auth-api.zzalf$zzd r10 = (com.google.android.gms.internal.p003firebaseauthapi.zzalf.zzd) r10
            r10.zza()
            r10 = 0
            r0 = r10
        L18:
            if (r12 >= r13) goto La4
            int r4 = com.google.android.gms.internal.p003firebaseauthapi.zzajr.zzc(r11, r12, r14)
            int r2 = r14.zza
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L51
            r12 = r2 & 7
            if (r12 != r3) goto L4c
            com.google.android.gms.internal.firebase-auth-api.zzakw<?> r12 = r9.zzd
            com.google.android.gms.internal.firebase-auth-api.zzaku r0 = r14.zzd
            com.google.android.gms.internal.firebase-auth-api.zzamm r3 = r9.zza
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.firebase-auth-api.zzalf$zzf r0 = (com.google.android.gms.internal.p003firebaseauthapi.zzalf.zzf) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.p003firebaseauthapi.zzajr.zza(r2, r3, r4, r5, r6, r7)
            goto L18
        L43:
            com.google.android.gms.internal.p003firebaseauthapi.zzamx.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            int r12 = com.google.android.gms.internal.p003firebaseauthapi.zzajr.zza(r2, r11, r4, r13, r14)
            goto L18
        L51:
            r12 = 0
            r2 = r10
        L53:
            if (r4 >= r13) goto L99
            int r4 = com.google.android.gms.internal.p003firebaseauthapi.zzajr.zzc(r11, r4, r14)
            int r5 = r14.zza
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L7b
            r8 = 3
            if (r6 == r8) goto L65
            goto L90
        L65:
            if (r0 != 0) goto L72
            if (r7 != r3) goto L90
            int r4 = com.google.android.gms.internal.p003firebaseauthapi.zzajr.zza(r11, r4, r14)
            java.lang.Object r2 = r14.zzc
            com.google.android.gms.internal.firebase-auth-api.zzajv r2 = (com.google.android.gms.internal.p003firebaseauthapi.zzajv) r2
            goto L53
        L72:
            com.google.android.gms.internal.p003firebaseauthapi.zzamx.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L7b:
            if (r7 != 0) goto L90
            int r4 = com.google.android.gms.internal.p003firebaseauthapi.zzajr.zzc(r11, r4, r14)
            int r12 = r14.zza
            com.google.android.gms.internal.firebase-auth-api.zzakw<?> r0 = r9.zzd
            com.google.android.gms.internal.firebase-auth-api.zzaku r5 = r14.zzd
            com.google.android.gms.internal.firebase-auth-api.zzamm r6 = r9.zza
            java.lang.Object r0 = r0.zza(r5, r6, r12)
            com.google.android.gms.internal.firebase-auth-api.zzalf$zzf r0 = (com.google.android.gms.internal.p003firebaseauthapi.zzalf.zzf) r0
            goto L53
        L90:
            r6 = 12
            if (r5 == r6) goto L99
            int r4 = com.google.android.gms.internal.p003firebaseauthapi.zzajr.zza(r5, r11, r4, r13, r14)
            goto L53
        L99:
            if (r2 == 0) goto La1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.zza(r12, r2)
        La1:
            r12 = r4
            goto L18
        La4:
            if (r12 != r13) goto La7
            return
        La7:
            com.google.android.gms.internal.firebase-auth-api.zzall r10 = com.google.android.gms.internal.p003firebaseauthapi.zzall.zzg()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzams.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.firebase-auth-api.zzaju):void");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final void zza(T t10, zzaol zzaolVar) throws IOException {
        Iterator<Map.Entry<?, Object>> zzd = this.zzd.zza(t10).zzd();
        while (zzd.hasNext()) {
            Map.Entry<?, Object> next = zzd.next();
            zzakz zzakzVar = (zzakz) next.getKey();
            if (zzakzVar.zzc() == zzaoj.MESSAGE && !zzakzVar.zze() && !zzakzVar.zzd()) {
                if (next instanceof zzalp) {
                    zzaolVar.zza(zzakzVar.zza(), (Object) ((zzalp) next).zza().zzb());
                } else {
                    zzaolVar.zza(zzakzVar.zza(), next.getValue());
                }
            } else {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
        }
        zzanu<?, ?> zzanuVar = this.zzb;
        zzanuVar.zza((zzanu<?, ?>) zzanuVar.zzd(t10), zzaolVar);
    }
}
