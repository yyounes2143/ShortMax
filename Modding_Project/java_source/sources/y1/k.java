package y1;

import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.OperationalDataEnum;
import com.facebook.appevents.i0;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.p;
import com.facebook.v;
import java.util.ArrayList;
import java.util.Currency;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InAppPurchaseDedupeConfig.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final k f70584a = new k();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f70585b = CollectionsKt.e("fb_currency");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f70586c = CollectionsKt.e("_valueToSum");

    /* renamed from: d  reason: collision with root package name */
    private static final long f70587d = TimeUnit.MINUTES.toMillis(1);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final List<Pair<String, List<String>>> f70588e = CollectionsKt.q(ms.k.a("fb_iap_product_id", CollectionsKt.e("fb_iap_product_id")), ms.k.a("fb_iap_product_description", CollectionsKt.e("fb_iap_product_description")), ms.k.a("fb_iap_product_title", CollectionsKt.e("fb_iap_product_title")), ms.k.a("fb_iap_purchase_token", CollectionsKt.e("fb_iap_purchase_token")));

    private k() {
    }

    @NotNull
    public final Pair<Bundle, i0> a(@Nullable Bundle bundle, @Nullable Bundle bundle2, @Nullable i0 i0Var) {
        if (bundle == null) {
            return new Pair<>(bundle2, i0Var);
        }
        try {
            for (String key : bundle.keySet()) {
                String string = bundle.getString(key);
                if (string != null) {
                    i0.a aVar = i0.f15019b;
                    OperationalDataEnum operationalDataEnum = OperationalDataEnum.IAPParameters;
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    Pair<Bundle, i0> b10 = aVar.b(operationalDataEnum, key, string, bundle2, i0Var);
                    Bundle b11 = b10.b();
                    i0Var = b10.d();
                    bundle2 = b11;
                }
            }
        } catch (Exception unused) {
        }
        return new Pair<>(bundle2, i0Var);
    }

    @Nullable
    public final Currency b(@Nullable Bundle bundle) {
        Iterator<String> it = c().iterator();
        while (true) {
            String str = null;
            if (!it.hasNext()) {
                return null;
            }
            String next = it.next();
            if (bundle != null) {
                try {
                    str = bundle.getString(next);
                } catch (Exception unused) {
                    continue;
                }
            }
            if (str != null && str.length() != 0) {
                return Currency.getInstance(str);
            }
        }
    }

    @NotNull
    public final List<String> c() {
        List<String> list;
        p f10 = FetchedAppSettingsManager.f(v.m());
        if (f10 != null) {
            list = f10.e();
        } else {
            list = null;
        }
        if (list != null && !f10.e().isEmpty()) {
            return f10.e();
        }
        return f70585b;
    }

    @NotNull
    public final List<Pair<String, List<String>>> d(boolean z10) {
        List<Pair<String, List<String>>> list;
        p f10 = FetchedAppSettingsManager.f(v.m());
        if (f10 != null) {
            list = f10.m();
        } else {
            list = null;
        }
        if (list != null && !f10.m().isEmpty()) {
            if (!z10) {
                return f10.m();
            }
            ArrayList arrayList = new ArrayList();
            for (Pair<String, List<String>> pair : f10.m()) {
                for (String str : pair.f()) {
                    arrayList.add(new Pair(str, CollectionsKt.e(pair.e())));
                }
            }
            return arrayList;
        }
        return f70588e;
    }

    public final long e() {
        Long l10;
        Long f10;
        p f11 = FetchedAppSettingsManager.f(v.m());
        if (f11 != null) {
            l10 = f11.f();
        } else {
            l10 = null;
        }
        if (l10 != null && ((f10 = f11.f()) == null || f10.longValue() != 0)) {
            return f11.f().longValue();
        }
        return f70587d;
    }

    @Nullable
    public final List<Pair<String, List<String>>> f(boolean z10) {
        List<Pair<String, List<String>>> y10;
        p f10 = FetchedAppSettingsManager.f(v.m());
        if (f10 == null || (y10 = f10.y()) == null || y10.isEmpty()) {
            return null;
        }
        if (!z10) {
            return f10.y();
        }
        ArrayList arrayList = new ArrayList();
        for (Pair<String, List<String>> pair : f10.y()) {
            for (String str : pair.f()) {
                arrayList.add(new Pair(str, CollectionsKt.e(pair.e())));
            }
        }
        return arrayList;
    }

    @Nullable
    public final Double g(@Nullable Double d10, @Nullable Bundle bundle) {
        if (d10 != null) {
            return d10;
        }
        Iterator<String> it = h().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (bundle != null) {
                try {
                    return Double.valueOf(bundle.getDouble(next));
                } catch (Exception unused) {
                    continue;
                }
            }
        }
        return null;
    }

    @NotNull
    public final List<String> h() {
        List<String> list;
        p f10 = FetchedAppSettingsManager.f(v.m());
        if (f10 != null) {
            list = f10.o();
        } else {
            list = null;
        }
        if (list != null && !f10.o().isEmpty()) {
            return f10.o();
        }
        return f70586c;
    }
}
