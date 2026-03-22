package kotlin.coroutines.jvm.internal;

import java.lang.reflect.Field;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DebugMetadata.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDebugMetadata.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/DebugMetadataKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,134:1\n37#2:135\n36#2,3:136\n*S KotlinDebug\n*F\n+ 1 DebugMetadata.kt\nkotlin/coroutines/jvm/internal/DebugMetadataKt\n*L\n131#1:135\n131#1:136,3\n*E\n"})
/* loaded from: classes8.dex */
public final class e {
    private static final void a(int i10, int i11) {
        if (i11 <= i10) {
            return;
        }
        throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i10 + ", got " + i11 + ". Please update the Kotlin standard library.").toString());
    }

    private static final d b(BaseContinuationImpl baseContinuationImpl) {
        return (d) baseContinuationImpl.getClass().getAnnotation(d.class);
    }

    private static final int c(BaseContinuationImpl baseContinuationImpl) {
        Integer num;
        int i10;
        try {
            Field declaredField = baseContinuationImpl.getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(baseContinuationImpl);
            if (obj instanceof Integer) {
                num = (Integer) obj;
            } else {
                num = null;
            }
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            return i10 - 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    @Nullable
    public static final StackTraceElement d(@NotNull BaseContinuationImpl baseContinuationImpl) {
        int i10;
        String str;
        Intrinsics.checkNotNullParameter(baseContinuationImpl, "<this>");
        d b10 = b(baseContinuationImpl);
        if (b10 == null) {
            return null;
        }
        a(1, b10.v());
        int c10 = c(baseContinuationImpl);
        if (c10 < 0) {
            i10 = -1;
        } else {
            i10 = b10.l()[c10];
        }
        String b11 = g.f61051a.b(baseContinuationImpl);
        if (b11 == null) {
            str = b10.c();
        } else {
            str = b11 + '/' + b10.c();
        }
        return new StackTraceElement(str, b10.m(), b10.f(), i10);
    }
}
