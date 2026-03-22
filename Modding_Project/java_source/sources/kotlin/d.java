package kotlin;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public class d {

    /* compiled from: LazyJVM.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LazyThreadSafetyMode.values().length];
            try {
                iArr[LazyThreadSafetyMode.SYNCHRONIZED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LazyThreadSafetyMode.PUBLICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LazyThreadSafetyMode.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static <T> i<T> a(@NotNull LazyThreadSafetyMode mode, @NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        int i10 = a.$EnumSwitchMapping$0[mode.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return new UnsafeLazyImpl(initializer);
                }
                throw new NoWhenBranchMatchedException();
            }
            return new SafePublicationLazyImpl(initializer);
        }
        return new SynchronizedLazyImpl(initializer, null, 2, null);
    }

    @NotNull
    public static <T> i<T> b(@NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        return new SynchronizedLazyImpl(initializer, null, 2, null);
    }
}
