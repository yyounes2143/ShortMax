package mt;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StackTraceRecovery.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1790#2,6:211\n12567#2,2:221\n1682#2,6:223\n12567#2,2:229\n1682#2,6:232\n37#3:217\n36#3,3:218\n1#4:231\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n39#1:211,6\n127#1:221,2\n137#1:223,6\n169#1:229,2\n190#1:232,6\n102#1:217\n102#1:218,3\n*E\n"})
/* loaded from: classes8.dex */
public final class z {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final StackTraceElement f62710a = new a.a().a();

    /* renamed from: b  reason: collision with root package name */
    private static final String f62711b;

    /* renamed from: c  reason: collision with root package name */
    private static final String f62712c;

    static {
        Object d10;
        Object d11;
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.g(d10) != null) {
            d10 = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f62711b = (String) d10;
        try {
            d11 = Result.d(z.class.getCanonicalName());
        } catch (Throwable th3) {
            Result.a aVar3 = Result.f60901b;
            d11 = Result.d(kotlin.f.a(th3));
        }
        if (Result.g(d11) != null) {
            d11 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f62712c = (String) d11;
    }

    @NotNull
    public static final <E extends Throwable> E a(@NotNull E e10) {
        return e10;
    }
}
