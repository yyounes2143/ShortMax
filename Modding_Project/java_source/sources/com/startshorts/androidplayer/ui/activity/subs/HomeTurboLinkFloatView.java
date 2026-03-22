package com.startshorts.androidplayer.ui.activity.subs;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.ViewTurbolinkFloatBinding;
import com.startshorts.androidplayer.repo.config.appConfig.TurboLinkRepo;
import com.startshorts.androidplayer.ui.activity.subs.HomeTurboLinkFloatView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import jk.b0;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ng.e;
import ng.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HomeTurboLinkFloatView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class HomeTurboLinkFloatView extends ConstraintLayout {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f45496c = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private ViewTurbolinkFloatBinding f45497a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private String f45498b;

    /* compiled from: HomeTurboLinkFloatView.kt */
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
    public HomeTurboLinkFloatView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        ViewTurbolinkFloatBinding b10 = ViewTurbolinkFloatBinding.b(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        this.f45497a = b10;
        this.f45498b = "";
        b0.d(this);
    }

    private final void s(String str, final String str2) {
        CustomFrescoView ivTurbolink = this.f45497a.f41438b;
        Intrinsics.checkNotNullExpressionValue(ivTurbolink, "ivTurbolink");
        b0.c(ivTurbolink, 0L, new Function1() { // from class: ci.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit t10;
                t10 = HomeTurboLinkFloatView.t(HomeTurboLinkFloatView.this, str2, (View) obj);
                return t10;
            }
        }, 1, null);
        f fVar = f.f60747a;
        CustomFrescoView customFrescoView = this.f45497a.f41438b;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(str);
        frescoConfig.setPlaceholderResId(R$drawable.icon_turbolink);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(0.0f);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(HomeTurboLinkFloatView homeTurboLinkFloatView, String str, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        g gVar = g.f62917a;
        Context context = homeTurboLinkFloatView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        gVar.d(context, str);
        TurboLinkRepo.f43851a.d();
        return Unit.f60915a;
    }

    @NotNull
    public final ViewTurbolinkFloatBinding getBinding() {
        return this.f45497a;
    }

    public final void r(@NotNull String tabName) {
        Intrinsics.checkNotNullParameter(tabName, "tabName");
        this.f45498b = tabName;
        if (!Intrinsics.areEqual(tabName, "DISCOVER")) {
            b0.d(this);
            return;
        }
        e eVar = e.f62912a;
        String str = (String) eVar.i("turboLinkActivityUrl", "");
        String str2 = (String) eVar.i("turboLinkActivityLogo", "");
        String str3 = (String) eVar.i("turboLinkLanguage", "");
        if (Intrinsics.areEqual("1", (String) eVar.i("turboLinkSwitch", "")) && str.length() > 0) {
            s(str2, str);
            if (str3.length() > 0) {
                g.f62917a.k(str3);
            }
            b0.l(this);
            return;
        }
        b0.d(this);
    }

    public final void setBinding(@NotNull ViewTurbolinkFloatBinding viewTurbolinkFloatBinding) {
        Intrinsics.checkNotNullParameter(viewTurbolinkFloatBinding, "<set-?>");
        this.f45497a = viewTurbolinkFloatBinding;
    }
}
