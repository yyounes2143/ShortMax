package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.adjust.sdk.Constants;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.facebook.internal.i0;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LegacyTokenHelper.kt */
@Metadata
/* loaded from: classes3.dex */
public final class c0 {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f15224c = new a(null);

    /* renamed from: d  reason: collision with root package name */
    private static final String f15225d = c0.class.getSimpleName();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f15226a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f15227b;

    /* compiled from: LegacyTokenHelper.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Date b(Bundle bundle, String str) {
            if (bundle == null) {
                return null;
            }
            long j10 = bundle.getLong(str, Long.MIN_VALUE);
            if (j10 == Long.MIN_VALUE) {
                return null;
            }
            return new Date(j10);
        }

        @Nullable
        public final String a(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return bundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
        }

        @Nullable
        public final Date c(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return b(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
        }

        @Nullable
        public final Date d(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return b(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate");
        }

        @Nullable
        public final AccessTokenSource e(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            if (bundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource")) {
                return (AccessTokenSource) bundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource");
            }
            if (bundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO")) {
                return AccessTokenSource.FACEBOOK_APPLICATION_WEB;
            }
            return AccessTokenSource.WEB_VIEW;
        }

        @Nullable
        public final String f(@NotNull Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            return bundle.getString("com.facebook.TokenCachingStrategy.Token");
        }

        public final boolean g(@Nullable Bundle bundle) {
            String string;
            if (bundle == null || (string = bundle.getString("com.facebook.TokenCachingStrategy.Token")) == null || string.length() == 0 || bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) == 0) {
                return false;
            }
            return true;
        }

        private a() {
        }
    }

    public c0(@NotNull Context context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        str = (str == null || str.length() == 0) ? "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY" : "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        this.f15226a = str;
        Context applicationContext = context.getApplicationContext();
        SharedPreferences sharedPreferences = (applicationContext != null ? applicationContext : context).getSharedPreferences(str, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "context.getSharedPrefere…ey, Context.MODE_PRIVATE)");
        this.f15227b = sharedPreferences;
    }

    private final void b(String str, Bundle bundle) throws JSONException {
        String str2;
        String string;
        String string2 = this.f15227b.getString(str, JsonUtils.EMPTY_JSON);
        if (string2 != null) {
            Intrinsics.checkNotNullExpressionValue(string2, "checkNotNull(cache.getString(key, \"{}\"))");
            JSONObject jSONObject = new JSONObject(string2);
            String string3 = jSONObject.getString("valueType");
            if (string3 != null) {
                int i10 = 0;
                switch (string3.hashCode()) {
                    case -1573317553:
                        if (string3.equals("stringList")) {
                            JSONArray jSONArray = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length = jSONArray.length();
                            ArrayList<String> arrayList = new ArrayList<>(length);
                            while (i10 < length) {
                                Object obj = jSONArray.get(i10);
                                if (obj == JSONObject.NULL) {
                                    str2 = null;
                                } else {
                                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                                    str2 = (String) obj;
                                }
                                arrayList.add(i10, str2);
                                i10++;
                            }
                            bundle.putStringArrayList(str, arrayList);
                            return;
                        }
                        return;
                    case -1383386164:
                        if (string3.equals("bool[]")) {
                            JSONArray jSONArray2 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length2 = jSONArray2.length();
                            boolean[] zArr = new boolean[length2];
                            while (i10 < length2) {
                                zArr[i10] = jSONArray2.getBoolean(i10);
                                i10++;
                            }
                            bundle.putBooleanArray(str, zArr);
                            return;
                        }
                        return;
                    case -1374008726:
                        if (string3.equals("byte[]")) {
                            JSONArray jSONArray3 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length3 = jSONArray3.length();
                            byte[] bArr = new byte[length3];
                            while (i10 < length3) {
                                bArr[i10] = (byte) jSONArray3.getInt(i10);
                                i10++;
                            }
                            bundle.putByteArray(str, bArr);
                            return;
                        }
                        return;
                    case -1361632968:
                        if (string3.equals("char[]")) {
                            JSONArray jSONArray4 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length4 = jSONArray4.length();
                            char[] cArr = new char[length4];
                            for (int i11 = 0; i11 < length4; i11++) {
                                String string4 = jSONArray4.getString(i11);
                                if (string4 != null && string4.length() == 1) {
                                    cArr[i11] = string4.charAt(0);
                                }
                            }
                            bundle.putCharArray(str, cArr);
                            return;
                        }
                        return;
                    case -1325958191:
                        if (string3.equals("double")) {
                            bundle.putDouble(str, jSONObject.getDouble(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case -1097129250:
                        if (string3.equals("long[]")) {
                            JSONArray jSONArray5 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length5 = jSONArray5.length();
                            long[] jArr = new long[length5];
                            while (i10 < length5) {
                                jArr[i10] = jSONArray5.getLong(i10);
                                i10++;
                            }
                            bundle.putLongArray(str, jArr);
                            return;
                        }
                        return;
                    case -891985903:
                        if (string3.equals(TypedValues.Custom.S_STRING)) {
                            bundle.putString(str, jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case -766441794:
                        if (string3.equals("float[]")) {
                            JSONArray jSONArray6 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length6 = jSONArray6.length();
                            float[] fArr = new float[length6];
                            while (i10 < length6) {
                                fArr[i10] = (float) jSONArray6.getDouble(i10);
                                i10++;
                            }
                            bundle.putFloatArray(str, fArr);
                            return;
                        }
                        return;
                    case 104431:
                        if (string3.equals("int")) {
                            bundle.putInt(str, jSONObject.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case 3029738:
                        if (string3.equals("bool")) {
                            bundle.putBoolean(str, jSONObject.getBoolean(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case 3039496:
                        if (string3.equals("byte")) {
                            bundle.putByte(str, (byte) jSONObject.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case 3052374:
                        if (string3.equals("char") && (string = jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE)) != null && string.length() == 1) {
                            bundle.putChar(str, string.charAt(0));
                            return;
                        }
                        return;
                    case 3118337:
                        if (string3.equals("enum")) {
                            try {
                                Class<?> cls = Class.forName(jSONObject.getString("enumType"));
                                Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<out kotlin.Enum<*>>");
                                bundle.putSerializable(str, Enum.valueOf(cls, jSONObject.getString(AppMeasurementSdk.ConditionalUserProperty.VALUE)));
                                return;
                            } catch (ClassNotFoundException | IllegalArgumentException unused) {
                                return;
                            }
                        }
                        return;
                    case 3327612:
                        if (string3.equals(Constants.LONG)) {
                            bundle.putLong(str, jSONObject.getLong(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case 97526364:
                        if (string3.equals(TypedValues.Custom.S_FLOAT)) {
                            bundle.putFloat(str, (float) jSONObject.getDouble(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case 100361105:
                        if (string3.equals("int[]")) {
                            JSONArray jSONArray7 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length7 = jSONArray7.length();
                            int[] iArr = new int[length7];
                            while (i10 < length7) {
                                iArr[i10] = jSONArray7.getInt(i10);
                                i10++;
                            }
                            bundle.putIntArray(str, iArr);
                            return;
                        }
                        return;
                    case 109413500:
                        if (string3.equals("short")) {
                            bundle.putShort(str, (short) jSONObject.getInt(AppMeasurementSdk.ConditionalUserProperty.VALUE));
                            return;
                        }
                        return;
                    case 1359468275:
                        if (string3.equals("double[]")) {
                            JSONArray jSONArray8 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length8 = jSONArray8.length();
                            double[] dArr = new double[length8];
                            while (i10 < length8) {
                                dArr[i10] = jSONArray8.getDouble(i10);
                                i10++;
                            }
                            bundle.putDoubleArray(str, dArr);
                            return;
                        }
                        return;
                    case 2067161310:
                        if (string3.equals("short[]")) {
                            JSONArray jSONArray9 = jSONObject.getJSONArray(AppMeasurementSdk.ConditionalUserProperty.VALUE);
                            int length9 = jSONArray9.length();
                            short[] sArr = new short[length9];
                            while (i10 < length9) {
                                sArr[i10] = (short) jSONArray9.getInt(i10);
                                i10++;
                            }
                            bundle.putShortArray(str, sArr);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    public final void a() {
        this.f15227b.edit().clear().apply();
    }

    @Nullable
    public final Bundle c() {
        Bundle bundle = new Bundle();
        for (String key : this.f15227b.getAll().keySet()) {
            try {
                Intrinsics.checkNotNullExpressionValue(key, "key");
                b(key, bundle);
            } catch (JSONException e10) {
                i0.a aVar = com.facebook.internal.i0.f16209e;
                LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
                String TAG = f15225d;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                aVar.a(loggingBehavior, 5, TAG, "Error reading cached value for key: '" + key + "' -- " + e10);
                return null;
            }
        }
        return bundle;
    }

    public /* synthetic */ c0(Context context, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : str);
    }
}
