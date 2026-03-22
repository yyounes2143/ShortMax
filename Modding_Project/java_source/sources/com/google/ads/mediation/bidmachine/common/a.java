package com.google.ads.mediation.bidmachine.common;

import android.content.Context;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import io.bidmachine.AdsType;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f16931a;

    /* renamed from: b  reason: collision with root package name */
    private final AdsType f16932b;

    /* renamed from: c  reason: collision with root package name */
    private final MediationAdLoadCallback f16933c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.ads.mediation.bidmachine.common.error.a f16934d;

    /* renamed from: com.google.ads.mediation.bidmachine.common.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0275a implements b {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MediationAdConfiguration f16936b;

        C0275a(MediationAdConfiguration mediationAdConfiguration) {
            this.f16936b = mediationAdConfiguration;
        }

        @Override // com.google.ads.mediation.bidmachine.common.b
        public void a(fr.a bmError) {
            Intrinsics.checkNotNullParameter(bmError, "bmError");
            a.this.f16934d.a(bmError, a.this.a());
        }

        @Override // com.google.ads.mediation.bidmachine.common.b
        public void onSuccess(Object obj) {
            a aVar = a.this;
            Context applicationContext = this.f16936b.getContext().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            aVar.a(applicationContext, obj);
        }
    }

    public a(String tag, AdsType adsType, MediationAdLoadCallback adLoadCallback) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(adsType, "adsType");
        Intrinsics.checkNotNullParameter(adLoadCallback, "adLoadCallback");
        this.f16931a = tag;
        this.f16932b = adsType;
        this.f16933c = adLoadCallback;
        this.f16934d = new com.google.ads.mediation.bidmachine.common.error.a(tag);
    }

    protected abstract void a(Context context, Object obj);

    protected abstract void a(AdsType adsType, MediationAdConfiguration mediationAdConfiguration, b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final String b() {
        return this.f16931a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final MediationAdLoadCallback a() {
        return this.f16933c;
    }

    public final void a(MediationAdConfiguration adConfiguration) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        a(this.f16932b, adConfiguration, new C0275a(adConfiguration));
    }
}
