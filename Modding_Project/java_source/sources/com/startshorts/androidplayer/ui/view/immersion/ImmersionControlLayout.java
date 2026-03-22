package com.startshorts.androidplayer.ui.view.immersion;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ViewImmersionControlBinding;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionCoverView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionIconTextView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionNameTagView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionControlLayout.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionControlLayout extends ConstraintLayout {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f47299b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private ViewImmersionControlBinding f47300a;

    /* compiled from: ImmersionControlLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ImmersionControlLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ImmersionIconTextView.a {
        b() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionIconTextView.a
        public void a() {
            ImmersionActivity immersionActivity = ImmersionControlLayout.this.getImmersionActivity();
            if (immersionActivity != null) {
                immersionActivity.W7();
            }
        }
    }

    /* compiled from: ImmersionControlLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements ImmersionCoverView.b {
        c() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionCoverView.b
        public void a() {
            ImmersionActivity immersionActivity = ImmersionControlLayout.this.getImmersionActivity();
            if (immersionActivity != null) {
                immersionActivity.X7();
            }
        }
    }

    /* compiled from: ImmersionControlLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements ImmersionIconTextView.a {
        d() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionIconTextView.a
        public void a() {
            ImmersionActivity immersionActivity = ImmersionControlLayout.this.getImmersionActivity();
            if (immersionActivity != null) {
                immersionActivity.Y7();
            }
        }
    }

    /* compiled from: ImmersionControlLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements ImmersionIconTextView.a {
        e() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionIconTextView.a
        public void a() {
            ImmersionActivity immersionActivity = ImmersionControlLayout.this.getImmersionActivity();
            if (immersionActivity != null) {
                immersionActivity.Z7();
            }
        }
    }

    /* compiled from: ImmersionControlLayout.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements ImmersionNameTagView.a {
        f() {
        }

        @Override // com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionNameTagView.a
        public void a(ShortsLabel shortsLabel) {
            Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
            ImmersionActivity immersionActivity = ImmersionControlLayout.this.getImmersionActivity();
            if (immersionActivity != null) {
                immersionActivity.a8(shortsLabel);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionControlLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        ViewImmersionControlBinding b10 = ViewImmersionControlBinding.b(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        this.f47300a = b10;
        s();
        r();
        t();
        u();
        v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImmersionActivity getImmersionActivity() {
        if (getContext() instanceof ImmersionActivity) {
            Context context = getContext();
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity");
            return (ImmersionActivity) context;
        }
        return null;
    }

    private final void r() {
        this.f47300a.f41232a.setMType(1);
        this.f47300a.f41232a.setMListener(new b());
    }

    private final void s() {
        this.f47300a.f41235d.setMListener(new c());
    }

    private final void t() {
        this.f47300a.f41233b.setMType(2);
        this.f47300a.f41233b.x(R$drawable.ic_shorts_list);
        ImmersionIconTextView immersionIconTextView = this.f47300a.f41233b;
        String string = getContext().getString(R$string.shorts_fragment_list);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        immersionIconTextView.z(string);
        this.f47300a.f41233b.setMListener(new d());
    }

    private final void u() {
        this.f47300a.f41234c.setMType(3);
        this.f47300a.f41234c.x(R$drawable.ic_shorts_share);
        ImmersionIconTextView immersionIconTextView = this.f47300a.f41234c;
        String string = getContext().getString(R$string.shorts_fragment_share);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        immersionIconTextView.z(string);
        this.f47300a.f41234c.setMListener(new e());
    }

    private final void v() {
        this.f47300a.f41236e.setMListener(new f());
    }

    public final void a(int i10) {
        this.f47300a.f41235d.a(i10);
        this.f47300a.f41232a.a(i10);
        this.f47300a.f41234c.a(i10);
        this.f47300a.f41233b.a(i10);
        this.f47300a.f41236e.a(i10);
    }

    public final void w(@NotNull ImmersionShortsInfo shortsInfo, @NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f47300a.f41235d.g(shortsInfo, z10);
        this.f47300a.f41232a.g(shortsInfo, z10);
        this.f47300a.f41234c.g(shortsInfo, z10);
        this.f47300a.f41233b.g(shortsInfo, z10);
        this.f47300a.f41236e.k(episode, z10);
    }
}
