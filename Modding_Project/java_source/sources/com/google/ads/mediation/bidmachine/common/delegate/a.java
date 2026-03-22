package com.google.ads.mediation.bidmachine.common.delegate;

import com.google.android.gms.ads.mediation.MediationAdCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f16942a;

    /* renamed from: b  reason: collision with root package name */
    private final MediationAdLoadCallback f16943b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.auction.a f16944c;

    /* renamed from: d  reason: collision with root package name */
    private MediationAdCallback f16945d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.error.a f16946e;

    /* renamed from: com.google.ads.mediation.bidmachine.common.delegate.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    /* synthetic */ class C0276a extends FunctionReferenceImpl implements Function1 {
        C0276a(Object obj) {
            super(1, obj, a.class, "onAdLoaded", "onAdLoaded(Ljava/lang/Object;)V", 0);
        }

        public final void a(Object p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((a) this.receiver).a(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a(obj);
            return Unit.f60915a;
        }
    }

    /* loaded from: classes4.dex */
    /* synthetic */ class b extends FunctionReferenceImpl implements Function1 {
        b(Object obj) {
            super(1, obj, a.class, "onAdLoadFailed", "onAdLoadFailed(Lio/bidmachine/utils/BMError;)V", 0);
        }

        public final void a(fr.a p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            ((a) this.receiver).a(p02);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((fr.a) obj);
            return Unit.f60915a;
        }
    }

    public a(String tag, MediationAdLoadCallback adLoadCallback, com.google.ads.mediation.bidmachine.common.auction.a auctionResultHandler) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        Intrinsics.checkNotNullParameter(auctionResultHandler, "auctionResultHandler");
        this.f16942a = tag;
        this.f16943b = adLoadCallback;
        this.f16944c = auctionResultHandler;
        this.f16946e = new com.google.ads.mediation.bidmachine.common.error.a(tag);
    }

    public abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(fr.a bmError) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        this.f16946e.a(bmError, this.f16943b);
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediationAdCallback b() {
        return this.f16945d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String c() {
        return this.f16942a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        this.f16946e.a(this.f16943b);
        a();
    }

    protected final void a(Object mediationAd) {
        Intrinsics.checkNotNullParameter(mediationAd, "mediationAd");
        this.f16945d = (MediationAdCallback) this.f16943b.onSuccess(mediationAd);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Object mediationAd, lp.c cVar) {
        Intrinsics.checkNotNullParameter(mediationAd, "mediationAd");
        this.f16944c.a(mediationAd, cVar, new C0276a(this), new b(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(fr.a bmError, Function1 function1) {
        Intrinsics.checkNotNullParameter(bmError, "bmError");
        this.f16946e.a(bmError, function1);
    }

    public static /* synthetic */ void a(a aVar, fr.a aVar2, Function1 function1, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onAdShowFailed");
        }
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        aVar.a(aVar2, function1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(MediationAdCallback mediationAdCallback) {
        this.f16945d = mediationAdCallback;
    }
}
