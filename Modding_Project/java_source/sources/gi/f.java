package gi;

import android.content.Context;
import android.content.Intent;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.databinding.DialogSwitchAccountTipBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.auth.LoginActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: SwitchAccountTipDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class f extends fi.a<DialogSwitchAccountTipBinding> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f52384e = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final GPayExchangePremiumResult.RechargeUserInfo f52385d;

    /* compiled from: SwitchAccountTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SwitchAccountTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "account_switch_pop_close", null, 0L, 6, null);
            f.this.dismiss();
        }
    }

    /* compiled from: SwitchAccountTipDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            String str;
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "account_switch_pop_click", null, 0L, 6, null);
            Integer provider = f.this.u().getProvider();
            if (provider != null && provider.intValue() == 10) {
                str = "autoLoginGoogle";
            } else if (provider != null && provider.intValue() == 20) {
                str = "autoLoginFaceBook";
            } else if (provider != null && provider.intValue() == 60) {
                str = "autoLoginPhone";
            } else {
                str = "";
            }
            String phone = f.this.u().getPhone();
            String area_code = f.this.u().getArea_code();
            String country_code = f.this.u().getCountry_code();
            Context context = f.this.getContext();
            Intent intent = new Intent(f.this.getContext(), LoginActivity.class);
            intent.putExtra("from", "login_page");
            intent.putExtra("autoLogin", str);
            intent.putExtra("ex_phone", phone);
            intent.putExtra("ex_area_code", area_code);
            intent.putExtra("ex_country_code", country_code);
            context.startActivity(intent);
            f.this.dismiss();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(@NotNull Context context, @NotNull GPayExchangePremiumResult.RechargeUserInfo userInfo) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(userInfo, "userInfo");
        this.f52385d = userInfo;
    }

    private final void v() {
        i().f39317b.setOnClickListener(new b());
    }

    private final void w() {
        i().f39316a.setOnClickListener(new c());
    }

    private final void x() {
        String nickName = this.f52385d.getNickName();
        String str = "";
        if (nickName == null) {
            nickName = "";
        }
        Integer provider = this.f52385d.getProvider();
        if (provider != null && provider.intValue() == 10) {
            str = "Google";
        } else if (provider != null && provider.intValue() == 20) {
            str = "Facebook";
        } else if (provider != null && provider.intValue() == 60) {
            str = getContext().getString(R$string.bind_info_fragment_phone);
            Intrinsics.checkNotNullExpressionValue(str, "getString(...)");
        }
        String string = getContext().getString(R$string.switch_account_tip_content, nickName, str);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        SpannableString spannableString = new SpannableString(string);
        int q02 = StringsKt.q0(string, nickName, 0, false, 6, null);
        spannableString.setSpan(new ForegroundColorSpan((int) SupportMenu.CATEGORY_MASK), q02, nickName.length() + q02, 33);
        int q03 = StringsKt.q0(string, str, 0, false, 6, null);
        spannableString.setSpan(new ForegroundColorSpan((int) SupportMenu.CATEGORY_MASK), q03, str.length() + q03, 33);
        i().f39318c.setText(spannableString);
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_switch_account_tip;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "SwitchAccountTipDialog";
    }

    @Override // fi.a
    public int n() {
        return DeviceUtil.f48146a.G() - (z.f51786a.p() * 2);
    }

    @Override // fi.a
    public void p() {
        setCanceledOnTouchOutside(false);
        x();
        v();
        w();
        EventManager.s0(EventManager.f42463a, "account_switch_pop_show", null, 0L, 6, null);
    }

    @NotNull
    public final GPayExchangePremiumResult.RechargeUserInfo u() {
        return this.f52385d;
    }
}
