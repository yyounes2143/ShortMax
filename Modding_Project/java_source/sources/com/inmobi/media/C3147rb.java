package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.rb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final /* synthetic */ class C3147rb extends FunctionReferenceImpl implements Function1 {
    public C3147rb(C3195ub c3195ub) {
        super(1, c3195ub, C3195ub.class, "instantiateBillingClientV6", "instantiateBillingClientV6(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Context p02 = (Context) obj;
        Intrinsics.checkNotNullParameter(p02, "p0");
        ((C3195ub) this.receiver).getClass();
        return C3195ub.a(p02);
    }
}
