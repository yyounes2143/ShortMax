package com.startshorts.androidplayer.ui.view.purchase;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import androidx.core.content.ContextCompat;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import fk.u;
import jk.y;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RechargeTipView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class RechargeTipView extends BaseConstraintLayout {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f47592f = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47593b;

    /* renamed from: c  reason: collision with root package name */
    private long f47594c;

    /* renamed from: d  reason: collision with root package name */
    private long f47595d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private b f47596e;

    /* compiled from: RechargeTipView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: RechargeTipView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: RechargeTipView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context context = RechargeTipView.this.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            String string = RechargeTipView.this.getContext().getString(R$string.policy_recharge_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(context, string);
        }
    }

    /* compiled from: RechargeTipView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            long L = DeviceUtil.f48146a.L();
            if (L - RechargeTipView.this.f47594c >= 5000) {
                RechargeTipView.this.f47594c = L;
                b mListener = RechargeTipView.this.getMListener();
                if (mListener != null) {
                    mListener.a();
                }
            } else if (L - RechargeTipView.this.f47595d >= 1000) {
                RechargeTipView.this.f47595d = L;
                u.f51776a.g(R$string.common_duplicate_op_tip, 0);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RechargeTipView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void A() {
        BaseTextView baseTextView = this.f47593b;
        if (baseTextView != null) {
            String string = getContext().getString(R$string.top_up_fragment_recharge_tip, getContext().getString(R$string.top_up_fragment_recharge_agreement));
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            y.l(baseTextView, string, new String[]{getContext().getString(R$string.top_up_fragment_recharge_agreement)}, ContextCompat.getColor(getContext(), 17170443), yf.a.f70794a.g(), 0.0f, false, CollectionsKt.h(new c()), 48, null);
        }
    }

    private final void C() {
        View inflate;
        BaseTextView baseTextView;
        ViewStub viewStub = (ViewStub) findViewById(R$id.restore_tip_viewstub);
        if (viewStub != null && (inflate = viewStub.inflate()) != null && (baseTextView = (BaseTextView) inflate.findViewById(R$id.restore_tv)) != null) {
            baseTextView.setOnClickListener(new d());
        }
    }

    public final void B() {
        A();
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_recharge_tip;
    }

    @Nullable
    public final b getMListener() {
        return this.f47596e;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "RechargeTipView";
    }

    public final void release() {
        BaseTextView baseTextView = this.f47593b;
        if (baseTextView != null) {
            y.b(baseTextView);
        }
    }

    public final void setMListener(@Nullable b bVar) {
        this.f47596e = bVar;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47593b = (BaseTextView) findViewById(R$id.agreement_tv);
    }

    public final void z() {
        C();
    }
}
