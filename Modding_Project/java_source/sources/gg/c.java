package gg;

import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.SubsPrice;
import com.startshorts.androidplayer.log.Logger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BillingLocalDS.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBillingLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/BillingLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1863#2:151\n1863#2,2:152\n1864#2:154\n360#2,7:155\n*S KotlinDebug\n*F\n+ 1 BillingLocalDS.kt\ncom/startshorts/androidplayer/repo/billing/BillingLocalDS\n*L\n27#1:151\n28#1:152,2\n27#1:154\n37#1:155,7\n*E\n"})
/* loaded from: classes7.dex */
public final class c {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f52348b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ms.i f52349a = kotlin.c.b(new Function0() { // from class: gg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List g10;
            g10 = c.g();
            return g10;
        }
    });

    /* compiled from: BillingLocalDS.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void b(Object obj) {
        boolean z10;
        List<Object> d10 = d();
        Intrinsics.checkNotNullExpressionValue(d10, "<get-mProductDetails>(...)");
        synchronized (d10) {
            try {
                List<Object> d11 = d();
                Intrinsics.checkNotNullExpressionValue(d11, "<get-mProductDetails>(...)");
                Iterator<Object> it = d11.iterator();
                int i10 = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        if ((obj instanceof zc.e) && (next instanceof zc.e)) {
                            z10 = Intrinsics.areEqual(((zc.e) next).d(), ((zc.e) obj).d());
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            break;
                        }
                        i10++;
                    } else {
                        i10 = -1;
                        break;
                    }
                }
                if (i10 == -1) {
                    d().add(obj);
                } else {
                    d().set(i10, obj);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final List<Object> d() {
        return (List) this.f52349a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List g() {
        return Collections.synchronizedList(new ArrayList());
    }

    public final void c(@NotNull List<zc.h> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        for (zc.h hVar : list) {
            List<Object> a10 = hVar.a();
            if (a10 != null) {
                for (Object obj : a10) {
                    b(obj);
                }
            }
        }
    }

    @NotNull
    public final GPayPriceInfo e(@NotNull String gpSkuId) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        String str = "";
        String str2 = "";
        try {
            List<Object> d10 = d();
            if (d10 != null && !d10.isEmpty()) {
                List<Object> d11 = d();
                Intrinsics.checkNotNullExpressionValue(d11, "<get-mProductDetails>(...)");
                synchronized (d11) {
                    Iterator<Object> it = d().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if ((next instanceof zc.e) && Intrinsics.areEqual(((zc.e) next).d(), gpSkuId)) {
                            str = jk.k.d((zc.e) next);
                            str2 = jk.k.a((zc.e) next);
                            break;
                        }
                    }
                    Unit unit = Unit.f60915a;
                }
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BillingLocalDS", "getPriceInfoForInAppPurchase(" + gpSkuId + ") exception -> " + e10.getMessage());
        }
        return new GPayPriceInfo(str2, str, null, 4, null);
    }

    @NotNull
    public final GPayPriceInfo f(@NotNull String gpSkuId, boolean z10) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        String str = "";
        String str2 = "";
        try {
            List<Object> d10 = d();
            if (d10 != null && !d10.isEmpty()) {
                List<Object> d11 = d();
                Intrinsics.checkNotNullExpressionValue(d11, "<get-mProductDetails>(...)");
                synchronized (d11) {
                    Iterator<Object> it = d().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = it.next();
                        if ((next instanceof zc.e) && Intrinsics.areEqual(((zc.e) next).d(), gpSkuId)) {
                            SubsPrice j10 = jk.k.j((zc.e) next);
                            if (j10 != null) {
                                if (z10) {
                                    str = j10.getDiscountPrice();
                                    str2 = j10.getDiscountCurrencyCode();
                                } else {
                                    str = j10.getOriginPrice();
                                    str2 = j10.getOriginCurrencyCode();
                                }
                            }
                        }
                    }
                    Unit unit = Unit.f60915a;
                }
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BillingLocalDS", "getPriceInfo(" + gpSkuId + ") exception -> " + e10.getMessage());
        }
        return new GPayPriceInfo(str2, str, null, 4, null);
    }
}
