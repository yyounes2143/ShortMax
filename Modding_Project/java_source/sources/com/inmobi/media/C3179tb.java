package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.tb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final /* synthetic */ class C3179tb extends FunctionReferenceImpl implements Function1 {
    public C3179tb(C3195ub c3195ub) {
        super(1, c3195ub, C3195ub.class, "instantiateBillingClientV7", "instantiateBillingClientV7(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Context p02 = (Context) obj;
        Intrinsics.checkNotNullParameter(p02, "p0");
        ((C3195ub) this.receiver).getClass();
        return C3195ub.b(p02);
    }
}
