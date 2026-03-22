package gi;

import android.content.Context;
import android.view.View;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.databinding.DialogBillingUnavailableTipBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BillingUnavailableTipDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a extends fi.a<DialogBillingUnavailableTipBinding> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0754a f52361d = new C0754a(null);

    /* compiled from: BillingUnavailableTipDialog.kt */
    @Metadata
    /* renamed from: gi.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public static final class C0754a {
        public /* synthetic */ C0754a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0754a() {
        }
    }

    /* compiled from: BillingUnavailableTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a.this.dismiss();
        }
    }

    /* compiled from: BillingUnavailableTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "feedback_click", null, 0L, 6, null);
            Logger.f41511a.l(null);
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context context = a.this.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            String l10 = a.this.l(R$string.feedback_email);
            String l11 = a.this.l(R$string.profile_fragment_feedback);
            a aVar = a.this;
            int i10 = R$string.profile_fragment_feedback_content;
            String t02 = AccountRepo.f43052a.t0();
            DeviceUtil deviceUtil = DeviceUtil.f48146a;
            String V = deviceUtil.V();
            intentUtil.e(context, l10, l11, aVar.m(i10, t02, V, "Android-" + deviceUtil.O() + ',' + deviceUtil.C()));
            a.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void u() {
        i().f38639a.setOnClickListener(new b());
    }

    private final void v() {
        i().f38641c.setOnClickListener(new c());
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_billing_unavailable_tip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "BillingUnavailableTipDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        setCanceledOnTouchOutside(false);
        u();
        v();
    }
}
