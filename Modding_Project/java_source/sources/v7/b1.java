package v7;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.p003firebaseauthapi.zzbc;
import com.google.android.gms.internal.p003firebaseauthapi.zzbd;
import com.google.android.gms.internal.p003firebaseauthapi.zzby;
import com.google.android.gms.internal.p003firebaseauthapi.zzks;
import com.google.android.gms.internal.p003firebaseauthapi.zzkt;
import com.google.android.gms.internal.p003firebaseauthapi.zzlh;
import com.google.android.gms.internal.p003firebaseauthapi.zzmy;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.Objects;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class b1 {

    /* renamed from: c  reason: collision with root package name */
    private static b1 f68728c;

    /* renamed from: a  reason: collision with root package name */
    private final String f68729a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final zzmy f68730b;

    private b1(Context context, String str, boolean z10) {
        zzmy zzmyVar;
        this.f68729a = str;
        try {
            zzkt.zza();
            zzmy.zza zza = new zzmy.zza().zza(context, "GenericIdpKeyset", String.format("com.google.firebase.auth.api.crypto.%s", str)).zza(zzlh.zza);
            zza.zza(String.format("android-keystore://firebear_master_key_id.%s", str));
            zzmyVar = zza.zza();
        } catch (IOException | GeneralSecurityException e10) {
            String message = e10.getMessage();
            Log.e("FirebearCryptoHelper", "Exception encountered during crypto setup:\n" + message);
            zzmyVar = null;
        }
        this.f68730b = zzmyVar;
    }

    public static b1 c(Context context, String str) {
        b1 b1Var = f68728c;
        if (b1Var == null || !Objects.equals(b1Var.f68729a, str)) {
            f68728c = new b1(context, str, true);
        }
        return f68728c;
    }

    @Nullable
    public final String a() {
        if (this.f68730b == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to get Public key");
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        zzby zza = zzbc.zza(byteArrayOutputStream);
        try {
            synchronized (this.f68730b) {
                this.f68730b.zza().zzb().zza(zza);
            }
            return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 8);
        } catch (IOException | GeneralSecurityException e10) {
            String message = e10.getMessage();
            Log.e("FirebearCryptoHelper", "Exception encountered when attempting to get Public Key:\n" + message);
            return null;
        }
    }

    @Nullable
    public final String b(String str) {
        String str2;
        zzmy zzmyVar = this.f68730b;
        if (zzmyVar == null) {
            Log.e("FirebearCryptoHelper", "KeysetManager failed to initialize - unable to decrypt payload");
            return null;
        }
        try {
            synchronized (zzmyVar) {
                str2 = new String(((zzbd) this.f68730b.zza().zza(zzks.zza(), zzbd.class)).zza(Base64.decode(str, 8), null), "UTF-8");
            }
            return str2;
        } catch (UnsupportedEncodingException | GeneralSecurityException e10) {
            String message = e10.getMessage();
            Log.e("FirebearCryptoHelper", "Exception encountered while decrypting bytes:\n" + message);
            return null;
        }
    }
}
