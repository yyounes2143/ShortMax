package ek;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProgressAdjustToast.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d extends c {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // ek.c
    @NotNull
    public View a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        View inflate = LayoutInflater.from(context).inflate(R$layout.view_toast_progress_adjust, (ViewGroup) null, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        return inflate;
    }

    @Override // ek.c
    public int b() {
        return 0;
    }

    @Override // ek.c
    public int c() {
        return 17;
    }
}
