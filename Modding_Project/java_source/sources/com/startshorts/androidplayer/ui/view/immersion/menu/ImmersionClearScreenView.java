package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.event.EventManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: ImmersionClearScreenView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionClearScreenView extends AppCompatImageView implements nj.a {

    /* renamed from: a  reason: collision with root package name */
    private boolean f47332a;

    /* compiled from: ImmersionClearScreenView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a extends d {
        a() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            String str;
            Intrinsics.checkNotNullParameter(v10, "v");
            ImmersionClearScreenView immersionClearScreenView = ImmersionClearScreenView.this;
            immersionClearScreenView.f47332a = !immersionClearScreenView.f47332a;
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            if (ImmersionClearScreenView.this.f47332a) {
                str = "clear";
            } else {
                str = "cancel";
            }
            bundle.putString("status", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "clear_screen", bundle, 0L, 4, null);
            ImmersionClearScreenView.this.d();
            ImmersionClearScreenView.this.getMListener();
        }
    }

    /* compiled from: ImmersionClearScreenView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionClearScreenView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // nj.a
    public void a(int i10) {
        setVisibility(i10);
    }

    public final void d() {
        int i10;
        if (this.f47332a) {
            i10 = R$drawable.ic_clear_screen_on;
        } else {
            i10 = R$drawable.ic_clear_screen_off;
        }
        setImageResource(i10);
    }

    @Override // nj.a
    public boolean f() {
        return false;
    }

    @Override // nj.a
    public void g(@NotNull ImmersionShortsInfo shortsInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
        setVisibility(0);
    }

    @Nullable
    public final b getMListener() {
        return null;
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionClearScreenView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionClearScreenView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        d();
        setOnClickListener(new a());
    }

    public final void setMListener(@Nullable b bVar) {
    }
}
