package ek;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdRewardToast.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f51348a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @NotNull String message) {
        super(context);
        TextView textView;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(message, "message");
        this.f51348a = message;
        View view = getView();
        if (view != null) {
            textView = (TextView) view.findViewById(R$id.bonus_tv);
        } else {
            textView = null;
        }
        if (textView != null) {
            textView.setText(message);
        }
    }

    @Override // ek.c
    @NotNull
    public View a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        View inflate = LayoutInflater.from(context).inflate(R$layout.view_toast_ad_reward, (ViewGroup) null, true);
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
