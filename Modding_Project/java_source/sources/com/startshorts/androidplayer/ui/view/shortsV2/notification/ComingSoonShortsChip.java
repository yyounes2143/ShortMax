package com.startshorts.androidplayer.ui.view.shortsV2.notification;

import ak.a;
import android.content.Context;
import android.util.AttributeSet;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonChip;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComingSoonShortsChip.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ComingSoonShortsChip extends ComingSoonChip implements a, zj.a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonShortsChip(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.ComingSoonChip
    @NotNull
    public String K() {
        return "shorts";
    }

    @Override // zj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    @Override // zj.a
    public void e(@NotNull ShortsEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.ComingSoonChip, com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_coming_soon_shorts_chip;
    }

    @Override // ak.a
    @NotNull
    public ShortsNotificationType getType() {
        return ShortsNotificationType.TRAILER_RESERVATION;
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public int v() {
        if (A()) {
            return ContextCompat.getColor(getContext(), R$color.color_common_black_30);
        }
        return ContextCompat.getColor(getContext(), R$color.color_common_white);
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public float w() {
        return z.f51786a.s();
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.BaseChip
    public int x() {
        if (A()) {
            return ContextCompat.getColor(getContext(), R$color.color_common_white);
        }
        return ContextCompat.getColor(getContext(), R$color.color_discover_fragment_2_banner_top_mask);
    }

    @Override // com.startshorts.androidplayer.ui.view.discover.ComingSoonChip, com.startshorts.androidplayer.ui.view.discover.BaseChip
    public int z() {
        if (A()) {
            return R$drawable.ic_tralier_reserved_new;
        }
        return R$drawable.ic_tralier_notification_new;
    }
}
