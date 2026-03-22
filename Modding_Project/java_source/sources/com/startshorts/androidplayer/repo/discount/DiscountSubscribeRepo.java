package com.startshorts.androidplayer.repo.discount;

import com.startshorts.androidplayer.repo.discount.DiscountSubscribeRemoteDS;
import com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscountSubscribeRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DiscountSubscribeRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final DiscountSubscribeRepo f43891a = new DiscountSubscribeRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43892b = c.b(new Function0() { // from class: ug.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DiscountSubscribeRemoteDS d10;
            d10 = DiscountSubscribeRepo.d();
            return d10;
        }
    });

    private DiscountSubscribeRepo() {
    }

    private final DiscountSubscribeRemoteDS c() {
        return (DiscountSubscribeRemoteDS) f43892b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiscountSubscribeRemoteDS d() {
        return new DiscountSubscribeRemoteDS();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.discount.BestSubscriptionDiscountInfo>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$findBestSubscribeDiscount$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$findBestSubscribeDiscount$1 r0 = (com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$findBestSubscribeDiscount$1) r0
            int r1 = r0.f43895j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43895j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$findBestSubscribeDiscount$1 r0 = new com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$findBestSubscribeDiscount$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43893h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43895j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.discount.DiscountSubscribeRemoteDS r5 = r4.c()
            r0.f43895j = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo.b(rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.discount.DiscountSubscribeInfo>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$queryDiscountSubscribe$1
            if (r0 == 0) goto L13
            r0 = r5
            com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$queryDiscountSubscribe$1 r0 = (com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$queryDiscountSubscribe$1) r0
            int r1 = r0.f43898j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f43898j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$queryDiscountSubscribe$1 r0 = new com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo$queryDiscountSubscribe$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f43896h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f43898j
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.f.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r5 = r5.n()
            goto L47
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.f.b(r5)
            com.startshorts.androidplayer.repo.discount.DiscountSubscribeRemoteDS r5 = r4.c()
            r0.f43898j = r3
            java.lang.Object r5 = r5.b(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.discount.DiscountSubscribeRepo.e(rs.c):java.lang.Object");
    }
}
