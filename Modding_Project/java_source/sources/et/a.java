package et;

import java.text.DecimalFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DurationJvm.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDurationJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationJvm.kt\nkotlin/time/DurationJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1#2:29\n*E\n"})
/* loaded from: classes8.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f51551a = false;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<DecimalFormat>[] f51552b;

    static {
        ThreadLocal<DecimalFormat>[] threadLocalArr = new ThreadLocal[4];
        for (int i10 = 0; i10 < 4; i10++) {
            threadLocalArr[i10] = new ThreadLocal<>();
        }
        f51552b = threadLocalArr;
    }

    public static final boolean a() {
        return f51551a;
    }
}
