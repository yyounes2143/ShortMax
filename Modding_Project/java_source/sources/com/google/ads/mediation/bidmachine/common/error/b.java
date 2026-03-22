package com.google.ads.mediation.bidmachine.common.error;

import com.google.android.gms.ads.AdError;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f16959a = new b();

    private b() {
    }

    public static final AdError a(fr.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        return new AdError(f16959a.b(aVar), aVar.g(), "com.google.ads.mediation.bidmachine");
    }

    private final int b(fr.a aVar) {
        int e10 = aVar.e();
        if (e10 != 109) {
            if (e10 != 110) {
                switch (e10) {
                    case 100:
                    case 102:
                        break;
                    case 101:
                        break;
                    case 103:
                        return 3;
                    default:
                        return 0;
                }
            }
            return 1;
        }
        return 2;
    }
}
