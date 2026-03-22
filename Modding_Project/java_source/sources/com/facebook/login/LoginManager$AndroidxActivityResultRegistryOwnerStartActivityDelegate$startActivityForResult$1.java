package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import androidx.activity.result.contract.ActivityResultContract;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$1 extends ActivityResultContract<Intent, Pair<Integer, Intent>> {
    LoginManager$AndroidxActivityResultRegistryOwnerStartActivityDelegate$startActivityForResult$1() {
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    /* renamed from: a */
    public Pair<Integer, Intent> parseResult(int i10, @Nullable Intent intent) {
        Pair<Integer, Intent> create = Pair.create(Integer.valueOf(i10), intent);
        Intrinsics.checkNotNullExpressionValue(create, "create(resultCode, intent)");
        return create;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public Intent createIntent(@NotNull Context context, @NotNull Intent input) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(input, "input");
        return input;
    }
}
