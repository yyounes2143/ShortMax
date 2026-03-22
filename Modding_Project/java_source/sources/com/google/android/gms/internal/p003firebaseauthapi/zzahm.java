package com.google.android.gms.internal.p003firebaseauthapi;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.auth.ActionCodeSettings;
import com.huawei.hms.support.feature.result.CommonConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzahm  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzahm implements zzafa {
    private String zza;
    @Nullable
    private String zzb;
    @Nullable
    private String zzc;
    @Nullable
    private String zzd;
    private ActionCodeSettings zze;
    @Nullable
    private String zzf;
    @Nullable
    private String zzg;

    public zzahm(int i10) {
        this.zza = zza(i10);
    }

    public static zzahm zza(ActionCodeSettings actionCodeSettings, String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkNotNull(actionCodeSettings);
        return new zzahm(7, actionCodeSettings, null, str2, str, null, null);
    }

    public final ActionCodeSettings zzb() {
        return this.zze;
    }

    public final zzahm zzc(@Nullable String str) {
        this.zzf = str;
        return this;
    }

    public final zzahm zzd(String str) {
        this.zzd = Preconditions.checkNotEmpty(str);
        return this;
    }

    public final zzahm zzb(String str) {
        this.zzb = Preconditions.checkNotEmpty(str);
        return this;
    }

    @Nullable
    public final String zzc() {
        return this.zzb;
    }

    @Nullable
    public final String zzd() {
        return this.zzd;
    }

    private zzahm(int i10, ActionCodeSettings actionCodeSettings, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.zza = zza(7);
        this.zze = (ActionCodeSettings) Preconditions.checkNotNull(actionCodeSettings);
        this.zzb = null;
        this.zzc = str2;
        this.zzd = str3;
        this.zzf = null;
        this.zzg = null;
    }

    public final zzahm zza(ActionCodeSettings actionCodeSettings) {
        this.zze = (ActionCodeSettings) Preconditions.checkNotNull(actionCodeSettings);
        return this;
    }

    public final zzahm zza(@Nullable String str) {
        this.zzg = str;
        return this;
    }

    @SuppressLint({"SwitchIntDef"})
    private static String zza(int i10) {
        if (i10 != 1) {
            if (i10 != 4) {
                if (i10 != 6) {
                    if (i10 != 7) {
                        return "REQUEST_TYPE_UNSET_ENUM_VALUE";
                    }
                    return "VERIFY_AND_CHANGE_EMAIL";
                }
                return "EMAIL_SIGNIN";
            }
            return "VERIFY_EMAIL";
        }
        return "PASSWORD_RESET";
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        int i10 = 1;
        JSONObject jSONObject = new JSONObject();
        String str = this.zza;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1452371317:
                if (str.equals("PASSWORD_RESET")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1341836234:
                if (str.equals("VERIFY_EMAIL")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1099157829:
                if (str.equals("VERIFY_AND_CHANGE_EMAIL")) {
                    c10 = 2;
                    break;
                }
                break;
            case 870738373:
                if (str.equals("EMAIL_SIGNIN")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                break;
            case 1:
                i10 = 4;
                break;
            case 2:
                i10 = 7;
                break;
            case 3:
                i10 = 6;
                break;
            default:
                i10 = 0;
                break;
        }
        jSONObject.put("requestType", i10);
        String str2 = this.zzb;
        if (str2 != null) {
            jSONObject.put("email", str2);
        }
        String str3 = this.zzc;
        if (str3 != null) {
            jSONObject.put("newEmail", str3);
        }
        String str4 = this.zzd;
        if (str4 != null) {
            jSONObject.put(CommonConstant.KEY_ID_TOKEN, str4);
        }
        ActionCodeSettings actionCodeSettings = this.zze;
        if (actionCodeSettings != null) {
            jSONObject.put("androidInstallApp", actionCodeSettings.o());
            jSONObject.put("canHandleCodeInApp", this.zze.m());
            if (this.zze.T() != null) {
                jSONObject.put("continueUrl", this.zze.T());
            }
            if (this.zze.x() != null) {
                jSONObject.put("iosBundleId", this.zze.x());
            }
            if (this.zze.zzd() != null) {
                jSONObject.put("iosAppStoreId", this.zze.zzd());
            }
            if (this.zze.w() != null) {
                jSONObject.put("androidPackageName", this.zze.w());
            }
            if (this.zze.p() != null) {
                jSONObject.put("androidMinimumVersion", this.zze.p());
            }
            if (this.zze.zzc() != null) {
                jSONObject.put("dynamicLinkDomain", this.zze.zzc());
            }
            if (this.zze.R() != null) {
                jSONObject.put("linkDomain", this.zze.R());
            }
        }
        String str5 = this.zzf;
        if (str5 != null) {
            jSONObject.put("tenantId", str5);
        }
        String str6 = this.zzg;
        if (str6 != null) {
            zzajk.zza(jSONObject, "captchaResp", str6);
        } else {
            zzajk.zza(jSONObject);
        }
        return jSONObject.toString();
    }
}
