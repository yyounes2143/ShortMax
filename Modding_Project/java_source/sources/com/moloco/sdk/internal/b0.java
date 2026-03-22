package com.moloco.sdk.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class b0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f32020a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.z
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b0.b();
        }
    });

    public static final Unit a(kotlinx.serialization.json.c Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.g(true);
        Json.f(true);
        return Unit.f60915a;
    }

    public static final kotlinx.serialization.json.a b() {
        return kotlinx.serialization.json.s.b(null, new Function1() { // from class: com.moloco.sdk.internal.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b0.a((kotlinx.serialization.json.c) obj);
            }
        }, 1, null);
    }

    @NotNull
    public static final kotlinx.serialization.json.a c() {
        return d();
    }

    public static final kotlinx.serialization.json.a d() {
        return (kotlinx.serialization.json.a) f32020a.getValue();
    }
}
