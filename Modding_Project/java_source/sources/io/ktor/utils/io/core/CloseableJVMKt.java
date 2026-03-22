package io.ktor.utils.io.core;

import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CloseableJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CloseableJVMKt {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final i f59508a = c.b(new Function0<Method>() { // from class: io.ktor.utils.io.core.CloseableJVMKt$AddSuppressedMethod$2
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        /* renamed from: b */
        public final Method invoke() {
            try {
                return Throwable.class.getMethod("addSuppressed", Throwable.class);
            } catch (Throwable unused) {
                return null;
            }
        }
    });

    public static final void a(@NotNull Throwable th2, @NotNull Throwable other) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Method b10 = b();
        if (b10 != null) {
            b10.invoke(th2, other);
        }
    }

    private static final Method b() {
        return (Method) f59508a.getValue();
    }
}
