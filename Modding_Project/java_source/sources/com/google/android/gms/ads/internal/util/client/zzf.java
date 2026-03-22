package com.google.android.gms.ads.internal.util.client;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.AdManagerInterstitialAd;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzfv;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbfn;
import com.google.android.gms.internal.ads.zzfoc;
import com.google.android.gms.internal.ads.zzfrw;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzf {
    public static final Handler zza = new zzfrw(Looper.getMainLooper());
    private static final String zzb = AdView.class.getName();
    private static final String zzc = InterstitialAd.class.getName();
    private static final String zzd = AdManagerAdView.class.getName();
    private static final String zze = AdManagerInterstitialAd.class.getName();
    private static final String zzf = zzfoc.class.getName();
    private static final String zzg = AdLoader.class.getName();
    private float zzh = -1.0f;

    public static final int zzA(DisplayMetrics displayMetrics, int i10) {
        return Math.round(i10 / displayMetrics.density);
    }

    public static final void zzB(Context context, @Nullable String str, String str2, Bundle bundle, boolean z10, zze zzeVar) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", applicationContext.getPackageName());
        if (str == null) {
            str = GoogleApiAvailabilityLight.getInstance().getApkVersion(context) + ".252530000";
        }
        bundle.putString("js", str);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps");
        for (String str3 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str3, bundle.getString(str3));
        }
        zzeVar.zza(appendQueryParameter.toString());
    }

    public static final int zzC(Context context, int i10) {
        return zzu(context.getResources().getDisplayMetrics(), i10);
    }

    @Nullable
    public static final String zzD(Context context) {
        String string;
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            string = null;
        } else {
            string = Settings.Secure.getString(contentResolver, "android_id");
        }
        return zzE((string == null || zzw()) ? "emulator" : "emulator", SameMD5.TAG);
    }

    @Nullable
    private static String zzE(String str, String str2) {
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return null;
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return null;
    }

    private final JSONArray zzF(Collection collection) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : collection) {
            zzG(jSONArray, obj);
        }
        return jSONArray;
    }

    private final void zzG(JSONArray jSONArray, @Nullable Object obj) throws JSONException {
        if (obj instanceof Bundle) {
            jSONArray.put(zzn((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONArray.put(zzo((Map) obj));
        } else if (obj instanceof Collection) {
            jSONArray.put(zzF((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONArray.put(zzm((Object[]) obj));
        } else {
            jSONArray.put(obj);
        }
    }

    private final void zzH(JSONObject jSONObject, String str, @Nullable Object obj) throws JSONException {
        Boolean[] boolArr;
        Long[] lArr;
        Double[] dArr;
        Integer[] numArr;
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzq)).booleanValue()) {
            str = String.valueOf(str);
        }
        if (obj instanceof Bundle) {
            jSONObject.put(str, zzn((Bundle) obj));
        } else if (obj instanceof Map) {
            jSONObject.put(str, zzo((Map) obj));
        } else if (obj instanceof Collection) {
            jSONObject.put(String.valueOf(str), zzF((Collection) obj));
        } else if (obj instanceof Object[]) {
            jSONObject.put(str, zzF(Arrays.asList((Object[]) obj)));
        } else {
            int i10 = 0;
            if (obj instanceof int[]) {
                int[] iArr = (int[]) obj;
                if (iArr == null) {
                    numArr = new Integer[0];
                } else {
                    int length = iArr.length;
                    Integer[] numArr2 = new Integer[length];
                    while (i10 < length) {
                        numArr2[i10] = Integer.valueOf(iArr[i10]);
                        i10++;
                    }
                    numArr = numArr2;
                }
                jSONObject.put(str, zzm(numArr));
            } else if (obj instanceof double[]) {
                double[] dArr2 = (double[]) obj;
                if (dArr2 == null) {
                    dArr = new Double[0];
                } else {
                    int length2 = dArr2.length;
                    Double[] dArr3 = new Double[length2];
                    while (i10 < length2) {
                        dArr3[i10] = Double.valueOf(dArr2[i10]);
                        i10++;
                    }
                    dArr = dArr3;
                }
                jSONObject.put(str, zzm(dArr));
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                if (jArr == null) {
                    lArr = new Long[0];
                } else {
                    int length3 = jArr.length;
                    Long[] lArr2 = new Long[length3];
                    while (i10 < length3) {
                        lArr2[i10] = Long.valueOf(jArr[i10]);
                        i10++;
                    }
                    lArr = lArr2;
                }
                jSONObject.put(str, zzm(lArr));
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                if (zArr == null) {
                    boolArr = new Boolean[0];
                } else {
                    int length4 = zArr.length;
                    Boolean[] boolArr2 = new Boolean[length4];
                    while (i10 < length4) {
                        boolArr2[i10] = Boolean.valueOf(zArr[i10]);
                        i10++;
                    }
                    boolArr = boolArr2;
                }
                jSONObject.put(str, zzm(boolArr));
            } else {
                jSONObject.put(str, obj);
            }
        }
    }

    private static final void zzI(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzr zzrVar, @Nullable String str, int i10, int i11) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i10);
        textView.setBackgroundColor(i11);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i10);
        int zzC = zzC(context, 3);
        int i12 = zzrVar.zzf;
        int i13 = zzrVar.zzc;
        frameLayout.addView(textView, new FrameLayout.LayoutParams(i12 - zzC, i13 - zzC, 17));
        viewGroup.addView(frameLayout, i12, i13);
    }

    public static int zza(Context context, int i10) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context != null) {
            if (context.getApplicationContext() != null) {
                context = context.getApplicationContext();
            }
            Resources resources = context.getResources();
            if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null && (configuration = resources.getConfiguration()) != null) {
                int i11 = configuration.orientation;
                if (i10 == 0) {
                    i10 = i11;
                }
                if (i10 == i11) {
                    return Math.round(displayMetrics.heightPixels / displayMetrics.density);
                }
                return Math.round(displayMetrics.widthPixels / displayMetrics.density);
            }
            return -1;
        }
        return -1;
    }

    @Nullable
    public static ActivityManager.MemoryInfo zzc(Context context) {
        ActivityManager activityManager;
        if (context == null || (activityManager = (ActivityManager) context.getSystemService("activity")) == null) {
            return null;
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        try {
            activityManager.getMemoryInfo(memoryInfo);
        } catch (NullPointerException unused) {
            zzo.zzj("Error retrieving the memory information.");
        }
        return memoryInfo;
    }

    public static AdSize zzd(Context context, int i10, int i11, int i12) {
        int round;
        int zza2 = zza(context, i12);
        if (zza2 == -1) {
            return AdSize.INVALID;
        }
        int min = Math.min(90, Math.round(zza2 * 0.15f));
        if (i10 > 655) {
            round = Math.round((i10 / 728.0f) * 90.0f);
        } else if (i10 > 632) {
            round = 81;
        } else if (i10 > 526) {
            round = Math.round((i10 / 468.0f) * 60.0f);
        } else if (i10 > 432) {
            round = 68;
        } else {
            round = Math.round((i10 / 320.0f) * 50.0f);
        }
        return new AdSize(i10, Math.max(Math.min(round, min), 50));
    }

    public static zzfv zze(Context context, PreloadConfiguration preloadConfiguration, int i10) {
        int bufferSize;
        int intValue;
        com.google.android.gms.ads.internal.client.zzm zza2 = com.google.android.gms.ads.internal.client.zzq.zza.zza(context, preloadConfiguration.getAdRequest().zza());
        int i11 = 1;
        if (i10 == 1) {
            zza2.zzc.putBoolean("is_sdk_preload", true);
        } else {
            zza2.zzc.putBoolean("zenith_v2", true);
        }
        if (preloadConfiguration.getBufferSize() <= 0) {
            AdFormat adFormat = preloadConfiguration.getAdFormat();
            AdFormat adFormat2 = AdFormat.BANNER;
            int ordinal = adFormat.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 5) {
                        bufferSize = 1;
                    } else {
                        bufferSize = ((Integer) zzbd.zzc().zzb(zzbde.zzJ)).intValue();
                    }
                } else {
                    bufferSize = ((Integer) zzbd.zzc().zzb(zzbde.zzL)).intValue();
                }
            } else {
                bufferSize = ((Integer) zzbd.zzc().zzb(zzbde.zzK)).intValue();
            }
        } else {
            bufferSize = preloadConfiguration.getBufferSize();
        }
        AdFormat adFormat3 = preloadConfiguration.getAdFormat();
        AdFormat adFormat4 = AdFormat.BANNER;
        int ordinal2 = adFormat3.ordinal();
        if (ordinal2 != 1) {
            if (ordinal2 != 2) {
                if (ordinal2 != 5) {
                    intValue = 1;
                } else {
                    intValue = ((Integer) zzbd.zzc().zzb(zzbde.zzG)).intValue();
                }
            } else {
                intValue = ((Integer) zzbd.zzc().zzb(zzbde.zzI)).intValue();
            }
        } else {
            intValue = ((Integer) zzbd.zzc().zzb(zzbde.zzH)).intValue();
        }
        int max = Math.max(Math.min(intValue, 15), 1);
        int ordinal3 = preloadConfiguration.getAdFormat().ordinal();
        if (ordinal3 != 1) {
            if (ordinal3 != 2) {
                if (ordinal3 == 5) {
                    i11 = ((Integer) zzbd.zzc().zzb(zzbde.zzM)).intValue();
                }
            } else {
                i11 = ((Integer) zzbd.zzc().zzb(zzbde.zzO)).intValue();
            }
        } else {
            i11 = ((Integer) zzbd.zzc().zzb(zzbde.zzN)).intValue();
        }
        return new zzfv(preloadConfiguration.getAdUnitId(), preloadConfiguration.getAdFormat().getValue(), zza2, Math.max(Math.min(bufferSize, max), Math.min(i11, max)));
    }

    public static zzfv zzf(Context context, PreloadConfiguration preloadConfiguration, AdFormat adFormat) {
        PreloadConfiguration.Builder builder = new PreloadConfiguration.Builder(preloadConfiguration.getAdUnitId(), adFormat);
        builder.setAdRequest(preloadConfiguration.getAdRequest());
        builder.setBufferSize(preloadConfiguration.getBufferSize());
        return zze(context, builder.build(), 2);
    }

    @Nullable
    public static PreloadConfiguration zzg(zzfv zzfvVar) {
        PreloadConfiguration zzh = zzh(zzfvVar);
        if (zzh == null) {
            return null;
        }
        PreloadConfiguration.Builder builder = new PreloadConfiguration.Builder(zzh.getAdUnitId());
        builder.setAdRequest(zzh.getAdRequest());
        builder.setBufferSize(zzh.getBufferSize());
        return builder.build();
    }

    @Nullable
    public static PreloadConfiguration zzh(@NonNull zzfv zzfvVar) {
        String str = zzfvVar.zza;
        AdFormat adFormat = AdFormat.getAdFormat(zzfvVar.zzb);
        if (adFormat == null) {
            return null;
        }
        com.google.android.gms.ads.internal.client.zzm zzmVar = zzfvVar.zzc;
        AdRequest.Builder builder = new AdRequest.Builder();
        List<String> list = zzmVar.zze;
        if (list != null) {
            for (String str2 : list) {
                builder.addKeyword(str2);
            }
        }
        builder.zzc(zzmVar.zzm);
        Bundle bundle = zzmVar.zzn;
        for (String str3 : bundle.keySet()) {
            builder.addCustomTargeting(str3, bundle.getString(str3));
        }
        builder.setAdString(zzmVar.zzx);
        String str4 = zzmVar.zzl;
        if (str4 != null) {
            builder.setContentUrl(str4);
        }
        builder.setNeighboringContentUrls(zzmVar.zzv);
        builder.setRequestAgent(zzmVar.zzp);
        AdRequest build = builder.build();
        PreloadConfiguration.Builder builder2 = new PreloadConfiguration.Builder(str, adFormat);
        builder2.setAdRequest(build);
        builder2.setBufferSize(zzfvVar.zzd);
        return builder2.build();
    }

    public static Object zzi(Map map, Object obj, Object obj2) {
        if (map.containsKey(obj)) {
            return map.get(obj);
        }
        return obj2;
    }

    public static String zzj() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i10 = 0; i10 < 2; i10++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        return bigInteger;
    }

    @Nullable
    public static String zzk(String str) {
        return zzE(str, SameMD5.TAG);
    }

    @Nullable
    public static String zzl(String str) {
        return zzE(str, "SHA-256");
    }

    @VisibleForTesting
    public static boolean zzt(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith((String) zzbfn.zzd.zze());
    }

    public static final int zzu(DisplayMetrics displayMetrics, int i10) {
        return (int) TypedValue.applyDimension(1, i10, displayMetrics);
    }

    @Nullable
    @VisibleForTesting
    public static final String zzv(StackTraceElement[] stackTraceElementArr, String str) {
        int i10;
        String str2;
        int i11 = 0;
        while (true) {
            i10 = i11 + 1;
            if (i10 < stackTraceElementArr.length) {
                StackTraceElement stackTraceElement = stackTraceElementArr[i11];
                String className = stackTraceElement.getClassName();
                if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!zzb.equalsIgnoreCase(className) && !zzc.equalsIgnoreCase(className) && !zzd.equalsIgnoreCase(className) && !zze.equalsIgnoreCase(className) && !zzf.equalsIgnoreCase(className) && !zzg.equalsIgnoreCase(className))) {
                    i11 = i10;
                }
            } else {
                str2 = null;
                break;
            }
        }
        str2 = stackTraceElementArr[i10].getClassName();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            StringBuilder sb2 = new StringBuilder();
            if (stringTokenizer.hasMoreElements()) {
                sb2.append(stringTokenizer.nextToken());
                for (int i12 = 2; i12 > 0 && stringTokenizer.hasMoreElements(); i12--) {
                    sb2.append(".");
                    sb2.append(stringTokenizer.nextToken());
                }
                str = sb2.toString();
            }
            if (str2 != null && !str2.contains(str)) {
                return str2;
            }
        }
        return null;
    }

    public static final boolean zzw() {
        boolean booleanValue = ((Boolean) zzbd.zzc().zzb(zzbde.zzlQ)).booleanValue();
        if (Build.VERSION.SDK_INT >= 31) {
            String str = Build.FINGERPRINT;
            if (str.contains("generic") || str.contains("emulator")) {
                return true;
            }
            if (booleanValue && Build.HARDWARE.contains("ranchu")) {
                return true;
            }
            return false;
        }
        return Build.DEVICE.startsWith("generic");
    }

    public static final boolean zzx(Context context, int i10) {
        if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i10) == 0) {
            return true;
        }
        return false;
    }

    public static final boolean zzy(Context context) {
        int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
            return false;
        }
        return true;
    }

    public static final boolean zzz() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public final int zzb(Context context, int i10) {
        if (this.zzh < 0.0f) {
            synchronized (this) {
                try {
                    if (this.zzh < 0.0f) {
                        WindowManager windowManager = (WindowManager) context.getSystemService("window");
                        if (windowManager == null) {
                            return 0;
                        }
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        defaultDisplay.getMetrics(displayMetrics);
                        this.zzh = displayMetrics.density;
                    }
                } finally {
                }
            }
        }
        return Math.round(i10 / this.zzh);
    }

    @VisibleForTesting
    final JSONArray zzm(Object[] objArr) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : objArr) {
            zzG(jSONArray, obj);
        }
        return jSONArray;
    }

    public final JSONObject zzn(Bundle bundle) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            zzH(jSONObject, str, bundle.get(str));
        }
        return jSONObject;
    }

    public final JSONObject zzo(Map map) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            for (String str : map.keySet()) {
                zzH(jSONObject, str, map.get(str));
            }
            return jSONObject;
        } catch (ClassCastException e10) {
            throw new JSONException("Could not convert map to JSON: ".concat(String.valueOf(e10.getMessage())));
        }
    }

    public final JSONObject zzp(@Nullable Bundle bundle, JSONObject jSONObject) {
        if (bundle == null) {
            return null;
        }
        try {
            return zzn(bundle);
        } catch (JSONException e10) {
            zzo.zzh("Error converting Bundle to JSON", e10);
            return null;
        }
    }

    public final void zzq(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzr zzrVar, @Nullable String str, @Nullable String str2) {
        if (str2 != null) {
            zzo.zzj(str2);
        }
        zzI(viewGroup, zzrVar, str, SupportMenu.CATEGORY_MASK, ViewCompat.MEASURED_STATE_MASK);
    }

    public final void zzr(ViewGroup viewGroup, com.google.android.gms.ads.internal.client.zzr zzrVar, @Nullable String str) {
        zzI(viewGroup, zzrVar, "Ads by Google", ViewCompat.MEASURED_STATE_MASK, -1);
    }

    public final void zzs(final Context context, @Nullable String str, String str2, Bundle bundle, boolean z10) {
        zzB(context, str, "gmob-apps", bundle, true, new zze() { // from class: com.google.android.gms.ads.internal.util.client.zzc
            @Override // com.google.android.gms.ads.internal.util.client.zze
            public final zzt zza(String str3) {
                new zzd(zzf.this, context, str3).start();
                return zzt.SUCCESS;
            }
        });
    }
}
