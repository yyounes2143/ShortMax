package com.google.ads.mediation.bidmachine.common;

import java.text.NumberFormat;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final a f16957a = new a(null);

    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public final String a(double d10) {
        NumberFormat numberFormat = NumberFormat.getInstance(Locale.US);
        numberFormat.setMinimumFractionDigits(2);
        numberFormat.setMaximumFractionDigits(2);
        return "bm_pf:" + numberFormat.format(d10);
    }
}
