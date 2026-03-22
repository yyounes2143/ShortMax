package com.startshorts.androidplayer.utils;

import com.startshorts.androidplayer.log.Logger;
import fk.w;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: BillingUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BillingUtil {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final BillingUtil f48070a = new BillingUtil();

    private BillingUtil() {
    }

    public final void a() {
        CoroutineUtil.l(CoroutineUtil.f48072a, "preNormalCoinSkuList", false, new BillingUtil$preNormalCoinSkuList$1(null), 2, null);
    }

    @NotNull
    public final String b(long j10, float f10, @NotNull String formattedPrice) {
        Intrinsics.checkNotNullParameter(formattedPrice, "formattedPrice");
        float f11 = (((float) j10) / 1000000.0f) / f10;
        try {
            List split$default = StringsKt.split$default(formattedPrice, new String[]{""}, false, 0, 6, null);
            int size = split$default.size();
            int i10 = 0;
            while (true) {
                if (i10 < size) {
                    if (new Regex("-?\\d+(\\.\\d+)?").k((CharSequence) split$default.get(i10))) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 > 0) {
                StringBuilder sb2 = new StringBuilder();
                String substring = formattedPrice.substring(0, i10 - 1);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                sb2.append(substring);
                sb2.append(w.f51779a.b(f11, 2));
                return sb2.toString();
            }
        } catch (Exception e10) {
            Logger.f41511a.e("BillingUtil", "tryGetOriginalPrice exception -> " + e10.getMessage());
        }
        return "";
    }
}
