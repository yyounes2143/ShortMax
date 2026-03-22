package v7;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.autofill.HintConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.p003firebaseauthapi.zzaao;
import com.google.android.gms.internal.p003firebaseauthapi.zzahv;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.PhoneMultiFactorInfo;
import com.google.firebase.auth.TotpMultiFactorInfo;
import com.google.firebase.auth.internal.zzab;
import com.google.firebase.auth.internal.zzaf;
import com.google.firebase.auth.internal.zzah;
import com.google.firebase.auth.zzan;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    private Context f68779a;

    /* renamed from: b  reason: collision with root package name */
    private String f68780b;

    /* renamed from: c  reason: collision with root package name */
    private SharedPreferences f68781c;

    /* renamed from: d  reason: collision with root package name */
    private Logger f68782d;

    public j0(Context context, String str) {
        Preconditions.checkNotNull(context);
        this.f68780b = Preconditions.checkNotEmpty(str);
        this.f68779a = context.getApplicationContext();
        this.f68781c = this.f68779a.getSharedPreferences(String.format("com.google.firebase.auth.api.Store.%s", this.f68780b), 0);
        this.f68782d = new Logger("StorageHelpers", new String[0]);
    }

    @Nullable
    private final zzaf c(JSONObject jSONObject) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        MultiFactorInfo multiFactorInfo;
        zzah c10;
        try {
            String string = jSONObject.getString("cachedTokenState");
            String string2 = jSONObject.getString("applicationName");
            boolean z10 = jSONObject.getBoolean("anonymous");
            String str = "2";
            String string3 = jSONObject.getString("version");
            if (string3 != null) {
                str = string3;
            }
            JSONArray jSONArray3 = jSONObject.getJSONArray("userInfos");
            int length = jSONArray3.length();
            if (length == 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList(length);
            for (int i10 = 0; i10 < length; i10++) {
                arrayList.add(zzab.p(jSONArray3.getString(i10)));
            }
            zzaf zzafVar = new zzaf(com.google.firebase.f.n(string2), arrayList);
            if (!TextUtils.isEmpty(string)) {
                zzafVar.c0(zzahv.zzb(string));
            }
            if (!z10) {
                zzafVar.d0();
            }
            zzafVar.i0(str);
            if (jSONObject.has("userMetadata") && (c10 = zzah.c(jSONObject.getJSONObject("userMetadata"))) != null) {
                zzafVar.j0(c10);
            }
            if (jSONObject.has("userMultiFactorInfo") && (jSONArray2 = jSONObject.getJSONArray("userMultiFactorInfo")) != null) {
                ArrayList arrayList2 = new ArrayList();
                for (int i11 = 0; i11 < jSONArray2.length(); i11++) {
                    JSONObject jSONObject2 = new JSONObject(jSONArray2.getString(i11));
                    String optString = jSONObject2.optString("factorIdKey");
                    if (HintConstants.AUTOFILL_HINT_PHONE.equals(optString)) {
                        multiFactorInfo = PhoneMultiFactorInfo.w(jSONObject2);
                    } else if (Objects.equals(optString, "totp")) {
                        multiFactorInfo = TotpMultiFactorInfo.w(jSONObject2);
                    } else {
                        multiFactorInfo = null;
                    }
                    arrayList2.add(multiFactorInfo);
                }
                zzafVar.g0(arrayList2);
            }
            if (jSONObject.has("passkeyInfo") && (jSONArray = jSONObject.getJSONArray("passkeyInfo")) != null) {
                ArrayList arrayList3 = new ArrayList();
                for (int i12 = 0; i12 < jSONArray.length(); i12++) {
                    arrayList3.add(zzan.c(new JSONObject(jSONArray.getString(i12))));
                }
                zzafVar.e0(arrayList3);
            }
            return zzafVar;
        } catch (zzaao e10) {
            e = e10;
            this.f68782d.wtf(e);
            return null;
        } catch (ArrayIndexOutOfBoundsException e11) {
            e = e11;
            this.f68782d.wtf(e);
            return null;
        } catch (IllegalArgumentException e12) {
            e = e12;
            this.f68782d.wtf(e);
            return null;
        } catch (JSONException e13) {
            e = e13;
            this.f68782d.wtf(e);
            return null;
        }
    }

    @Nullable
    private final String d(String str) {
        String string = this.f68781c.getString(str, null);
        if (string == null) {
            return null;
        }
        if (string.startsWith("ENCRYPTED:")) {
            return f0.b(this.f68779a, this.f68780b).a(string.substring(10));
        }
        return string;
    }

    private final void f(String str, String str2) {
        String d10 = f0.b(this.f68779a, this.f68780b).d(str2);
        if (d10 != null) {
            this.f68781c.edit().putString(str, "ENCRYPTED:" + d10).apply();
        }
    }

    private final void i(String str) {
        this.f68781c.edit().remove(str).apply();
    }

    @Nullable
    private final String k(FirebaseUser firebaseUser) {
        boolean z10;
        JSONObject jSONObject = new JSONObject();
        if (firebaseUser instanceof zzaf) {
            zzaf zzafVar = (zzaf) firebaseUser;
            try {
                jSONObject.put("cachedTokenState", zzafVar.zze());
                jSONObject.put("applicationName", zzafVar.T().o());
                jSONObject.put("type", "com.google.firebase.auth.internal.DefaultFirebaseUser");
                if (zzafVar.w0() != null) {
                    JSONArray jSONArray = new JSONArray();
                    List<zzab> w02 = zzafVar.w0();
                    int size = w02.size();
                    if (w02.size() > 30) {
                        this.f68782d.w("Provider user info list size larger than max size, truncating list to %d. Actual list size: %d", 30, Integer.valueOf(w02.size()));
                        size = 30;
                    }
                    int i10 = 0;
                    boolean z11 = false;
                    while (true) {
                        z10 = true;
                        if (i10 >= size) {
                            break;
                        }
                        zzab zzabVar = w02.get(i10);
                        if (zzabVar.l().equals("firebase")) {
                            z11 = true;
                        }
                        if (i10 == size - 1 && !z11) {
                            break;
                        }
                        jSONArray.put(zzabVar.zzb());
                        i10++;
                    }
                    if (!z11) {
                        for (int i11 = size - 1; i11 < w02.size() && i11 >= 0; i11++) {
                            zzab zzabVar2 = w02.get(i11);
                            if (zzabVar2.l().equals("firebase")) {
                                jSONArray.put(zzabVar2.zzb());
                                break;
                            }
                            if (i11 == w02.size() - 1) {
                                jSONArray.put(zzabVar2.zzb());
                            }
                        }
                        z10 = z11;
                        if (!z10) {
                            this.f68782d.w("Malformed user object! No Firebase Auth provider id found. Provider user info list size: %d, trimmed size: %d", Integer.valueOf(w02.size()), Integer.valueOf(size));
                            if (w02.size() < 5) {
                                StringBuilder sb2 = new StringBuilder("Provider user info list:\n");
                                for (zzab zzabVar3 : w02) {
                                    sb2.append(String.format("Provider - %s\n", zzabVar3.l()));
                                }
                                this.f68782d.w(sb2.toString(), new Object[0]);
                            }
                        }
                    }
                    jSONObject.put("userInfos", jSONArray);
                }
                jSONObject.put("anonymous", zzafVar.R());
                jSONObject.put("version", "2");
                if (zzafVar.m() != null) {
                    jSONObject.put("userMetadata", ((zzah) zzafVar.m()).d());
                }
                List<MultiFactorInfo> a10 = ((h) zzafVar.o()).a();
                if (a10 != null && !a10.isEmpty()) {
                    JSONArray jSONArray2 = new JSONArray();
                    for (int i12 = 0; i12 < a10.size(); i12++) {
                        jSONArray2.put(a10.get(i12).toJson());
                    }
                    jSONObject.put("userMultiFactorInfo", jSONArray2);
                }
                List<zzan> h02 = zzafVar.h0();
                if (h02 != null && !h02.isEmpty()) {
                    JSONArray jSONArray3 = new JSONArray();
                    for (int i13 = 0; i13 < h02.size(); i13++) {
                        jSONArray3.put(zzan.g(h02.get(i13)));
                    }
                    jSONObject.put("passkeyInfo", jSONArray3);
                }
                return jSONObject.toString();
            } catch (Exception e10) {
                this.f68782d.wtf("Failed to turn object into JSON", e10, new Object[0]);
                throw new zzaao(e10);
            }
        }
        return null;
    }

    @Nullable
    public final zzahv a(FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(firebaseUser);
        String d10 = d(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", firebaseUser.x()));
        if (d10 != null) {
            try {
                return zzahv.zzb(d10);
            } catch (zzaao unused) {
                this.f68782d.i("Failed to restore token data from persistent storage.", new Object[0]);
                return null;
            }
        }
        return null;
    }

    @Nullable
    public final FirebaseUser b() {
        String d10 = d("com.google.firebase.auth.FIREBASE_USER");
        if (TextUtils.isEmpty(d10)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(d10);
            if (jSONObject.has("type") && "com.google.firebase.auth.internal.DefaultFirebaseUser".equalsIgnoreCase(jSONObject.optString("type"))) {
                return c(jSONObject);
            }
        } catch (Exception unused) {
            this.f68782d.i("Failed to restore user data from persistent storage.", new Object[0]);
        }
        return null;
    }

    public final void e(FirebaseUser firebaseUser, zzahv zzahvVar) {
        Preconditions.checkNotNull(firebaseUser);
        Preconditions.checkNotNull(zzahvVar);
        f(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", firebaseUser.x()), zzahvVar.zzf());
    }

    public final void g() {
        i("com.google.firebase.auth.FIREBASE_USER");
    }

    public final void h(FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(firebaseUser);
        i(String.format("com.google.firebase.auth.GET_TOKEN_RESPONSE.%s", firebaseUser.x()));
    }

    public final void j(FirebaseUser firebaseUser) {
        Preconditions.checkNotNull(firebaseUser);
        String k10 = k(firebaseUser);
        if (!TextUtils.isEmpty(k10)) {
            f("com.google.firebase.auth.FIREBASE_USER", k10);
        }
    }
}
