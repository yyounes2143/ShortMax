package ek;

import android.content.Context;
import android.view.View;
import android.widget.Toast;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CustomToast.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class c extends Toast {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        setView(a(context));
        setGravity(c(), 0, 0);
        setDuration(b());
    }

    @NotNull
    public abstract View a(@NotNull Context context);

    public abstract int b();

    public abstract int c();
}
