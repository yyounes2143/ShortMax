package com.startshorts.androidplayer.ui.view.immersion.unlock;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.unlock.RetentionAutoUnlockEpisodeView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RetentionAutoUnlockEpisodeView.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRetentionAutoUnlockEpisodeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetentionAutoUnlockEpisodeView.kt\ncom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,72:1\n256#2,2:73\n254#2:75\n*S KotlinDebug\n*F\n+ 1 RetentionAutoUnlockEpisodeView.kt\ncom/startshorts/androidplayer/ui/view/immersion/unlock/RetentionAutoUnlockEpisodeView\n*L\n42#1:73,2\n56#1:75\n*E\n"})
/* loaded from: classes7.dex */
public final class RetentionAutoUnlockEpisodeView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47423f = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f47424b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private String f47425c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private ImageView f47426d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private BaseTextView f47427e;

    /* compiled from: RetentionAutoUnlockEpisodeView.kt */
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
    public RetentionAutoUnlockEpisodeView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47424b = true;
        this.f47425c = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(RetentionAutoUnlockEpisodeView retentionAutoUnlockEpisodeView, View view) {
        int i10;
        boolean z10 = retentionAutoUnlockEpisodeView.f47424b;
        retentionAutoUnlockEpisodeView.f47424b = !z10;
        ImageView imageView = retentionAutoUnlockEpisodeView.f47426d;
        if (imageView != null) {
            if (!z10) {
                i10 = R$drawable.ic_auto_unlock_episode_gray;
            } else {
                i10 = R$drawable.ic_auto_unlock_episode_off;
            }
            imageView.setImageResource(i10);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_retention_auto_unlock_episode;
    }

    public final boolean getMAutoUnlockEpisode() {
        return this.f47424b;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "RetentionAutoUnlockEpisodeView";
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47426d = (ImageView) findViewById(R$id.auto_unlock_episode_iv);
        this.f47427e = (BaseTextView) findViewById(R$id.auto_unlock_episode_tv);
    }

    public final void w() {
        String str;
        if (getVisibility() == 0) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("from", this.f47425c);
            if (this.f47424b) {
                str = "agree";
            } else {
                str = "cancel";
            }
            bundle.putString("status", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "auto_unlock", bundle, 0L, 4, null);
        }
    }

    public final void x(@NotNull String scene, @Nullable Integer num) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f47425c = scene;
        if (!AccountRepo.f43052a.P()) {
            setVisibility(0);
            this.f47424b = true;
            setOnClickListener(new View.OnClickListener() { // from class: pj.d
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RetentionAutoUnlockEpisodeView.y(RetentionAutoUnlockEpisodeView.this, view);
                }
            });
            if (num != null) {
                int color = ContextCompat.getColor(getContext(), num.intValue());
                BaseTextView baseTextView = this.f47427e;
                if (baseTextView != null) {
                    baseTextView.setTextColor(color);
                }
            }
        }
    }
}
