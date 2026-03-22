package com.startshorts.androidplayer.ui.view.main;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.PlayContinue;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.databinding.ItemCoverPlayBinding;
import com.startshorts.androidplayer.service.miniwindow.MiniWindowService;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.main.ContinuePlayLayout;
import jk.g;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
import zg.c;
/* compiled from: ContinuePlayLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ContinuePlayLayout extends FrameLayout {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ItemCoverPlayBinding f47451a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f47452b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Runnable f47453c;

    /* compiled from: ContinuePlayLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b();

        void onClose();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContinuePlayLayout(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(ContinuePlayLayout continuePlayLayout, View view) {
        a aVar = continuePlayLayout.f47452b;
        if (aVar != null) {
            aVar.onClose();
        }
        continuePlayLayout.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(ContinuePlayLayout continuePlayLayout, View view) {
        a aVar = continuePlayLayout.f47452b;
        if (aVar != null) {
            aVar.onClose();
        }
        continuePlayLayout.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(ContinuePlayLayout continuePlayLayout, View view) {
        a aVar = continuePlayLayout.f47452b;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ContinuePlayLayout continuePlayLayout, View view) {
        a aVar = continuePlayLayout.f47452b;
        if (aVar != null) {
            aVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(ContinuePlayLayout continuePlayLayout) {
        boolean c10 = c.f71648a.c();
        PlayContinue r02 = b.f68412a.r0();
        if (c10 && r02 != null && !MiniWindowService.f44813k.a()) {
            if (r02.getShowType() == 1) {
                r02.setShowType(0);
                continuePlayLayout.l(r02);
                a aVar = continuePlayLayout.f47452b;
                if (aVar != null) {
                    aVar.b();
                    return;
                }
                return;
            }
            return;
        }
        continuePlayLayout.setVisibility(8);
    }

    private final void l(PlayContinue playContinue) {
        if (playContinue.getShowType() == 1) {
            this.f47451a.f39889b.setVisibility(8);
            this.f47451a.f39888a.setVisibility(0);
            this.f47451a.f39900m.setText(playContinue.getShortPlayName());
            this.f47451a.f39899l.setText(getContext().getString(R$string.common_current_ep, String.valueOf(playContinue.getEpisodeNum())));
            this.f47451a.f39897j.setText(getContext().getString(R$string.common_total_ep, String.valueOf(playContinue.getTotalEpisodes())));
            f fVar = f.f60747a;
            CustomFrescoView customFrescoView = this.f47451a.f39891d;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(playContinue.getCoverId());
            id.c cVar = id.c.f53397a;
            frescoConfig.setOssWidth(cVar.b());
            frescoConfig.setOssHeight(cVar.a());
            frescoConfig.setResizeWidth(g.a(68.0f));
            frescoConfig.setResizeHeight(g.a(92.0f));
            frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
            frescoConfig.setCornerTransform(true);
            frescoConfig.setCornerRadius(g.b(2.0f));
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            removeCallbacks(this.f47453c);
            postDelayed(this.f47453c, 3500L);
            return;
        }
        this.f47451a.f39889b.setVisibility(0);
        this.f47451a.f39888a.setVisibility(8);
        f fVar2 = f.f60747a;
        CustomFrescoView customFrescoView2 = this.f47451a.f39895h;
        FrescoConfig frescoConfig2 = new FrescoConfig();
        frescoConfig2.setUrl(playContinue.getCoverId());
        id.c cVar2 = id.c.f53397a;
        frescoConfig2.setOssWidth(cVar2.b());
        frescoConfig2.setOssHeight(cVar2.a());
        frescoConfig2.setResizeWidth(g.a(86.0f));
        frescoConfig2.setResizeHeight(g.a(115.0f));
        frescoConfig2.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig2.setBorderWidth(g.b(1.0f));
        frescoConfig2.setBorderColor(ContextCompat.getColor(getContext(), R$color.color_common_white_70));
        frescoConfig2.setCornerTransform(true);
        frescoConfig2.setCornerRadius(g.b(4.0f));
        Unit unit2 = Unit.f60915a;
        fVar2.A(customFrescoView2, frescoConfig2);
    }

    @Nullable
    public final a getCallback() {
        return this.f47452b;
    }

    public final void j() {
        b.f68412a.D3(null);
        setVisibility(8);
    }

    public final void m() {
        boolean c10 = c.f71648a.c();
        PlayContinue r02 = b.f68412a.r0();
        if (c10 && r02 != null && !MiniWindowService.f44813k.a()) {
            if (r02.getShowType() == 1) {
                r02.setShowType(0);
                n(MainTab.Type.DISCOVER, true);
                return;
            }
            return;
        }
        setVisibility(8);
    }

    public final void n(@NotNull MainTab.Type tabType, boolean z10) {
        Intrinsics.checkNotNullParameter(tabType, "tabType");
        boolean c10 = c.f71648a.c();
        PlayContinue r02 = b.f68412a.r0();
        if (c10 && r02 != null && tabType != MainTab.Type.SHORTS && tabType != MainTab.Type.REWARDS && !MiniWindowService.f44813k.a()) {
            if (tabType != MainTab.Type.MY_LIST && tabType != MainTab.Type.PROFILE) {
                if (tabType == MainTab.Type.DISCOVER && z10) {
                    r02.setShowType(0);
                }
            } else {
                r02.setShowType(0);
            }
            l(r02);
            a aVar = this.f47452b;
            if (aVar != null) {
                aVar.b();
            }
            setVisibility(0);
            return;
        }
        setVisibility(8);
    }

    public final void setCallback(@Nullable a aVar) {
        this.f47452b = aVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ContinuePlayLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ ContinuePlayLayout(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContinuePlayLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        ItemCoverPlayBinding b10 = ItemCoverPlayBinding.b(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        this.f47451a = b10;
        b10.f39893f.setOnClickListener(new View.OnClickListener() { // from class: qj.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContinuePlayLayout.f(ContinuePlayLayout.this, view);
            }
        });
        b10.f39894g.setOnClickListener(new View.OnClickListener() { // from class: qj.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContinuePlayLayout.g(ContinuePlayLayout.this, view);
            }
        });
        b10.f39888a.setOnClickListener(new View.OnClickListener() { // from class: qj.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContinuePlayLayout.h(ContinuePlayLayout.this, view);
            }
        });
        b10.f39889b.setOnClickListener(new View.OnClickListener() { // from class: qj.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContinuePlayLayout.i(ContinuePlayLayout.this, view);
            }
        });
        this.f47453c = new Runnable() { // from class: qj.e
            @Override // java.lang.Runnable
            public final void run() {
                ContinuePlayLayout.k(ContinuePlayLayout.this);
            }
        };
    }
}
