package androidx.fragment.app;

import android.os.Bundle;
import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FragmentTransaction.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FragmentTransactionKt {
    @NotNull
    public static final /* synthetic */ <F extends Fragment> FragmentTransaction add(@NotNull FragmentTransaction add, @IdRes int i10, @Nullable String str, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(add, "$this$add");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(i10, Fragment.class, bundle, str);
        Intrinsics.checkExpressionValueIsNotNull(add2, "add(containerViewId, F::class.java, args, tag)");
        return add2;
    }

    public static /* synthetic */ FragmentTransaction add$default(FragmentTransaction add, int i10, String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            bundle = null;
        }
        Intrinsics.checkParameterIsNotNull(add, "$this$add");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(i10, Fragment.class, bundle, str);
        Intrinsics.checkExpressionValueIsNotNull(add2, "add(containerViewId, F::class.java, args, tag)");
        return add2;
    }

    @NotNull
    public static final /* synthetic */ <F extends Fragment> FragmentTransaction replace(@NotNull FragmentTransaction replace, @IdRes int i10, @Nullable String str, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(replace, "$this$replace");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction replace2 = replace.replace(i10, Fragment.class, bundle, str);
        Intrinsics.checkExpressionValueIsNotNull(replace2, "replace(containerViewId, F::class.java, args, tag)");
        return replace2;
    }

    public static /* synthetic */ FragmentTransaction replace$default(FragmentTransaction replace, int i10, String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            bundle = null;
        }
        Intrinsics.checkParameterIsNotNull(replace, "$this$replace");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction replace2 = replace.replace(i10, Fragment.class, bundle, str);
        Intrinsics.checkExpressionValueIsNotNull(replace2, "replace(containerViewId, F::class.java, args, tag)");
        return replace2;
    }

    @NotNull
    public static final /* synthetic */ <F extends Fragment> FragmentTransaction add(@NotNull FragmentTransaction add, @NotNull String tag, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(add, "$this$add");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(Fragment.class, bundle, tag);
        Intrinsics.checkExpressionValueIsNotNull(add2, "add(F::class.java, args, tag)");
        return add2;
    }

    public static /* synthetic */ FragmentTransaction add$default(FragmentTransaction add, String tag, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        Intrinsics.checkParameterIsNotNull(add, "$this$add");
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction add2 = add.add(Fragment.class, bundle, tag);
        Intrinsics.checkExpressionValueIsNotNull(add2, "add(F::class.java, args, tag)");
        return add2;
    }
}
