package com.startshorts.androidplayer.ui.view.immersion.notification;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import oj.a;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImmersionNextEpisodeTipView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionNextEpisodeTipView extends BaseTextView implements a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private ImmersionNotificationType f47381b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionNextEpisodeTipView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47381b = ImmersionNotificationType.CURR_EPISODE_END;
    }

    public final void d(@NotNull ImmersionNotificationType notificationType, @NotNull String text) {
        Intrinsics.checkNotNullParameter(notificationType, "notificationType");
        Intrinsics.checkNotNullParameter(text, "text");
        this.f47381b = notificationType;
        setBackgroundResource(R$drawable.bg_next_episode_tip);
        setPadding(g.a(10.0f), g.a(5.0f), g.a(10.0f), g.a(5.0f));
        setTextColor(ContextCompat.getColor(getContext(), 17170443));
        setMaxWidth((DeviceUtil.f48146a.G() - z.f51786a.d()) - g.a(80.0f));
        setTextSize(12.0f);
        setText(text);
    }

    @Override // oj.a
    @NotNull
    public ImmersionNotificationType getType() {
        return this.f47381b;
    }
}
