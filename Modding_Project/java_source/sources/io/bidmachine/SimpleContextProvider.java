package io.bidmachine;

import android.app.Activity;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SimpleContextProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public final class SimpleContextProvider implements ContextProvider {
    @NotNull
    private final Context applicationContext;

    public SimpleContextProvider(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.applicationContext = applicationContext;
    }

    @Override // io.bidmachine.ContextProvider
    @Nullable
    public Activity getActivity() {
        return n1.a();
    }

    @Override // io.bidmachine.ContextProvider
    @NotNull
    public Context getApplicationContext() {
        return this.applicationContext;
    }

    @Override // io.bidmachine.ContextProvider
    @NotNull
    public Context getContext() {
        return this.applicationContext;
    }
}
