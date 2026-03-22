package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.Half;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Half.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
@SourceDebugExtension({"SMAP\nHalf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Half.kt\nandroidx/core/util/HalfKt\n*L\n1#1,60:1\n43#1:61\n*S KotlinDebug\n*F\n+ 1 Half.kt\nandroidx/core/util/HalfKt\n*L\n51#1:61\n*E\n"})
/* loaded from: classes.dex */
public final class HalfKt {
    @RequiresApi(26)
    @NotNull
    public static final Half toHalf(short s10) {
        Half valueOf;
        valueOf = Half.valueOf(s10);
        return valueOf;
    }

    @RequiresApi(26)
    @NotNull
    public static final Half toHalf(float f10) {
        Half valueOf;
        valueOf = Half.valueOf(f10);
        return valueOf;
    }

    @RequiresApi(26)
    @NotNull
    public static final Half toHalf(@NotNull String str) {
        Half valueOf;
        valueOf = Half.valueOf(str);
        return valueOf;
    }

    @RequiresApi(26)
    @NotNull
    public static final Half toHalf(double d10) {
        Half valueOf;
        valueOf = Half.valueOf((float) d10);
        return valueOf;
    }
}
