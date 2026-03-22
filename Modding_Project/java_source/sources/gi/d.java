package gi;

import android.content.Context;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogPurchaseFailedTipBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PurchaseFailedTipDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d extends fi.a<DialogPurchaseFailedTipBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f52373e = new a(null);
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f52374d;

    /* compiled from: PurchaseFailedTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PurchaseFailedTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();
    }

    /* compiled from: PurchaseFailedTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            d.this.dismiss();
        }
    }

    /* compiled from: PurchaseFailedTipDialog.kt */
    @Metadata
    /* renamed from: gi.d$d  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0757d extends yd.d {
        C0757d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b u10 = d.this.u();
            if (u10 != null) {
                u10.a();
            }
            d.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void v() {
        i().f39247a.setOnClickListener(new c());
    }

    private final void w() {
        i().f39250d.setOnClickListener(new C0757d());
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_purchase_failed_tip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "PurchaseFailedTipDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        setCanceledOnTouchOutside(false);
        v();
        w();
        EventManager.s0(EventManager.f42463a, "show_pay_retry_popup", null, 0L, 6, null);
    }

    @Nullable
    public final b u() {
        return this.f52374d;
    }

    public final void x(@Nullable b bVar) {
        this.f52374d = bVar;
    }
}
