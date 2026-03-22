package v7;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p003firebaseauthapi.zzba;
import com.google.android.gms.internal.p003firebaseauthapi.zzcl;
import com.google.android.gms.internal.p003firebaseauthapi.zzco;
import com.google.android.gms.internal.p003firebaseauthapi.zzcv;
import com.google.android.gms.internal.p003firebaseauthapi.zzmy;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class f0 {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static f0 f68758c;

    /* renamed from: a  reason: collision with root package name */
    private final String f68759a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final zzmy f68760b;

    private f0(String str, @Nullable zzmy zzmyVar) {
        this.f68759a = str;
        this.f68760b = zzmyVar;
    }

    public static f0 b(Context context, String str) {
        f0 f0Var = f68758c;
        if (f0Var == null || !Objects.equals(f0Var.f68759a, str)) {
            f68758c = new f0(str, e(context, str));
        }
        return f68758c;
    }

    private static zzmy c(Context context, String str) throws GeneralSecurityException, IOException {
        return new zzmy.zza().zza(context, "StorageCryptoKeyset", f(str)).zza(zzcv.zzb).zza(String.format("android-keystore://firebear_main_key_id_for_storage_crypto.%s", str)).zza();
    }

    @Nullable
    private static zzmy e(Context context, String str) {
        try {
            zzcl.zza();
            return c(context, str);
        } catch (IOException | GeneralSecurityException e10) {
            String message = e10.getMessage();
            Log.e("FirebearStorageCryptoHelper", "Exception encountered during crypto setup:\n" + message);
            if (e10 instanceof GeneralSecurityException) {
                context.getSharedPreferences(f(str), 0).edit().remove("StorageCryptoKeyset").apply();
                try {
                    return c(context, str);
                } catch (IOException | GeneralSecurityException e11) {
                    String message2 = e11.getMessage();
                    Log.e("FirebearStorageCryptoHelper", "Exception encountered during second attempt to crypto setup:\n" + message2);
                    return null;
                }
            }
            return null;
        }
    }

    private static String f(String str) {
        return String.format("com.google.firebase.auth.api.crypto.%s", str);
    }

    @Nullable
    public final String a(@NonNull String str) {
        String str2;
        Preconditions.checkNotNull(str);
        zzmy zzmyVar = this.f68760b;
        if (zzmyVar == null) {
            Log.e("FirebearStorageCryptoHelper", "KeysetManager failed to initialize - unable to decrypt data");
            return null;
        }
        try {
            synchronized (zzmyVar) {
                str2 = new String(((zzba) this.f68760b.zza().zza(zzco.zza(), zzba.class)).zza(Base64.decode(str, 2), null), StandardCharsets.UTF_8);
            }
            return str2;
        } catch (IllegalArgumentException | GeneralSecurityException e10) {
            String message = e10.getMessage();
            Log.e("FirebearStorageCryptoHelper", "Exception encountered while decrypting bytes:\n" + message);
            return null;
        }
    }

    @Nullable
    public final String d(@NonNull String str) {
        String encodeToString;
        Preconditions.checkNotNull(str);
        zzmy zzmyVar = this.f68760b;
        if (zzmyVar == null) {
            Log.e("FirebearStorageCryptoHelper", "KeysetManager failed to initialize - unable to encrypt data");
            return null;
        }
        try {
            synchronized (zzmyVar) {
                encodeToString = Base64.encodeToString(((zzba) this.f68760b.zza().zza(zzco.zza(), zzba.class)).zzb(str.getBytes(StandardCharsets.UTF_8), null), 2);
            }
            return encodeToString;
        } catch (GeneralSecurityException e10) {
            String message = e10.getMessage();
            Log.e("FirebearStorageCryptoHelper", "Exception encountered while encrypting bytes:\n" + message);
            return null;
        }
    }
}
