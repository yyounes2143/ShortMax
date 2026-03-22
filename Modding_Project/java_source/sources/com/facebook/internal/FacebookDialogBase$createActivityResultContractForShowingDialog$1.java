package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.contract.ActivityResultContract;
import com.facebook.FacebookException;
import com.facebook.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookDialogBase.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FacebookDialogBase$createActivityResultContractForShowingDialog$1 extends ActivityResultContract<Object, i.a> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Object f16091a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.facebook.i f16092b;

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    /* renamed from: a */
    public i.a parseResult(int i10, @Nullable Intent intent) {
        this.f16092b.getClass();
        throw null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    @NotNull
    public Intent createIntent(@NotNull Context context, Object obj) {
        Intrinsics.checkNotNullParameter(context, "context");
        f.a(null, obj, this.f16091a);
        throw new FacebookException("Content " + obj + " is not supported");
    }
}
