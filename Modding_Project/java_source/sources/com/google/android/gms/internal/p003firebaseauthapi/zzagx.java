package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.firebase.auth.EmailAuthCredential;
import com.google.firebase.auth.d;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzagx  reason: invalid package */
/* loaded from: classes4.dex */
public class zzagx implements zzafa {
    private static final String zza = "zzagx";
    private final String zzb;
    private final String zzc;
    private final EmailAuthCredential zzd;
    @Nullable
    private final String zze;
    @Nullable
    private final String zzf;

    static {
        new Logger(zzagx.class.getSimpleName(), new String[0]);
    }

    public zzagx(EmailAuthCredential emailAuthCredential, @Nullable String str, @Nullable String str2) {
        this.zzd = (EmailAuthCredential) Preconditions.checkNotNull(emailAuthCredential);
        this.zzb = Preconditions.checkNotEmpty(emailAuthCredential.zzc());
        this.zzc = Preconditions.checkNotEmpty(emailAuthCredential.zze());
        this.zze = str;
        this.zzf = str2;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        String str;
        d b10 = d.b(this.zzc);
        String str2 = null;
        if (b10 != null) {
            str = b10.a();
        } else {
            str = null;
        }
        if (b10 != null) {
            str2 = b10.c();
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("email", this.zzb);
        if (str != null) {
            jSONObject.put("oobCode", str);
        }
        if (str2 != null) {
            jSONObject.put("tenantId", str2);
        }
        String str3 = this.zze;
        if (str3 != null) {
            jSONObject.put(CommonConstant.KEY_ID_TOKEN, str3);
        }
        String str4 = this.zzf;
        if (str4 != null) {
            zzajk.zza(jSONObject, "captchaResp", str4);
        } else {
            zzajk.zza(jSONObject);
        }
        return jSONObject.toString();
    }

    public final EmailAuthCredential zzb() {
        return this.zzd;
    }

    @Nullable
    public final String zzc() {
        return this.zzf;
    }
}
