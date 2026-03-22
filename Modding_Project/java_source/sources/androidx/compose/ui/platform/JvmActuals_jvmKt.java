package androidx.compose.ui.platform;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JvmActuals.jvm.kt */
@Metadata
/* loaded from: classes.dex */
public final class JvmActuals_jvmKt {
    @NotNull
    public static final Object nativeClass(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "<this>");
        return obj.getClass();
    }

    @NotNull
    public static final String simpleIdentityToString(@NotNull Object obj, @Nullable String str) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        if (str == null) {
            if (obj.getClass().isAnonymousClass()) {
                str = obj.getClass().getName();
            } else {
                str = obj.getClass().getSimpleName();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append('@');
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%07x", Arrays.copyOf(new Object[]{Integer.valueOf(System.identityHashCode(obj))}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        sb2.append(format);
        return sb2.toString();
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static final <R> R m3548synchronized(@NotNull Object lock, @NotNull Function0<? extends R> block) {
        R invoke;
        Intrinsics.checkNotNullParameter(lock, "lock");
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (lock) {
            try {
                invoke = block.invoke();
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        return invoke;
    }
}
