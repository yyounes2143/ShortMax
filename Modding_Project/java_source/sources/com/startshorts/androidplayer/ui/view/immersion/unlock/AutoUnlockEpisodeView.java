package com.startshorts.androidplayer.ui.view.immersion.unlock;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AutoUnlockEpisodeView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAutoUnlockEpisodeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoUnlockEpisodeView.kt\ncom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,78:1\n254#2:79\n*S KotlinDebug\n*F\n+ 1 AutoUnlockEpisodeView.kt\ncom/startshorts/androidplayer/ui/view/immersion/unlock/AutoUnlockEpisodeView\n*L\n62#1:79\n*E\n"})
/* loaded from: classes7.dex */
public final class AutoUnlockEpisodeView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47386f = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f47387b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private String f47388c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ImageView f47389d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47390e;

    /* compiled from: AutoUnlockEpisodeView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoUnlockEpisodeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47387b = true;
        this.f47388c = "";
    }

    public static /* synthetic */ void x(AutoUnlockEpisodeView autoUnlockEpisodeView, String str, Integer num, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            num = null;
        }
        autoUnlockEpisodeView.w(str, num);
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_auto_unlock_episode;
    }

    public final boolean getMAutoUnlockEpisode() {
        return this.f47387b;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "AutoUnlockEpisodeView";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47389d = (ImageView) findViewById(R$id.auto_unlock_episode_iv);
        this.f47390e = (BaseTextView) findViewById(R$id.auto_unlock_episode_tv);
    }

    public final void v() {
        String str;
        if (getVisibility() == 0) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("from", this.f47388c);
            if (this.f47387b) {
                str = "agree";
            } else {
                str = "cancel";
            }
            bundle.putString("status", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "auto_unlock", bundle, 0L, 4, null);
        }
    }

    public final void w(@NotNull String scene, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        setVisibility(8);
    }
}
