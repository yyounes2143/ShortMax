package com.facebook.appevents.iap;

import a2.i;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.OperationalDataEnum;
import com.facebook.appevents.i0;
import com.facebook.appevents.iap.InAppPurchaseUtils;
import com.facebook.internal.FeatureManager;
import com.facebook.v;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y1.k;
/* compiled from: InAppPurchaseManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class g {
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static String f15098d;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g f15095a = new g();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentHashMap<y1.a, List<Pair<Long, Pair<Bundle, i0>>>> f15096b = new ConcurrentHashMap<>();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final ConcurrentHashMap<y1.a, List<Pair<Long, Pair<Bundle, i0>>>> f15097c = new ConcurrentHashMap<>();
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicBoolean f15099e = new AtomicBoolean(false);

    /* compiled from: InAppPurchaseManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[InAppPurchaseUtils.BillingClientVersion.values().length];
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.V1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.V2_V4.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[InAppPurchaseUtils.BillingClientVersion.V5_V7.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private g() {
    }

    public static final void a() {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            if (!i.g()) {
                f.i();
                return;
            }
            f15099e.set(true);
            h();
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    private final InAppPurchaseUtils.BillingClientVersion b() {
        try {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                Context l10 = v.l();
                ApplicationInfo applicationInfo = l10.getPackageManager().getApplicationInfo(l10.getPackageName(), 128);
                Intrinsics.checkNotNullExpressionValue(applicationInfo, "context.packageManager.g…TA_DATA\n                )");
                String string = applicationInfo.metaData.getString("com.google.android.play.billingclient.version");
                if (string == null) {
                    return InAppPurchaseUtils.BillingClientVersion.NONE;
                }
                List split$default = StringsKt.split$default(string, new String[]{"."}, false, 3, 2, null);
                if (string.length() == 0) {
                    return InAppPurchaseUtils.BillingClientVersion.V5_V7;
                }
                g("GPBL." + string);
                Integer intOrNull = StringsKt.toIntOrNull((String) split$default.get(0));
                if (intOrNull != null) {
                    int intValue = intOrNull.intValue();
                    if (intValue == 1) {
                        return InAppPurchaseUtils.BillingClientVersion.V1;
                    }
                    if (intValue < 5) {
                        return InAppPurchaseUtils.BillingClientVersion.V2_V4;
                    }
                    return InAppPurchaseUtils.BillingClientVersion.V5_V7;
                }
                return InAppPurchaseUtils.BillingClientVersion.V5_V7;
            } catch (Exception unused) {
                return InAppPurchaseUtils.BillingClientVersion.V5_V7;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    public static /* synthetic */ String d(g gVar, Bundle bundle, i0 i0Var, Bundle bundle2, i0 i0Var2, boolean z10, boolean z11, int i10, Object obj) {
        boolean z12;
        if (o4.a.d(g.class)) {
            return null;
        }
        if ((i10 & 32) != 0) {
            z12 = false;
        } else {
            z12 = z11;
        }
        try {
            return gVar.c(bundle, i0Var, bundle2, i0Var2, z10, z12);
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    @Nullable
    public static final String e() {
        if (o4.a.d(g.class)) {
            return null;
        }
        try {
            return f15098d;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final synchronized Bundle f(@NotNull List<y1.a> list, long j10, boolean z10, @NotNull List<Pair<Bundle, i0>> list2) {
        List<Pair<Long, Pair<Bundle, i0>>> list3;
        List<Pair<Long, Pair<Bundle, i0>>> list4;
        y1.a aVar;
        String str;
        String str2;
        Long l10;
        boolean z11;
        List<y1.a> purchases = list;
        List<Pair<Bundle, i0>> purchaseParameters = list2;
        synchronized (g.class) {
            String str3 = null;
            if (o4.a.d(g.class)) {
                return null;
            }
            Intrinsics.checkNotNullParameter(purchases, "purchases");
            Intrinsics.checkNotNullParameter(purchaseParameters, "purchaseParameters");
            if (purchaseParameters.isEmpty()) {
                return null;
            }
            if (list.size() == list2.size()) {
                ArrayList arrayList = new ArrayList();
                int size = list.size();
                Bundle bundle = null;
                int i10 = 0;
                while (i10 < size) {
                    y1.a aVar2 = purchases.get(i10);
                    Pair<Bundle, i0> pair = purchaseParameters.get(i10);
                    Bundle b10 = pair.b();
                    i0 d10 = pair.d();
                    y1.a aVar3 = new y1.a(aVar2.c(), new BigDecimal(String.valueOf(aVar2.a())).setScale(2, RoundingMode.HALF_UP).doubleValue(), aVar2.b());
                    if (z10) {
                        list4 = f15096b.get(aVar3);
                    } else {
                        list4 = f15097c.get(aVar3);
                    }
                    List<Pair<Long, Pair<Bundle, i0>>> list5 = list4;
                    if (list5 == null || list5.isEmpty()) {
                        aVar = aVar3;
                        str = null;
                        str2 = null;
                        l10 = null;
                        z11 = false;
                    } else {
                        str = str3;
                        str2 = str;
                        Long l11 = str2;
                        z11 = false;
                        for (Pair<Long, Pair<Bundle, i0>> pair2 : list4) {
                            long longValue = pair2.e().longValue();
                            Pair<Bundle, i0> f10 = pair2.f();
                            Bundle b11 = f10.b();
                            i0 d11 = f10.d();
                            if (Math.abs(j10 - longValue) <= k.f70584a.e() && (l11 == 0 || longValue < l11.longValue())) {
                                g gVar = f15095a;
                                y1.a aVar4 = aVar3;
                                String d12 = d(gVar, b10, d10, b11, d11, !z10, false, 32, null);
                                String c10 = gVar.c(b10, d10, b11, d11, !z10, true);
                                if (c10 != null) {
                                    str = c10;
                                }
                                if (d12 != null) {
                                    Long valueOf = Long.valueOf(longValue);
                                    arrayList.add(new Pair(aVar4, Long.valueOf(longValue)));
                                    aVar3 = aVar4;
                                    str2 = d12;
                                    z11 = true;
                                    l11 = valueOf;
                                } else {
                                    aVar3 = aVar4;
                                    str2 = d12;
                                    l11 = l11;
                                }
                            }
                        }
                        aVar = aVar3;
                        l10 = l11;
                    }
                    if (str != null) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putString("fb_iap_test_dedup_result", "1");
                        bundle.putString("fb_iap_test_dedup_key_used", str);
                    }
                    if (z11) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putString("fb_iap_non_deduped_event_time", String.valueOf(l10 != null ? l10.longValue() / 1000 : 0L));
                        bundle.putString("fb_iap_actual_dedup_result", "1");
                        bundle.putString("fb_iap_actual_dedup_key_used", str2);
                    }
                    if (z10 && !z11) {
                        ConcurrentHashMap<y1.a, List<Pair<Long, Pair<Bundle, i0>>>> concurrentHashMap = f15097c;
                        if (concurrentHashMap.get(aVar) == null) {
                            concurrentHashMap.put(aVar, new ArrayList());
                        }
                        List<Pair<Long, Pair<Bundle, i0>>> list6 = concurrentHashMap.get(aVar);
                        if (list6 != null) {
                            list6.add(new Pair<>(Long.valueOf(j10), new Pair(b10, d10)));
                        }
                    } else if (!z10 && !z11) {
                        ConcurrentHashMap<y1.a, List<Pair<Long, Pair<Bundle, i0>>>> concurrentHashMap2 = f15096b;
                        if (concurrentHashMap2.get(aVar) == null) {
                            concurrentHashMap2.put(aVar, new ArrayList());
                        }
                        List<Pair<Long, Pair<Bundle, i0>>> list7 = concurrentHashMap2.get(aVar);
                        if (list7 != null) {
                            list7.add(new Pair<>(Long.valueOf(j10), new Pair(b10, d10)));
                        }
                    }
                    i10++;
                    purchases = list;
                    purchaseParameters = list2;
                    str3 = null;
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Pair pair3 = (Pair) it.next();
                    if (z10) {
                        list3 = f15096b.get(pair3.e());
                    } else {
                        list3 = f15097c.get(pair3.e());
                    }
                    if (list3 != null) {
                        Iterator<Pair<Long, Pair<Bundle, i0>>> it2 = list3.iterator();
                        int i11 = 0;
                        while (true) {
                            if (!it2.hasNext()) {
                                break;
                            }
                            int i12 = i11 + 1;
                            if (it2.next().e().longValue() == ((Number) pair3.f()).longValue()) {
                                list3.remove(i11);
                                break;
                            }
                            i11 = i12;
                        }
                        if (z10) {
                            if (list3.isEmpty()) {
                                f15096b.remove(pair3.e());
                            } else {
                                f15096b.put(pair3.e(), list3);
                            }
                        } else if (list3.isEmpty()) {
                            f15097c.remove(pair3.e());
                        } else {
                            f15097c.put(pair3.e(), list3);
                        }
                    }
                }
                return bundle;
            }
            return null;
        }
    }

    private static final void g(String str) {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            f15098d = str;
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    public static final void h() {
        if (o4.a.d(g.class)) {
            return;
        }
        try {
            if (!f15099e.get()) {
                return;
            }
            InAppPurchaseUtils.BillingClientVersion b10 = f15095a.b();
            int i10 = a.$EnumSwitchMapping$0[b10.ordinal()];
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 == 4 && FeatureManager.g(FeatureManager.Feature.IapLoggingLib5To7)) {
                        b.e(v.l(), b10);
                        return;
                    }
                    return;
                } else if (FeatureManager.g(FeatureManager.Feature.IapLoggingLib2)) {
                    b.e(v.l(), b10);
                    return;
                } else {
                    com.facebook.appevents.iap.a.g(InAppPurchaseUtils.BillingClientVersion.V2_V4);
                    return;
                }
            }
            com.facebook.appevents.iap.a.g(InAppPurchaseUtils.BillingClientVersion.V1);
        } catch (Throwable th2) {
            o4.a.b(th2, g.class);
        }
    }

    @Nullable
    public final String c(@Nullable Bundle bundle, @Nullable i0 i0Var, @Nullable Bundle bundle2, @Nullable i0 i0Var2, boolean z10, boolean z11) {
        List<Pair<String, List<String>>> d10;
        String str;
        String str2;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            if (z11) {
                d10 = k.f70584a.f(z10);
            } else {
                d10 = k.f70584a.d(z10);
            }
            if (d10 == null) {
                return null;
            }
            for (Pair<String, List<String>> pair : d10) {
                Object c10 = i0.f15019b.c(OperationalDataEnum.IAPParameters, pair.e(), bundle, i0Var);
                if (c10 instanceof String) {
                    str = (String) c10;
                } else {
                    str = null;
                }
                if (str != null && str.length() != 0) {
                    for (String str3 : pair.f()) {
                        Object c11 = i0.f15019b.c(OperationalDataEnum.IAPParameters, str3, bundle2, i0Var2);
                        if (c11 instanceof String) {
                            str2 = (String) c11;
                        } else {
                            str2 = null;
                        }
                        if (str2 != null && str2.length() != 0 && Intrinsics.areEqual(str2, str)) {
                            if (z10) {
                                return pair.e();
                            }
                            return str3;
                        }
                    }
                    continue;
                }
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }
}
