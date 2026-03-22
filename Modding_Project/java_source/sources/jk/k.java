package jk;

import com.shorttv.aar.billing.bean.ProductDataType;
import com.startshorts.androidplayer.bean.subs.SubsFormattedPrice;
import com.startshorts.androidplayer.bean.subs.SubsPrice;
import com.startshorts.androidplayer.log.Logger;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import zc.e;
/* compiled from: GPProductDetailsExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class k {
    @NotNull
    public static final String a(@NotNull zc.e eVar) {
        String c10;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        e.a b10 = eVar.b();
        if (b10 == null || (c10 = b10.c()) == null) {
            return "";
        }
        return c10;
    }

    @NotNull
    public static final String b(@NotNull e.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return aVar.a();
    }

    @NotNull
    public static final String c(@NotNull zc.e eVar) {
        String b10;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        e.a b11 = eVar.b();
        if (b11 == null || (b10 = b(b11)) == null) {
            return "";
        }
        return b10;
    }

    @NotNull
    public static final String d(@NotNull zc.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        e.a b10 = eVar.b();
        if (b10 != null) {
            return String.valueOf(((float) b10.b()) / 1000000.0f);
        }
        return "";
    }

    @Nullable
    public static final SubsFormattedPrice e(@NotNull zc.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<e.b> e10 = eVar.e();
        List<e.b> list = e10;
        if (list != null && !list.isEmpty()) {
            e.b bVar = e10.get(0);
            return new SubsFormattedPrice(bVar.c().a().get(0).c(), bVar.c().a().get(0).b(), bVar.c().a().get(0).f());
        }
        return null;
    }

    @Nullable
    public static final SubsFormattedPrice f(@NotNull zc.e eVar) {
        Object obj;
        Object obj2;
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<e.b> e10 = eVar.e();
        List<e.b> list = e10;
        String str3 = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<e.b> list2 = e10;
        Iterator<T> it = list2.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((e.b) obj).a() == null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        e.b bVar = (e.b) obj;
        Iterator<T> it2 = list2.iterator();
        while (true) {
            if (it2.hasNext()) {
                obj2 = it2.next();
                if (((e.b) obj2).a() != null) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        e.b bVar2 = (e.b) obj2;
        if (bVar != null) {
            str2 = bVar.c().a().get(0).b();
            str = bVar.c().a().get(0).f();
        } else {
            Logger.f41511a.e("ProductDetails", "getSubsFormattedPrice originPrice failed -> enableOfferPlan(true) noOfferPlanDetail(null)");
            str = null;
            str2 = null;
        }
        if (bVar2 != null) {
            str3 = bVar2.c().a().get(0).b();
        } else {
            Logger.f41511a.e("ProductDetails", "getSubsFormattedPrice discountPrice failed -> enableOfferPlan(true) offerPlanDetail(null)");
        }
        if (str2 == null) {
            str2 = "";
        }
        if (str3 == null) {
            str3 = "";
        }
        if (str == null) {
            str = "";
        }
        return new SubsFormattedPrice(str2, str3, str);
    }

    @Nullable
    public static final SubsFormattedPrice g(@NotNull zc.e eVar) {
        Object obj;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<e.b> e10 = eVar.e();
        List<e.b> list = e10;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Iterator<T> it = e10.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((e.b) obj).a() == null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        e.b bVar = (e.b) obj;
        if (bVar == null) {
            return null;
        }
        return new SubsFormattedPrice(bVar.c().a().get(0).b(), "", bVar.c().a().get(0).f());
    }

    @Nullable
    public static final String h(@NotNull zc.e eVar) {
        Object obj;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<e.b> e10 = eVar.e();
        List<e.b> list = e10;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Iterator<T> it = e10.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((e.b) obj).a() == null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        e.b bVar = (e.b) obj;
        if (bVar == null) {
            return null;
        }
        return bVar.b();
    }

    @Nullable
    public static final String i(@NotNull zc.e eVar) {
        Object obj;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<e.b> e10 = eVar.e();
        List<e.b> list = e10;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Iterator<T> it = e10.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((e.b) obj).a() != null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        e.b bVar = (e.b) obj;
        if (bVar == null) {
            return null;
        }
        return bVar.b();
    }

    @Nullable
    public static final SubsPrice j(@NotNull zc.e eVar) {
        Object obj;
        Object obj2;
        String str;
        String str2;
        long j10;
        int i10;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<e.b> e10 = eVar.e();
        List<e.b> list = e10;
        String str8 = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        List<e.b> list2 = e10;
        Iterator<T> it = list2.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((e.b) obj).a() == null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        e.b bVar = (e.b) obj;
        Iterator<T> it2 = list2.iterator();
        while (true) {
            if (it2.hasNext()) {
                obj2 = it2.next();
                if (((e.b) obj2).a() != null) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        e.b bVar2 = (e.b) obj2;
        long j11 = 0;
        if (bVar != null) {
            e.b.a.C0983a c0983a = bVar.c().a().get(0);
            str = c0983a.f();
            j10 = c0983a.e();
            str2 = String.valueOf(((float) c0983a.e()) / 1000000.0f);
            i10 = c0983a.a();
        } else {
            Logger.f41511a.e("ProductDetails", "getSubsFormattedPrice originPrice failed -> enableOfferPlan(true) noOfferPlanDetail(null)");
            str = null;
            str2 = null;
            j10 = 0;
            i10 = 0;
        }
        if (bVar2 != null && eVar.a() != ProductDataType.GOOGLE_SKU) {
            if (eVar.a() == ProductDataType.HUAWEI_SKU) {
                e.b.a.C0983a c0983a2 = bVar2.c().a().get(0);
                str = c0983a2.f();
                j10 = c0983a2.d();
                str2 = String.valueOf(((float) c0983a2.d()) / 1000000.0f);
                j11 = c0983a2.e();
                str3 = String.valueOf(((float) c0983a2.e()) / 1000000.0f);
                i10 = c0983a2.a();
            } else {
                e.b.a.C0983a c0983a3 = bVar2.c().a().get(0);
                str8 = c0983a3.f();
                j11 = c0983a3.e();
                str3 = String.valueOf(((float) c0983a3.e()) / 1000000.0f);
                i10 = c0983a3.a();
            }
        } else {
            Logger.f41511a.e("ProductDetails", "getSubsFormattedPrice discountPrice failed -> enableOfferPlan(true) offerPlanDetail(null)");
            str3 = null;
        }
        int i11 = i10;
        long j12 = j10;
        String str9 = str2;
        long j13 = j11;
        if (str == null) {
            str4 = "";
        } else {
            str4 = str;
        }
        if (str9 == null) {
            str5 = "";
        } else {
            str5 = str9;
        }
        if (str8 == null) {
            str6 = "";
        } else {
            str6 = str8;
        }
        if (str3 == null) {
            str7 = "";
        } else {
            str7 = str3;
        }
        return new SubsPrice(str4, str5, j12, str6, str7, j13, i11);
    }

    @Nullable
    public static final SubsPrice k(@NotNull zc.e eVar) {
        Object obj;
        long j10;
        int i10;
        String str;
        String str2;
        String str3;
        long j11;
        String str4;
        String str5;
        String str6;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        List<e.b> e10 = eVar.e();
        List<e.b> list = e10;
        String str7 = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Iterator<T> it = e10.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((e.b) obj).a() == null) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        e.b bVar = (e.b) obj;
        if (bVar != null) {
            e.b.a.C0983a c0983a = bVar.c().a().get(0);
            str7 = c0983a.f();
            j10 = c0983a.d();
            str = String.valueOf(((float) c0983a.d()) / 1000000.0f);
            long e11 = c0983a.e();
            str2 = String.valueOf(((float) c0983a.e()) / 1000000.0f);
            str3 = c0983a.f();
            i10 = c0983a.a();
            j11 = e11;
        } else {
            Logger.f41511a.e("ProductDetails", "getSubsFormattedPrice originPrice failed -> enableOfferPlan(true) noOfferPlanDetail(null)");
            j10 = 0;
            i10 = 0;
            str = null;
            str2 = null;
            str3 = null;
            j11 = 0;
        }
        if (str7 == null) {
            str7 = "";
        }
        if (str == null) {
            str4 = "";
        } else {
            str4 = str;
        }
        if (str3 == null) {
            str5 = "";
        } else {
            str5 = str3;
        }
        if (str2 == null) {
            str6 = "";
        } else {
            str6 = str2;
        }
        return new SubsPrice(str7, str4, j10, str5, str6, j11, i10);
    }
}
