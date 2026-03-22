package y1;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.facebook.v;
import com.inmobi.commons.core.configs.TelemetryConfig;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InAppPurchaseEventManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class l {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final l f70589a = new l();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, Method> f70590b = new HashMap<>();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final HashMap<String, Class<?>> f70591c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private static final String f70592d = v.l().getPackageName();

    /* renamed from: e  reason: collision with root package name */
    private static final SharedPreferences f70593e = v.l().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* renamed from: f  reason: collision with root package name */
    private static final SharedPreferences f70594f = v.l().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    private l() {
    }

    @Nullable
    public static final Object a(@NotNull Context context, @Nullable IBinder iBinder) {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            return f70589a.n(context, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    public static final void b() {
        if (o4.a.d(l.class)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences = f70593e;
            long j10 = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
            if (j10 == 0) {
                sharedPreferences.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
            } else if (currentTimeMillis - j10 > TelemetryConfig.DEFAULT_EVENT_TTL_SEC) {
                sharedPreferences.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
        }
    }

    private final ArrayList<String> c(ArrayList<String> arrayList) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            ArrayList<String> arrayList2 = new ArrayList<>();
            SharedPreferences.Editor edit = f70594f.edit();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    JSONObject jSONObject = new JSONObject(next);
                    String string = jSONObject.getString(InAppPurchaseMetaData.KEY_PRODUCT_ID);
                    long j10 = jSONObject.getLong("purchaseTime");
                    String string2 = jSONObject.getString("purchaseToken");
                    if (currentTimeMillis - (j10 / 1000) <= 86400 && !Intrinsics.areEqual(f70594f.getString(string, ""), string2)) {
                        edit.putString(string, string2);
                        arrayList2.add(next);
                    }
                } catch (JSONException unused) {
                }
            }
            edit.apply();
            return arrayList2;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final Class<?> d(Context context, String str) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            HashMap<String, Class<?>> hashMap = f70591c;
            Class<?> cls = hashMap.get(str);
            if (cls != null) {
                return cls;
            }
            Class<?> b10 = InAppPurchaseUtils.b(context, str);
            if (b10 != null) {
                hashMap.put(str, b10);
            }
            return b10;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private final Method e(Class<?> cls, String str) {
        Class[] clsArr;
        Method c10;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            HashMap<String, Method> hashMap = f70590b;
            Method method = hashMap.get(str);
            if (method != null) {
                return method;
            }
            switch (str.hashCode()) {
                case -1801122596:
                    if (str.equals("getPurchases")) {
                        Class TYPE = Integer.TYPE;
                        Intrinsics.checkNotNullExpressionValue(TYPE, "TYPE");
                        clsArr = new Class[]{TYPE, String.class, String.class, String.class};
                        break;
                    }
                    clsArr = null;
                    break;
                case -1450694211:
                    if (str.equals("isBillingSupported")) {
                        Class TYPE2 = Integer.TYPE;
                        Intrinsics.checkNotNullExpressionValue(TYPE2, "TYPE");
                        clsArr = new Class[]{TYPE2, String.class, String.class};
                        break;
                    } else {
                        clsArr = null;
                        break;
                    }
                case -1123215065:
                    if (str.equals("asInterface")) {
                        clsArr = new Class[]{IBinder.class};
                        break;
                    } else {
                        clsArr = null;
                        break;
                    }
                case -594356707:
                    if (str.equals("getPurchaseHistory")) {
                        Class TYPE3 = Integer.TYPE;
                        Intrinsics.checkNotNullExpressionValue(TYPE3, "TYPE");
                        clsArr = new Class[]{TYPE3, String.class, String.class, String.class, Bundle.class};
                        break;
                    } else {
                        clsArr = null;
                        break;
                    }
                case -573310373:
                    if (str.equals("getSkuDetails")) {
                        Class TYPE4 = Integer.TYPE;
                        Intrinsics.checkNotNullExpressionValue(TYPE4, "TYPE");
                        clsArr = new Class[]{TYPE4, String.class, String.class, Bundle.class};
                        break;
                    } else {
                        clsArr = null;
                        break;
                    }
                default:
                    clsArr = null;
                    break;
            }
            if (clsArr == null) {
                c10 = InAppPurchaseUtils.c(cls, str, null);
            } else {
                c10 = InAppPurchaseUtils.c(cls, str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            }
            if (c10 != null) {
                hashMap.put(str, c10);
            }
            return c10;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final ArrayList<String> f(Context context, Object obj, String str) {
        ArrayList<String> stringArrayList;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (o(context, obj, str)) {
                int i10 = 0;
                String str2 = null;
                boolean z10 = false;
                do {
                    Object n10 = n(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, new Object[]{6, f70592d, str, str2, new Bundle()});
                    if (n10 != null) {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        Bundle bundle = (Bundle) n10;
                        if (bundle.getInt("RESPONSE_CODE") == 0 && (stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST")) != null) {
                            Iterator<String> it = stringArrayList.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                String next = it.next();
                                if (currentTimeMillis - (new JSONObject(next).getLong("purchaseTime") / 1000) > 1200) {
                                    z10 = true;
                                    break;
                                }
                                arrayList.add(next);
                                i10++;
                            }
                            str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                            if (i10 < 30 || str2 == null) {
                                break;
                                break;
                            }
                        }
                    }
                    str2 = null;
                    if (i10 < 30) {
                        break;
                    }
                } while (!z10);
            }
            return arrayList;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    public static final ArrayList<String> g(@NotNull Context context, @Nullable Object obj) {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            ArrayList<String> arrayList = new ArrayList<>();
            if (obj == null) {
                return arrayList;
            }
            l lVar = f70589a;
            Class<?> d10 = lVar.d(context, "com.android.vending.billing.IInAppBillingService");
            if (d10 == null) {
                return arrayList;
            }
            if (lVar.e(d10, "getPurchaseHistory") == null) {
                return arrayList;
            }
            return lVar.c(lVar.f(context, obj, "inapp"));
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x005a A[EDGE_INSN: B:31:0x005a->B:25:0x005a ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.ArrayList<java.lang.String> h(android.content.Context r13, java.lang.Object r14, java.lang.String r15) {
        /*
            r12 = this;
            boolean r0 = o4.a.d(r12)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L51
            r0.<init>()     // Catch: java.lang.Throwable -> L51
            if (r14 != 0) goto L10
            return r0
        L10:
            boolean r2 = r12.o(r13, r14, r15)     // Catch: java.lang.Throwable -> L51
            if (r2 == 0) goto L5a
            r2 = 0
            r3 = r1
        L18:
            r4 = 3
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L51
            java.lang.String r5 = y1.l.f70592d     // Catch: java.lang.Throwable -> L51
            java.lang.Object[] r11 = new java.lang.Object[]{r4, r5, r15, r3}     // Catch: java.lang.Throwable -> L51
            java.lang.String r8 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r9 = "getPurchases"
            r6 = r12
            r7 = r13
            r10 = r14
            java.lang.Object r3 = r6.n(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L51
            if (r3 == 0) goto L53
            android.os.Bundle r3 = (android.os.Bundle) r3     // Catch: java.lang.Throwable -> L51
            java.lang.String r4 = "RESPONSE_CODE"
            int r4 = r3.getInt(r4)     // Catch: java.lang.Throwable -> L51
            if (r4 != 0) goto L53
            java.lang.String r4 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r4 = r3.getStringArrayList(r4)     // Catch: java.lang.Throwable -> L51
            if (r4 == 0) goto L5a
            int r5 = r4.size()     // Catch: java.lang.Throwable -> L51
            int r2 = r2 + r5
            r0.addAll(r4)     // Catch: java.lang.Throwable -> L51
            java.lang.String r4 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r3 = r3.getString(r4)     // Catch: java.lang.Throwable -> L51
            goto L54
        L51:
            r13 = move-exception
            goto L5b
        L53:
            r3 = r1
        L54:
            r4 = 30
            if (r2 >= r4) goto L5a
            if (r3 != 0) goto L18
        L5a:
            return r0
        L5b:
            o4.a.b(r13, r12)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: y1.l.h(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    @NotNull
    public static final ArrayList<String> i(@NotNull Context context, @Nullable Object obj) {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            l lVar = f70589a;
            return lVar.c(lVar.h(context, obj, "inapp"));
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    @NotNull
    public static final ArrayList<String> j(@NotNull Context context, @Nullable Object obj) {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            l lVar = f70589a;
            return lVar.c(lVar.h(context, obj, "subs"));
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    @NotNull
    public static final Map<String, String> k(@NotNull Context context, @NotNull ArrayList<String> skuList, @Nullable Object obj, boolean z10) {
        if (o4.a.d(l.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(skuList, "skuList");
            Map<String, String> p10 = f70589a.p(skuList);
            ArrayList<String> arrayList = new ArrayList<>();
            Iterator<String> it = skuList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (!p10.containsKey(next)) {
                    arrayList.add(next);
                }
            }
            p10.putAll(f70589a.l(context, arrayList, obj, z10));
            return p10;
        } catch (Throwable th2) {
            o4.a.b(th2, l.class);
            return null;
        }
    }

    private final Map<String, String> l(Context context, ArrayList<String> arrayList, Object obj, boolean z10) {
        String str;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Map<String, String> linkedHashMap = new LinkedHashMap<>();
            if (obj != null && !arrayList.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
                String str2 = f70592d;
                if (z10) {
                    str = "subs";
                } else {
                    str = "inapp";
                }
                Object n10 = n(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, str2, str, bundle});
                if (n10 != null) {
                    Bundle bundle2 = (Bundle) n10;
                    if (bundle2.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                            int size = arrayList.size();
                            for (int i10 = 0; i10 < size; i10++) {
                                String str3 = arrayList.get(i10);
                                Intrinsics.checkNotNullExpressionValue(str3, "skuList[i]");
                                String str4 = stringArrayList.get(i10);
                                Intrinsics.checkNotNullExpressionValue(str4, "skuDetailsList[i]");
                                linkedHashMap.put(str3, str4);
                            }
                        }
                        q(linkedHashMap);
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final Object n(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method e10;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Class<?> d10 = d(context, str);
            if (d10 == null || (e10 = e(d10, str2)) == null) {
                return null;
            }
            return InAppPurchaseUtils.e(d10, e10, obj, Arrays.copyOf(objArr, objArr.length));
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final boolean o(Context context, Object obj, String str) {
        if (o4.a.d(this) || obj == null) {
            return false;
        }
        try {
            Object n10 = n(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f70592d, str});
            if (n10 == null) {
                return false;
            }
            if (((Integer) n10).intValue() != 0) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final Map<String, String> p(ArrayList<String> arrayList) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String sku = it.next();
                String string = f70593e.getString(sku, null);
                if (string != null) {
                    List split$default = StringsKt.split$default(string, new String[]{";"}, false, 2, 2, null);
                    if (currentTimeMillis - Long.parseLong((String) split$default.get(0)) < 43200) {
                        Intrinsics.checkNotNullExpressionValue(sku, "sku");
                        linkedHashMap.put(sku, split$default.get(1));
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final void q(Map<String, String> map) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences.Editor edit = f70593e.edit();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                edit.putString(entry.getKey(), currentTimeMillis + ';' + entry.getValue());
            }
            edit.apply();
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public final boolean m(@NotNull String skuDetail) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(skuDetail, "skuDetail");
            try {
                String optString = new JSONObject(skuDetail).optString("freeTrialPeriod");
                if (optString == null) {
                    return false;
                }
                if (optString.length() <= 0) {
                    return false;
                }
                return true;
            } catch (JSONException unused) {
                return false;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }
}
