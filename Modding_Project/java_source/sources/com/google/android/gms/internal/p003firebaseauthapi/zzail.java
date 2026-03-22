package com.google.android.gms.internal.p003firebaseauthapi;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzail  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzail implements zzafa {
    private String zza;
    private String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private String zzf;
    @Nullable
    private String zzj;
    private boolean zzh = true;
    private zzaiw zzg = new zzaiw();
    private zzaiw zzi = new zzaiw();

    @NonNull
    public final zzail zza(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzi.zzb().add(str);
        return this;
    }

    @NonNull
    public final zzail zzb(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add(CommonConstant.RETKEY.DISPLAYNAME);
        } else {
            this.zzb = str;
        }
        return this;
    }

    @NonNull
    public final zzail zzc(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add(CommonConstant.RETKEY.EMAIL);
        } else {
            this.zzc = str;
        }
        return this;
    }

    @NonNull
    public final zzail zzd(String str) {
        this.zza = Preconditions.checkNotEmpty(str);
        return this;
    }

    @NonNull
    public final zzail zze(String str) {
        this.zze = Preconditions.checkNotEmpty(str);
        return this;
    }

    @NonNull
    public final zzail zzf(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add("PASSWORD");
        } else {
            this.zzd = str;
        }
        return this;
    }

    @NonNull
    public final zzail zzg(@Nullable String str) {
        if (str == null) {
            this.zzg.zzb().add(CommonConstant.RETKEY.PHOTOURL);
        } else {
            this.zzf = str;
        }
        return this;
    }

    @NonNull
    public final zzail zzh(@Nullable String str) {
        this.zzj = str;
        return this;
    }

    public final boolean zzi(String str) {
        Preconditions.checkNotEmpty(str);
        return this.zzg.zzb().contains(str);
    }

    @Nullable
    public final String zzd() {
        return this.zzd;
    }

    @Nullable
    public final String zze() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzafa
    public final String zza() throws JSONException {
        int i10;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("returnSecureToken", this.zzh);
        if (!this.zzi.zzb().isEmpty()) {
            List<String> zzb = this.zzi.zzb();
            JSONArray jSONArray = new JSONArray();
            for (int i11 = 0; i11 < zzb.size(); i11++) {
                jSONArray.put(zzb.get(i11));
            }
            jSONObject.put("deleteProvider", jSONArray);
        }
        List<String> zzb2 = this.zzg.zzb();
        int size = zzb2.size();
        int[] iArr = new int[size];
        for (int i12 = 0; i12 < zzb2.size(); i12++) {
            String str = zzb2.get(i12);
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -333046776:
                    if (str.equals(CommonConstant.RETKEY.DISPLAYNAME)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 66081660:
                    if (str.equals(CommonConstant.RETKEY.EMAIL)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1939891618:
                    if (str.equals(CommonConstant.RETKEY.PHOTOURL)) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1999612571:
                    if (str.equals("PASSWORD")) {
                        c10 = 3;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    i10 = 2;
                    break;
                case 1:
                    i10 = 1;
                    break;
                case 2:
                    i10 = 4;
                    break;
                case 3:
                    i10 = 5;
                    break;
                default:
                    i10 = 0;
                    break;
            }
            iArr[i12] = i10;
        }
        if (size > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (int i13 = 0; i13 < size; i13++) {
                jSONArray2.put(iArr[i13]);
            }
            jSONObject.put("deleteAttribute", jSONArray2);
        }
        String str2 = this.zza;
        if (str2 != null) {
            jSONObject.put(com.huawei.hms.support.feature.result.CommonConstant.KEY_ID_TOKEN, str2);
        }
        String str3 = this.zzc;
        if (str3 != null) {
            jSONObject.put("email", str3);
        }
        String str4 = this.zzd;
        if (str4 != null) {
            jSONObject.put(HintConstants.AUTOFILL_HINT_PASSWORD, str4);
        }
        String str5 = this.zzb;
        if (str5 != null) {
            jSONObject.put(com.huawei.hms.support.feature.result.CommonConstant.KEY_DISPLAY_NAME, str5);
        }
        String str6 = this.zzf;
        if (str6 != null) {
            jSONObject.put("photoUrl", str6);
        }
        String str7 = this.zze;
        if (str7 != null) {
            jSONObject.put("oobCode", str7);
        }
        String str8 = this.zzj;
        if (str8 != null) {
            jSONObject.put("tenantId", str8);
        }
        return jSONObject.toString();
    }

    @Nullable
    public final String zzb() {
        return this.zzb;
    }

    @Nullable
    public final String zzc() {
        return this.zzc;
    }
}
