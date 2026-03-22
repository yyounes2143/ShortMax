package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.immersion.notification.ImmersionNotificationType;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import oj.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComingSoonImmersionChip.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ComingSoonImmersionChip extends ComingSoonChip implements a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonImmersionChip(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.ComingSoonChip
    @NotNull
    public String K() {
        return "watch_trailer";
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.ComingSoonChip, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coming_soon_immersion_chip;
    }

    @Override // oj.a
    @NotNull
    public ImmersionNotificationType getType() {
        return ImmersionNotificationType.TRAILER_RESERVATION;
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public int v() {
        return ContextCompat.getColor(getContext(), R$color.color_immersion_activity_bg_remind_me);
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public float w() {
        return z.f51786a.g();
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public int x() {
        return ContextCompat.getColor(getContext(), 17170443);
    }
}
