package com.startshorts.androidplayer.ui.view.discover;

import android.content.Context;
import android.util.AttributeSet;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.immersion.notification.ImmersionNotificationType;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import oj.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CollectTipsImmersionView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CollectTipsImmersionView extends BaseConstraintLayout implements a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CollectTipsImmersionView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_collect_tips;
    }

    @Override // oj.a
    @NotNull
    public ImmersionNotificationType getType() {
        return ImmersionNotificationType.SHORTS_COLLECTION;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        setBackgroundResource(R$drawable.bg_immersion_collect_tips);
        z zVar = z.f51786a;
        setPadding(0, zVar.m(), 0, zVar.m());
    }
}
