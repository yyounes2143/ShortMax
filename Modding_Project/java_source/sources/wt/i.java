package wt;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: ArrayPools.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    private static final int f70304a;

    static {
        Object d10;
        int i10;
        try {
            Result.a aVar = Result.f60901b;
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            Intrinsics.checkNotNullExpressionValue(property, "getProperty(...)");
            d10 = Result.d(StringsKt.toIntOrNull(property));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.i(d10)) {
            d10 = null;
        }
        Integer num = (Integer) d10;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 2097152;
        }
        f70304a = i10;
    }
}
