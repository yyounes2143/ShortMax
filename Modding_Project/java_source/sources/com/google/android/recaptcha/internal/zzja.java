package com.google.android.recaptcha.internal;

import android.app.Application;
import android.webkit.WebView;
import gt.e;
import gt.p;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzja extends zze {
    public p zza;
    public zzfo zzb;
    @NotNull
    private final zzek zzc;
    private zzsc zzf;
    @NotNull
    private final zzek zzj;
    @NotNull
    private final i zzk;
    @NotNull
    private final i zzl;
    @NotNull
    private final i zzm;
    @NotNull
    private final i zzn;
    @NotNull
    private final i zzo;
    @Nullable
    private zzen zzp;
    @NotNull
    private final zzbi zzq;
    @NotNull
    private final Map zzd = zzjb.zza();
    @NotNull
    private final Map zze = new LinkedHashMap();
    @NotNull
    private final zzcb zzg = new zzcb(zzje.zza);
    @NotNull
    private final zzjh zzh = zzjh.zzc();
    @NotNull
    private final zzij zzi = new zzij(this);

    public zzja(@NotNull zzek zzekVar, @NotNull zzbi zzbiVar) {
        this.zzc = zzekVar;
        this.zzq = zzbiVar;
        zzek zza = zzekVar.zza();
        zza.zzc(zzekVar.zzd());
        this.zzj = zza;
        int i10 = zzav.zza;
        this.zzk = c.b(zzis.zza);
        this.zzl = c.b(zzit.zza);
        this.zzm = c.b(zziu.zza);
        this.zzn = c.b(zziv.zza);
        this.zzo = c.b(zziw.zza);
    }

    private final Application zzD() {
        return (Application) this.zzo.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzE(com.google.android.recaptcha.internal.zzsc r8, rs.c r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.google.android.recaptcha.internal.zzim
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.recaptcha.internal.zzim r0 = (com.google.android.recaptcha.internal.zzim) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzim r0 = new com.google.android.recaptcha.internal.zzim
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            com.google.android.recaptcha.internal.zzja r8 = r0.zzd
            kotlin.f.b(r9)     // Catch: com.google.android.recaptcha.internal.zzbd -> L2b
            goto L4e
        L2b:
            r9 = move-exception
            goto L67
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.f.b(r9)
            ms.i r9 = r7.zzn     // Catch: com.google.android.recaptcha.internal.zzbd -> L64
            java.lang.Object r9 = r9.getValue()     // Catch: com.google.android.recaptcha.internal.zzbd -> L64
            com.google.android.recaptcha.internal.zzff r9 = (com.google.android.recaptcha.internal.zzff) r9     // Catch: com.google.android.recaptcha.internal.zzbd -> L64
            com.google.android.recaptcha.internal.zzek r2 = r7.zzj     // Catch: com.google.android.recaptcha.internal.zzbd -> L64
            r0.zzd = r7     // Catch: com.google.android.recaptcha.internal.zzbd -> L64
            r0.zzc = r3     // Catch: com.google.android.recaptcha.internal.zzbd -> L64
            java.lang.Object r9 = r9.zzd(r8, r2, r0)     // Catch: com.google.android.recaptcha.internal.zzbd -> L64
            if (r9 != r1) goto L4d
            return r1
        L4d:
            r8 = r7
        L4e:
            java.lang.String r9 = (java.lang.String) r9     // Catch: com.google.android.recaptcha.internal.zzbd -> L2b
            com.google.android.recaptcha.internal.zzbi r0 = r8.zzq     // Catch: com.google.android.recaptcha.internal.zzbd -> L2b
            gt.g0 r1 = r0.zzb()     // Catch: com.google.android.recaptcha.internal.zzbd -> L2b
            com.google.android.recaptcha.internal.zzin r4 = new com.google.android.recaptcha.internal.zzin     // Catch: com.google.android.recaptcha.internal.zzbd -> L2b
            r0 = 0
            r4.<init>(r8, r9, r0)     // Catch: com.google.android.recaptcha.internal.zzbd -> L2b
            r5 = 3
            r6 = 0
            r2 = 0
            r3 = 0
            gt.e.d(r1, r2, r3, r4, r5, r6)     // Catch: com.google.android.recaptcha.internal.zzbd -> L2b
            goto L6e
        L64:
            r8 = move-exception
            r9 = r8
            r8 = r7
        L67:
            gt.p r8 = r8.zzA()
            r8.d(r9)
        L6e:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzE(com.google.android.recaptcha.internal.zzsc, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzF(java.lang.String r9, rs.c r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.google.android.recaptcha.internal.zzio
            if (r0 == 0) goto L13
            r0 = r10
            com.google.android.recaptcha.internal.zzio r0 = (com.google.android.recaptcha.internal.zzio) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzio r0 = new com.google.android.recaptcha.internal.zzio
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.String r9 = r0.zzf
            java.lang.String r1 = r0.zze
            com.google.android.recaptcha.internal.zzja r0 = r0.zzd
            kotlin.f.b(r10)     // Catch: java.lang.Exception -> L31
            r3 = r9
            r4 = r1
            goto L66
        L31:
            r9 = move-exception
            goto L75
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3b:
            kotlin.f.b(r10)
            com.google.android.recaptcha.internal.zzek r10 = r8.zzj
            r2 = 26
            com.google.android.recaptcha.internal.zzen r10 = r10.zzf(r2)
            r8.zzp = r10
            ms.i r10 = r8.zzl     // Catch: java.lang.Exception -> L73
            java.lang.Object r10 = r10.getValue()     // Catch: java.lang.Exception -> L73
            com.google.android.recaptcha.internal.zzbr r10 = (com.google.android.recaptcha.internal.zzbr) r10     // Catch: java.lang.Exception -> L73
            java.lang.String r10 = r10.zza()     // Catch: java.lang.Exception -> L73
            r0.zzd = r8     // Catch: java.lang.Exception -> L73
            r0.zze = r9     // Catch: java.lang.Exception -> L73
            r0.zzf = r10     // Catch: java.lang.Exception -> L73
            r0.zzc = r3     // Catch: java.lang.Exception -> L73
            java.lang.Object r0 = r8.zzw(r0)     // Catch: java.lang.Exception -> L73
            if (r0 == r1) goto L72
            r4 = r9
            r3 = r10
            r10 = r0
            r0 = r8
        L66:
            r2 = r10
            android.webkit.WebView r2 = (android.webkit.WebView) r2     // Catch: java.lang.Exception -> L31
            java.lang.String r5 = "text/html"
            java.lang.String r6 = "utf-8"
            r7 = 0
            r2.loadDataWithBaseURL(r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L31
            goto L93
        L72:
            return r1
        L73:
            r9 = move-exception
            r0 = r8
        L75:
            com.google.android.recaptcha.internal.zzbd r10 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r1 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r2 = com.google.android.recaptcha.internal.zzba.zzU
            java.lang.String r9 = r9.getMessage()
            r10.<init>(r1, r2, r9)
            com.google.android.recaptcha.internal.zzen r9 = r0.zzp
            if (r9 == 0) goto L89
            r9.zzb(r10)
        L89:
            r9 = 0
            r0.zzp = r9
            gt.p r9 = r0.zzA()
            r9.d(r10)
        L93:
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzF(java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzG(java.lang.String r9, rs.c r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.google.android.recaptcha.internal.zzix
            if (r0 == 0) goto L13
            r0 = r10
            com.google.android.recaptcha.internal.zzix r0 = (com.google.android.recaptcha.internal.zzix) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzix r0 = new com.google.android.recaptcha.internal.zzix
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.String r9 = r0.zze
            com.google.android.recaptcha.internal.zzja r0 = r0.zzd
            kotlin.f.b(r10)
            goto L79
        L30:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L38:
            java.lang.String r9 = r0.zze
            com.google.android.recaptcha.internal.zzja r2 = r0.zzd
            kotlin.f.b(r10)
            goto L5c
        L40:
            kotlin.f.b(r10)
            com.google.android.recaptcha.internal.zzcb r10 = r8.zzg
            com.google.android.recaptcha.internal.zzje r2 = com.google.android.recaptcha.internal.zzje.zzd
            com.google.android.recaptcha.internal.zzje r5 = com.google.android.recaptcha.internal.zzje.zzc
            com.google.android.recaptcha.internal.zzje r6 = com.google.android.recaptcha.internal.zzje.zzb
            com.google.android.recaptcha.internal.zzje[] r2 = new com.google.android.recaptcha.internal.zzje[]{r2, r5, r6}
            r0.zzd = r8
            r0.zze = r9
            r0.zzc = r4
            java.lang.Object r10 = r10.zzb(r2, r0)
            if (r10 == r1) goto La0
            r2 = r8
        L5c:
            java.lang.Boolean r10 = (java.lang.Boolean) r10
            boolean r10 = r10.booleanValue()
            if (r10 == 0) goto L67
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        L67:
            com.google.android.recaptcha.internal.zzcb r10 = r2.zzg
            com.google.android.recaptcha.internal.zzje r5 = com.google.android.recaptcha.internal.zzje.zzb
            r0.zzd = r2
            r0.zze = r9
            r0.zzc = r3
            java.lang.Object r10 = r10.zzc(r5, r0)
            if (r10 != r1) goto L78
            goto La0
        L78:
            r0 = r2
        L79:
            r10 = 0
            gt.p r1 = gt.r.b(r10, r4, r10)
            r0.zza = r1
            com.google.android.recaptcha.internal.zzek r1 = r0.zzj
            r1.zzc(r9)
            r9 = 42
            com.google.android.recaptcha.internal.zzen r9 = r1.zzf(r9)
            com.google.android.recaptcha.internal.zzbi r1 = r0.zzq
            gt.g0 r2 = r1.zza()
            com.google.android.recaptcha.internal.zziz r5 = new com.google.android.recaptcha.internal.zziz
            r5.<init>(r0, r9, r10)
            r6 = 3
            r7 = 0
            r3 = 0
            r4 = 0
            gt.e.d(r2, r3, r4, r5, r6, r7)
            kotlin.Unit r9 = kotlin.Unit.f60915a
            return r9
        La0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzG(java.lang.String, rs.c):java.lang.Object");
    }

    public static final /* synthetic */ zzfk zzp(zzja zzjaVar) {
        return (zzfk) zzjaVar.zzm.getValue();
    }

    @NotNull
    public final p zzA() {
        p pVar = this.zza;
        if (pVar != null) {
            return pVar;
        }
        return null;
    }

    @NotNull
    public final zzft zzC(@NotNull zzsc zzscVar, @NotNull zzcg zzcgVar, @NotNull WebView webView) {
        zzfw zzfwVar = new zzfw(webView, this.zzq.zzb());
        zzhy zzhyVar = new zzhy();
        zzhyVar.zzb(CollectionsKt.e1(zzscVar.zzP()));
        zzgf zzgfVar = new zzgf(zzfwVar, zzcgVar, new zzbo());
        zzhz zzhzVar = new zzhz(zzhyVar, new zzhw());
        zzgfVar.zze(3, zzD());
        zzgfVar.zze(5, zzig.zza());
        zzgfVar.zze(6, new zzia(zzD()));
        zzgfVar.zze(7, new zzic());
        zzgfVar.zze(8, new zzii(zzD()));
        zzgfVar.zze(9, new zzid(zzD()));
        zzgfVar.zze(10, new zzib(zzD()));
        return new zzft(this.zzq.zzd(), zzgfVar, zzhzVar, zzfn.zza());
    }

    @Override // com.google.android.recaptcha.internal.zze
    @NotNull
    protected final zzen zza(@NotNull String str) {
        zzek zzekVar = this.zzc;
        zzekVar.zzc(str);
        return zzekVar.zzf(33);
    }

    @Override // com.google.android.recaptcha.internal.zze
    @NotNull
    protected final zzen zzb() {
        zzek zzekVar = this.zzc;
        zzekVar.zzc(zzekVar.zzd());
        return zzekVar.zzf(32);
    }

    @Override // com.google.android.recaptcha.internal.zze
    @Nullable
    protected final Object zzd(@NotNull String str, @NotNull rs.c cVar) {
        zzsh zzf = zzsi.zzf();
        zzf.zze(str);
        return zzf.zzk();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0178  */
    @Override // com.google.android.recaptcha.internal.zze
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzf(@org.jetbrains.annotations.NotNull java.lang.String r18, @org.jetbrains.annotations.NotNull rs.c r19) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzf(java.lang.String, rs.c):java.lang.Object");
    }

    @Override // com.google.android.recaptcha.internal.zze
    @Nullable
    protected final Object zzg(@NotNull zzbd zzbdVar, @NotNull rs.c cVar) {
        if (Intrinsics.areEqual(zzbdVar.zza(), zzba.zzb)) {
            zzen zzenVar = this.zzp;
            if (zzenVar != null) {
                zzenVar.zzb(zzbdVar);
            }
            this.zzp = null;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
        if (zzG(r6, r0) != r1) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
        if (r6.zzc(r7, r0) == r1) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    @Override // com.google.android.recaptcha.internal.zze
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzh(@org.jetbrains.annotations.NotNull com.google.android.recaptcha.internal.zzsc r6, @org.jetbrains.annotations.NotNull rs.c r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.google.android.recaptcha.internal.zzir
            if (r0 == 0) goto L13
            r0 = r7
            com.google.android.recaptcha.internal.zzir r0 = (com.google.android.recaptcha.internal.zzir) r0
            int r1 = r0.zzc
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzc = r1
            goto L18
        L13:
            com.google.android.recaptcha.internal.zzir r0 = new com.google.android.recaptcha.internal.zzir
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.zza
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.zzc
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.f.b(r7)
            goto L5e
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L34:
            kotlin.f.b(r7)
            goto L74
        L38:
            kotlin.f.b(r7)
            boolean r7 = r6.zzT()
            if (r7 == 0) goto L67
            boolean r7 = r6.zzR()
            if (r7 == 0) goto L67
            boolean r7 = r6.zzQ()
            if (r7 != 0) goto L4e
            goto L67
        L4e:
            r5.zzf = r6
            com.google.android.recaptcha.internal.zzek r6 = r5.zzc
            java.lang.String r6 = r6.zzd()
            r0.zzc = r3
            java.lang.Object r6 = r5.zzG(r6, r0)
            if (r6 == r1) goto L73
        L5e:
            kotlin.Result$a r6 = kotlin.Result.f60901b
            kotlin.Unit r6 = kotlin.Unit.f60915a
            java.lang.Object r6 = kotlin.Result.d(r6)
            return r6
        L67:
            com.google.android.recaptcha.internal.zzcb r6 = r5.zzg
            com.google.android.recaptcha.internal.zzje r7 = com.google.android.recaptcha.internal.zzje.zzd
            r0.zzc = r4
            java.lang.Object r6 = r6.zzc(r7, r0)
            if (r6 != r1) goto L74
        L73:
            return r1
        L74:
            kotlin.Result$a r6 = kotlin.Result.f60901b
            com.google.android.recaptcha.internal.zzbd r6 = new com.google.android.recaptcha.internal.zzbd
            com.google.android.recaptcha.internal.zzbb r7 = com.google.android.recaptcha.internal.zzbb.zzb
            com.google.android.recaptcha.internal.zzba r0 = com.google.android.recaptcha.internal.zzba.zzav
            r1 = 0
            r6.<init>(r7, r0, r1)
            java.lang.Object r6 = kotlin.f.a(r6)
            java.lang.Object r6 = kotlin.Result.d(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzja.zzh(com.google.android.recaptcha.internal.zzsc, rs.c):java.lang.Object");
    }

    @Override // com.google.android.recaptcha.internal.zze
    @Nullable
    protected final Object zzi(@NotNull String str, long j10, @NotNull Exception exc, @NotNull rs.c cVar) {
        exc.getMessage();
        p pVar = (p) this.zze.remove(str);
        if (pVar != null) {
            kotlin.coroutines.jvm.internal.a.a(pVar.d(exc));
        }
        return Unit.f60915a;
    }

    @Override // com.google.android.recaptcha.internal.zze
    @Nullable
    protected final Object zzj(@NotNull Exception exc, @NotNull rs.c cVar) {
        Long zza = this.zzi.zza();
        if ((exc instanceof TimeoutCancellationException) && zza == null) {
            return new zzbd(zzbb.zzc, zzba.zzH, null);
        }
        return zzf.zza(exc, new zzbd(zzbb.zzb, zzba.zzV, exc.getMessage()));
    }

    @NotNull
    public final zzcb zzm() {
        return this.zzg;
    }

    @NotNull
    public final zzij zzq() {
        return this.zzi;
    }

    @Nullable
    public final Object zzw(@NotNull rs.c cVar) {
        return e.g(this.zzq.zzb().getCoroutineContext(), new zzjc((zzjd) this.zzk.getValue(), zzD(), null), cVar);
    }

    @Nullable
    public final Object zzx(@NotNull rs.c cVar) {
        Object g10 = e.g(this.zzq.zzb().getCoroutineContext(), new zzil(this, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
