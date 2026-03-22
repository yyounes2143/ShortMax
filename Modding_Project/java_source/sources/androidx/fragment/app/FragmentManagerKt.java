package androidx.fragment.app;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FragmentManager.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FragmentManagerKt {
    public static final void commit(@NotNull FragmentManager commit, boolean z10, @NotNull Function1<? super FragmentTransaction, Unit> body) {
        Intrinsics.checkParameterIsNotNull(commit, "$this$commit");
        Intrinsics.checkParameterIsNotNull(body, "body");
        FragmentTransaction beginTransaction = commit.beginTransaction();
        Intrinsics.checkExpressionValueIsNotNull(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static /* synthetic */ void commit$default(FragmentManager commit, boolean z10, Function1 body, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        Intrinsics.checkParameterIsNotNull(commit, "$this$commit");
        Intrinsics.checkParameterIsNotNull(body, "body");
        FragmentTransaction beginTransaction = commit.beginTransaction();
        Intrinsics.checkExpressionValueIsNotNull(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static final void commitNow(@NotNull FragmentManager commitNow, boolean z10, @NotNull Function1<? super FragmentTransaction, Unit> body) {
        Intrinsics.checkParameterIsNotNull(commitNow, "$this$commitNow");
        Intrinsics.checkParameterIsNotNull(body, "body");
        FragmentTransaction beginTransaction = commitNow.beginTransaction();
        Intrinsics.checkExpressionValueIsNotNull(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    public static /* synthetic */ void commitNow$default(FragmentManager commitNow, boolean z10, Function1 body, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        Intrinsics.checkParameterIsNotNull(commitNow, "$this$commitNow");
        Intrinsics.checkParameterIsNotNull(body, "body");
        FragmentTransaction beginTransaction = commitNow.beginTransaction();
        Intrinsics.checkExpressionValueIsNotNull(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    @ms.c
    public static final void transaction(@NotNull FragmentManager transaction, boolean z10, boolean z11, @NotNull Function1<? super FragmentTransaction, Unit> body) {
        Intrinsics.checkParameterIsNotNull(transaction, "$this$transaction");
        Intrinsics.checkParameterIsNotNull(body, "body");
        FragmentTransaction beginTransaction = transaction.beginTransaction();
        Intrinsics.checkExpressionValueIsNotNull(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            if (z11) {
                beginTransaction.commitNowAllowingStateLoss();
            } else {
                beginTransaction.commitNow();
            }
        } else if (z11) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static /* synthetic */ void transaction$default(FragmentManager transaction, boolean z10, boolean z11, Function1 body, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        Intrinsics.checkParameterIsNotNull(transaction, "$this$transaction");
        Intrinsics.checkParameterIsNotNull(body, "body");
        FragmentTransaction beginTransaction = transaction.beginTransaction();
        Intrinsics.checkExpressionValueIsNotNull(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            if (z11) {
                beginTransaction.commitNowAllowingStateLoss();
            } else {
                beginTransaction.commitNow();
            }
        } else if (z11) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }
}
