package com.google.android.recaptcha.internal;

import com.google.android.recaptcha.RecaptchaErrorCode;
import com.google.android.recaptcha.RecaptchaException;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzbd extends Exception {
    public static final /* synthetic */ int zza = 0;
    @NotNull
    private static final Map zzb;
    @NotNull
    private final zzbb zzc;
    @NotNull
    private final zzba zzd;
    @Nullable
    private final String zze;
    @NotNull
    private final Map zzf;

    static {
        Pair a10 = k.a(zztv.JS_NETWORK_ERROR, new zzbd(zzbb.zzc, zzba.zzd, null));
        zztv zztvVar = zztv.JS_INTERNAL_ERROR;
        zzbb zzbbVar = zzbb.zzb;
        zzb = p0.m(a10, k.a(zztvVar, new zzbd(zzbbVar, zzba.zzc, null)), k.a(zztv.JS_INVALID_SITE_KEY, new zzbd(zzbb.zzd, zzba.zze, null)), k.a(zztv.JS_INVALID_SITE_KEY_TYPE, new zzbd(zzbb.zze, zzba.zzf, null)), k.a(zztv.JS_THIRD_PARTY_APP_PACKAGE_NAME_NOT_ALLOWED, new zzbd(zzbb.zzf, zzba.zzg, null)), k.a(zztv.JS_INVALID_ACTION, new zzbd(zzbb.zzg, zzba.zzh, null)), k.a(zztv.JS_PROGRAM_ERROR, new zzbd(zzbbVar, zzba.zzj, null)));
    }

    public zzbd(@NotNull zzbb zzbbVar, @NotNull zzba zzbaVar, @Nullable String str) {
        this.zzc = zzbbVar;
        this.zzd = zzbaVar;
        this.zze = str;
        zzbb zzbbVar2 = zzbb.zzc;
        RecaptchaErrorCode recaptchaErrorCode = RecaptchaErrorCode.NETWORK_ERROR;
        this.zzf = p0.m(k.a(zzbbVar2, new RecaptchaException(recaptchaErrorCode, null, 2, null)), k.a(zzbb.zzh, new RecaptchaException(recaptchaErrorCode, null, 2, null)), k.a(zzbb.zzi, new RecaptchaException(recaptchaErrorCode, null, 2, null)), k.a(zzbb.zzd, new RecaptchaException(RecaptchaErrorCode.INVALID_SITEKEY, null, 2, null)), k.a(zzbb.zze, new RecaptchaException(RecaptchaErrorCode.INVALID_KEYTYPE, null, 2, null)), k.a(zzbb.zzf, new RecaptchaException(RecaptchaErrorCode.INVALID_PACKAGE_NAME, null, 2, null)), k.a(zzbb.zzg, new RecaptchaException(RecaptchaErrorCode.INVALID_ACTION, null, 2, null)), k.a(zzbb.zzb, new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null)), k.a(zzbb.zzj, new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null)));
    }

    @NotNull
    public final zzba zza() {
        return this.zzd;
    }

    @NotNull
    public final zzbb zzb() {
        return this.zzc;
    }

    @NotNull
    public final RecaptchaException zzc() {
        zzba zzbaVar = this.zzd;
        if (Intrinsics.areEqual(zzbaVar, zzba.zzI)) {
            return new RecaptchaException(RecaptchaErrorCode.INVALID_TIMEOUT, null, 2, null);
        }
        if (Intrinsics.areEqual(zzbaVar, zzba.zzao)) {
            return new RecaptchaException(RecaptchaErrorCode.NO_NETWORK_FOUND, null, 2, null);
        }
        RecaptchaException recaptchaException = (RecaptchaException) this.zzf.get(this.zzc);
        if (recaptchaException == null) {
            return new RecaptchaException(RecaptchaErrorCode.INTERNAL_ERROR, null, 2, null);
        }
        return recaptchaException;
    }

    @Nullable
    public final String zzd() {
        return this.zze;
    }
}
