package qf;

import com.startshorts.androidplayer.bean.payment.SkuPaymentMethod;
import com.startshorts.androidplayer.bean.subs.SubsPrice;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jk.u;
import jk.v;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SkuDataManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSkuDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SkuDataManager.kt\ncom/startshorts/androidplayer/manager/purchase/SkuDataManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,213:1\n1971#2,14:214\n774#2:228\n865#2,2:229\n1863#2:231\n1863#2,2:232\n1864#2:234\n774#2:235\n865#2,2:236\n1863#2:238\n1863#2,2:239\n1864#2:241\n1755#2,3:242\n1755#2,3:245\n1755#2,2:248\n1755#2,3:250\n1757#2:253\n1755#2,2:254\n1755#2,3:256\n1757#2:259\n1611#2,9:260\n1863#2:269\n1864#2:271\n1620#2:272\n1#3:270\n*S KotlinDebug\n*F\n+ 1 SkuDataManager.kt\ncom/startshorts/androidplayer/manager/purchase/SkuDataManager\n*L\n23#1:214,14\n54#1:228\n54#1:229,2\n54#1:231\n84#1:232,2\n54#1:234\n117#1:235\n117#1:236,2\n117#1:238\n147#1:239,2\n117#1:241\n172#1:242,3\n182#1:245,3\n198#1:248,2\n199#1:250,3\n198#1:253\n204#1:254,2\n205#1:256,3\n204#1:259\n34#1:260,9\n34#1:269\n34#1:271\n34#1:272\n34#1:270\n*E\n"})
/* loaded from: classes6.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f65328a = new h();

    private h() {
    }

    private static final void d(SubsSku subsSku, Ref.ObjectRef<Float> objectRef, Ref.ObjectRef<String> objectRef2) {
        float payAmount;
        zc.e eVar;
        long j10;
        String originPriceText;
        SubsPrice j11;
        SubsPrice j12;
        if (subsSku.enableDiscount()) {
            payAmount = subsSku.getFirstAmount();
        } else {
            payAmount = subsSku.getPayAmount();
        }
        Object skuDetails = subsSku.getSkuDetails();
        zc.e eVar2 = null;
        if (skuDetails instanceof zc.e) {
            eVar = (zc.e) skuDetails;
        } else {
            eVar = null;
        }
        long j13 = 0;
        if (eVar != null && (j12 = jk.k.j(eVar)) != null) {
            j10 = j12.getOriginPriceAmountMicros();
        } else {
            j10 = 0;
        }
        float f10 = ((float) j10) / 1000000.0f;
        Object skuDetails2 = subsSku.getSkuDetails();
        if (skuDetails2 instanceof zc.e) {
            eVar2 = (zc.e) skuDetails2;
        }
        if (eVar2 != null && (j11 = jk.k.j(eVar2)) != null) {
            j13 = j11.getDiscountPriceAmountMicros();
        }
        float f11 = ((float) j13) / 1000000.0f;
        boolean enableDiscount = subsSku.enableDiscount();
        if (enableDiscount) {
            f10 = f11;
        }
        if (f10 > 0.0f) {
            payAmount = f10;
        }
        if (enableDiscount) {
            originPriceText = subsSku.getDiscountPriceText();
        } else {
            originPriceText = subsSku.getOriginPriceText();
        }
        e(objectRef, objectRef2, Float.valueOf(payAmount), originPriceText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void e(Ref.ObjectRef<Float> objectRef, Ref.ObjectRef<String> objectRef2, Float f10, String str) {
        if (f10 != 0) {
            if (objectRef.element != null) {
                float floatValue = f10.floatValue();
                Float f11 = objectRef.element;
                Intrinsics.checkNotNull(f11);
                if (floatValue >= f11.floatValue()) {
                    return;
                }
            }
            objectRef.element = f10;
            objectRef2.element = str;
        }
    }

    private static final void h(SubsSku subsSku, Ref.ObjectRef<Float> objectRef, Ref.ObjectRef<SubsSku> objectRef2) {
        float payAmount;
        zc.e eVar;
        long j10;
        String originPriceText;
        SubsPrice j11;
        SubsPrice j12;
        if (subsSku.enableDiscount()) {
            payAmount = subsSku.getFirstAmount();
        } else {
            payAmount = subsSku.getPayAmount();
        }
        Object skuDetails = subsSku.getSkuDetails();
        zc.e eVar2 = null;
        if (skuDetails instanceof zc.e) {
            eVar = (zc.e) skuDetails;
        } else {
            eVar = null;
        }
        long j13 = 0;
        if (eVar != null && (j12 = jk.k.j(eVar)) != null) {
            j10 = j12.getOriginPriceAmountMicros();
        } else {
            j10 = 0;
        }
        float f10 = ((float) j10) / 1000000.0f;
        Object skuDetails2 = subsSku.getSkuDetails();
        if (skuDetails2 instanceof zc.e) {
            eVar2 = (zc.e) skuDetails2;
        }
        if (eVar2 != null && (j11 = jk.k.j(eVar2)) != null) {
            j13 = j11.getDiscountPriceAmountMicros();
        }
        float f11 = ((float) j13) / 1000000.0f;
        boolean enableDiscount = subsSku.enableDiscount();
        if (enableDiscount) {
            f10 = f11;
        }
        if (f10 > 0.0f) {
            payAmount = f10;
        }
        if (enableDiscount) {
            originPriceText = subsSku.getDiscountPriceText();
        } else {
            originPriceText = subsSku.getOriginPriceText();
        }
        i(objectRef, objectRef2, subsSku, Float.valueOf(payAmount), originPriceText);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void i(Ref.ObjectRef<Float> objectRef, Ref.ObjectRef<SubsSku> objectRef2, SubsSku subsSku, Float f10, String str) {
        if (f10 != 0) {
            if (objectRef.element != null) {
                float floatValue = f10.floatValue();
                Float f11 = objectRef.element;
                Intrinsics.checkNotNull(f11);
                if (floatValue >= f11.floatValue()) {
                    return;
                }
            }
            objectRef.element = f10;
            objectRef2.element = subsSku;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(SubsSku it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.getType() == 1 || it.getType() == 5) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Iterable l(SubsSku sku) {
        Integer num;
        Collection r10;
        Intrinsics.checkNotNullParameter(sku, "sku");
        List<SkuPaymentMethod> productExtendList = sku.getProductExtendList();
        if (productExtendList != null) {
            r10 = new ArrayList();
            for (SkuPaymentMethod skuPaymentMethod : productExtendList) {
                Integer discountPercent = skuPaymentMethod.getDiscountPercent();
                if (discountPercent != null) {
                    r10.add(discountPercent);
                }
            }
        } else {
            if (sku.enableDiscount()) {
                num = Integer.valueOf(u.d(sku));
            } else {
                num = null;
            }
            r10 = CollectionsKt.r(num);
        }
        return r10;
    }

    @NotNull
    public final String c(@NotNull List<? extends SubsSku> subList) {
        Pair<String, String> pair;
        Float payAmount;
        String originPriceText;
        Intrinsics.checkNotNullParameter(subList, "subList");
        if (subList.isEmpty()) {
            return "";
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        objectRef2.element = "";
        ArrayList<SubsSku> arrayList = new ArrayList();
        for (Object obj : subList) {
            SubsSku subsSku = (SubsSku) obj;
            if (subsSku.getType() == 1 || subsSku.getType() == 5) {
                arrayList.add(obj);
            }
        }
        for (SubsSku subsSku2 : arrayList) {
            if (Intrinsics.areEqual(ae.a.f627a.d(), "huawei")) {
                d(subsSku2, objectRef, objectRef2);
            } else {
                List<SkuPaymentMethod> productExtendList = subsSku2.getProductExtendList();
                if (productExtendList != null && !productExtendList.isEmpty()) {
                    List<SkuPaymentMethod> productExtendList2 = subsSku2.getProductExtendList();
                    if (productExtendList2 != null) {
                        for (SkuPaymentMethod skuPaymentMethod : productExtendList2) {
                            Integer payType = skuPaymentMethod.getPayType();
                            int a10 = e.f65327a.a();
                            if (payType != null && payType.intValue() == a10) {
                                d(subsSku2, objectRef, objectRef2);
                            } else {
                                Boolean isFirstBuy = skuPaymentMethod.isFirstBuy();
                                Boolean bool = Boolean.TRUE;
                                if (Intrinsics.areEqual(isFirstBuy, bool)) {
                                    payAmount = skuPaymentMethod.getFirstAmount();
                                } else {
                                    payAmount = skuPaymentMethod.getPayAmount();
                                }
                                if (Intrinsics.areEqual(skuPaymentMethod.isFirstBuy(), bool)) {
                                    originPriceText = skuPaymentMethod.getDiscountPriceText();
                                } else {
                                    originPriceText = skuPaymentMethod.getOriginPriceText();
                                }
                                e(objectRef, objectRef2, payAmount, originPriceText);
                            }
                        }
                    }
                } else {
                    d(subsSku2, objectRef, objectRef2);
                }
            }
        }
        String str = (String) objectRef2.element;
        if (str != null) {
            pair = v.q(str);
        } else {
            pair = null;
        }
        String str2 = (pair == null || (str2 = pair.e()) == null) ? "$" : "$";
        T t10 = objectRef.element;
        if (t10 != 0) {
            float f10 = 0.0f;
            if (!Intrinsics.areEqual((Float) t10, 0.0f)) {
                Float f11 = (Float) objectRef.element;
                if (f11 != null) {
                    f10 = f11.floatValue();
                }
                return str2 + jk.h.a(f10 / 7);
            }
        }
        return "";
    }

    @Nullable
    public final SubsSku f(@NotNull List<? extends SubsSku> subList) {
        Object obj;
        Intrinsics.checkNotNullParameter(subList, "subList");
        Iterator<T> it = subList.iterator();
        if (!it.hasNext()) {
            obj = null;
        } else {
            Object next = it.next();
            if (!it.hasNext()) {
                obj = next;
            } else {
                int a10 = u.a((SubsSku) next);
                do {
                    Object next2 = it.next();
                    int a11 = u.a((SubsSku) next2);
                    if (a10 < a11) {
                        next = next2;
                        a10 = a11;
                    }
                } while (it.hasNext());
                obj = next;
            }
        }
        return (SubsSku) obj;
    }

    @Nullable
    public final SubsSku g(@NotNull List<? extends SubsSku> subList) {
        Float payAmount;
        String originPriceText;
        Intrinsics.checkNotNullParameter(subList, "subList");
        if (subList.isEmpty()) {
            return null;
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        ArrayList<SubsSku> arrayList = new ArrayList();
        for (Object obj : subList) {
            SubsSku subsSku = (SubsSku) obj;
            if (subsSku.getType() == 1 || subsSku.getType() == 5) {
                arrayList.add(obj);
            }
        }
        for (SubsSku subsSku2 : arrayList) {
            if (Intrinsics.areEqual(ae.a.f627a.d(), "huawei")) {
                h(subsSku2, objectRef2, objectRef);
            } else {
                List<SkuPaymentMethod> productExtendList = subsSku2.getProductExtendList();
                if (productExtendList != null && !productExtendList.isEmpty()) {
                    List<SkuPaymentMethod> productExtendList2 = subsSku2.getProductExtendList();
                    if (productExtendList2 != null) {
                        for (SkuPaymentMethod skuPaymentMethod : productExtendList2) {
                            Integer payType = skuPaymentMethod.getPayType();
                            int a10 = e.f65327a.a();
                            if (payType != null && payType.intValue() == a10) {
                                h(subsSku2, objectRef2, objectRef);
                            } else {
                                Boolean isFirstBuy = skuPaymentMethod.isFirstBuy();
                                Boolean bool = Boolean.TRUE;
                                if (Intrinsics.areEqual(isFirstBuy, bool)) {
                                    payAmount = skuPaymentMethod.getFirstAmount();
                                } else {
                                    payAmount = skuPaymentMethod.getPayAmount();
                                }
                                if (Intrinsics.areEqual(skuPaymentMethod.isFirstBuy(), bool)) {
                                    originPriceText = skuPaymentMethod.getDiscountPriceText();
                                } else {
                                    originPriceText = skuPaymentMethod.getOriginPriceText();
                                }
                                i(objectRef2, objectRef, subsSku2, payAmount, originPriceText);
                            }
                        }
                    }
                } else {
                    h(subsSku2, objectRef2, objectRef);
                }
            }
        }
        T t10 = objectRef2.element;
        if (t10 == 0 || Intrinsics.areEqual((Float) t10, 0.0f)) {
            return null;
        }
        return (SubsSku) objectRef.element;
    }

    public final int j(@NotNull List<? extends SubsSku> subList) {
        Integer num;
        Intrinsics.checkNotNullParameter(subList, "subList");
        if (subList.isEmpty() || (num = (Integer) kotlin.sequences.j.H(kotlin.sequences.j.z(kotlin.sequences.j.t(CollectionsKt.e0(subList), new Function1() { // from class: qf.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean k10;
                k10 = h.k((SubsSku) obj);
                return Boolean.valueOf(k10);
            }
        }), new Function1() { // from class: qf.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Iterable l10;
                l10 = h.l((SubsSku) obj);
                return l10;
            }
        }))) == null) {
            return 0;
        }
        return num.intValue();
    }

    public final boolean m(@Nullable SkuPaymentMethod skuPaymentMethod) {
        if (skuPaymentMethod != null) {
            Integer payType = skuPaymentMethod.getPayType();
            int a10 = e.f65327a.a();
            if (payType == null || payType.intValue() != a10) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean n(@org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.purchase.CoinSku r4) {
        /*
            r3 = this;
            ae.a r0 = ae.a.f627a
            boolean r0 = r0.j()
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            if (r4 != 0) goto Ld
            return r1
        Ld:
            java.util.List r4 = r4.getProductExtendList()
            if (r4 == 0) goto L47
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            boolean r0 = r4 instanceof java.util.Collection
            if (r0 == 0) goto L23
            r0 = r4
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L23
            goto L47
        L23:
            java.util.Iterator r4 = r4.iterator()
        L27:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L47
            java.lang.Object r0 = r4.next()
            com.startshorts.androidplayer.bean.payment.SkuPaymentMethod r0 = (com.startshorts.androidplayer.bean.payment.SkuPaymentMethod) r0
            java.lang.Integer r0 = r0.getPayType()
            qf.e r2 = qf.e.f65327a
            int r2 = r2.a()
            if (r0 != 0) goto L40
            goto L46
        L40:
            int r0 = r0.intValue()
            if (r0 == r2) goto L27
        L46:
            r1 = 1
        L47:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: qf.h.n(com.startshorts.androidplayer.bean.purchase.CoinSku):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean o(@org.jetbrains.annotations.Nullable com.startshorts.androidplayer.bean.subs.SubsSku r4) {
        /*
            r3 = this;
            ae.a r0 = ae.a.f627a
            boolean r0 = r0.j()
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            if (r4 != 0) goto Ld
            return r1
        Ld:
            java.util.List r4 = r4.getProductExtendList()
            if (r4 == 0) goto L47
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            boolean r0 = r4 instanceof java.util.Collection
            if (r0 == 0) goto L23
            r0 = r4
            java.util.Collection r0 = (java.util.Collection) r0
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L23
            goto L47
        L23:
            java.util.Iterator r4 = r4.iterator()
        L27:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L47
            java.lang.Object r0 = r4.next()
            com.startshorts.androidplayer.bean.payment.SkuPaymentMethod r0 = (com.startshorts.androidplayer.bean.payment.SkuPaymentMethod) r0
            java.lang.Integer r0 = r0.getPayType()
            qf.e r2 = qf.e.f65327a
            int r2 = r2.a()
            if (r0 != 0) goto L40
            goto L46
        L40:
            int r0 = r0.intValue()
            if (r0 == r2) goto L27
        L46:
            r1 = 1
        L47:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: qf.h.o(com.startshorts.androidplayer.bean.subs.SubsSku):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p(@org.jetbrains.annotations.Nullable java.util.List<? extends com.startshorts.androidplayer.bean.subs.SubsSku> r6, @org.jetbrains.annotations.Nullable java.util.List<? extends com.startshorts.androidplayer.bean.purchase.CoinSku> r7) {
        /*
            r5 = this;
            ae.a r0 = ae.a.f627a
            boolean r0 = r0.j()
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            r0 = r6
            java.util.Collection r0 = (java.util.Collection) r0
            if (r0 == 0) goto L15
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L22
        L15:
            r0 = r7
            java.util.Collection r0 = (java.util.Collection) r0
            if (r0 == 0) goto Le4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L22
            goto Le4
        L22:
            r0 = 1
            if (r6 == 0) goto L80
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            boolean r2 = r6 instanceof java.util.Collection
            if (r2 == 0) goto L35
            r2 = r6
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L35
            goto L80
        L35:
            java.util.Iterator r6 = r6.iterator()
        L39:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L80
            java.lang.Object r2 = r6.next()
            com.startshorts.androidplayer.bean.subs.SubsSku r2 = (com.startshorts.androidplayer.bean.subs.SubsSku) r2
            java.util.List r2 = r2.getProductExtendList()
            if (r2 == 0) goto L39
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            boolean r3 = r2 instanceof java.util.Collection
            if (r3 == 0) goto L5b
            r3 = r2
            java.util.Collection r3 = (java.util.Collection) r3
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L5b
            goto L39
        L5b:
            java.util.Iterator r2 = r2.iterator()
        L5f:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L39
            java.lang.Object r3 = r2.next()
            com.startshorts.androidplayer.bean.payment.SkuPaymentMethod r3 = (com.startshorts.androidplayer.bean.payment.SkuPaymentMethod) r3
            java.lang.Integer r3 = r3.getPayType()
            qf.e r4 = qf.e.f65327a
            int r4 = r4.a()
            if (r3 != 0) goto L78
            goto L7e
        L78:
            int r3 = r3.intValue()
            if (r3 == r4) goto L5f
        L7e:
            r6 = r0
            goto L81
        L80:
            r6 = r1
        L81:
            if (r7 == 0) goto Lde
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            boolean r2 = r7 instanceof java.util.Collection
            if (r2 == 0) goto L93
            r2 = r7
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L93
            goto Lde
        L93:
            java.util.Iterator r7 = r7.iterator()
        L97:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto Lde
            java.lang.Object r2 = r7.next()
            com.startshorts.androidplayer.bean.purchase.CoinSku r2 = (com.startshorts.androidplayer.bean.purchase.CoinSku) r2
            java.util.List r2 = r2.getProductExtendList()
            if (r2 == 0) goto L97
            java.lang.Iterable r2 = (java.lang.Iterable) r2
            boolean r3 = r2 instanceof java.util.Collection
            if (r3 == 0) goto Lb9
            r3 = r2
            java.util.Collection r3 = (java.util.Collection) r3
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto Lb9
            goto L97
        Lb9:
            java.util.Iterator r2 = r2.iterator()
        Lbd:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L97
            java.lang.Object r3 = r2.next()
            com.startshorts.androidplayer.bean.payment.SkuPaymentMethod r3 = (com.startshorts.androidplayer.bean.payment.SkuPaymentMethod) r3
            java.lang.Integer r3 = r3.getPayType()
            qf.e r4 = qf.e.f65327a
            int r4 = r4.a()
            if (r3 != 0) goto Ld6
            goto Ldc
        Ld6:
            int r3 = r3.intValue()
            if (r3 == r4) goto Lbd
        Ldc:
            r7 = r0
            goto Ldf
        Lde:
            r7 = r1
        Ldf:
            if (r6 != 0) goto Le3
            if (r7 == 0) goto Le4
        Le3:
            r1 = r0
        Le4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: qf.h.p(java.util.List, java.util.List):boolean");
    }
}
