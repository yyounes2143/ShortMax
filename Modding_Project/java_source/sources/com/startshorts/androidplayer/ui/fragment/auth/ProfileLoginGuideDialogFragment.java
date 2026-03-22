package com.startshorts.androidplayer.ui.fragment.auth;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.FragmentActivity;
import com.hades.aar.auth.base.AuthType;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.databinding.DialogFragmentProfileLoginGuideBinding;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.ui.fragment.auth.ProfileLoginGuideDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.IntentUtil;
import java.lang.ref.WeakReference;
import jk.e0;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileLoginGuideDialogFragment.kt */
@ms.c
@Metadata
/* loaded from: classes7.dex */
public final class ProfileLoginGuideDialogFragment extends BaseBottomSheetDialogFragment<DialogFragmentProfileLoginGuideBinding> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f45672r = new a(null);
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final e f45673m = new e();
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final d f45674n = new d();
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final i<FirebaseAuthManager> f45675o = kotlin.c.b(new Function0() { // from class: ni.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            FirebaseAuthManager J;
            J = ProfileLoginGuideDialogFragment.J();
            return J;
        }
    });

    /* renamed from: p  reason: collision with root package name */
    private final boolean f45676p = CampaignRepo.f43678a.x();
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private String f45677q = "porfile_windows";

    /* compiled from: ProfileLoginGuideDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ProfileLoginGuideDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ke.b {
        b() {
        }

        @Override // ke.b
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            ProfileLoginGuideDialogFragment.this.dismiss();
        }

        @Override // ke.b
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            ProfileLoginGuideDialogFragment.this.x(str);
        }
    }

    /* compiled from: ProfileLoginGuideDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager eventManager = EventManager.f42463a;
            EventManager.s0(eventManager, "login_guide_click", null, 0L, 6, null);
            ProfileLoginGuideDialogFragment.this.G();
            if (ProfileLoginGuideDialogFragment.this.f45676p) {
                Bundle bundle = new Bundle();
                bundle.putString("scene", ProfileLoginGuideDialogFragment.this.f45677q);
                bundle.putString("type", "google");
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
                ((FirebaseAuthManager) ProfileLoginGuideDialogFragment.this.f45675o.getValue()).b(AuthReason.LOGIN);
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", ProfileLoginGuideDialogFragment.this.f45677q);
            bundle2.putString("type", "facebook");
            Unit unit2 = Unit.f60915a;
            EventManager.s0(eventManager, "login_click", bundle2, 0L, 4, null);
            ((FirebaseAuthManager) ProfileLoginGuideDialogFragment.this.f45675o.getValue()).a(AuthReason.LOGIN);
        }
    }

    /* compiled from: ProfileLoginGuideDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context requireContext = ProfileLoginGuideDialogFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String string = ProfileLoginGuideDialogFragment.this.getString(R$string.policy_private_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(requireContext, string);
        }
    }

    /* compiled from: ProfileLoginGuideDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            IntentUtil intentUtil = IntentUtil.f48164a;
            Context requireContext = ProfileLoginGuideDialogFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String string = ProfileLoginGuideDialogFragment.this.getString(R$string.policy_user_agreement);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            intentUtil.c(requireContext, string);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        if (this.f45675o.isInitialized()) {
            return;
        }
        q("initAuthManager");
        FirebaseAuthManager value = this.f45675o.getValue();
        value.p(new WeakReference<>(requireActivity()));
        value.F(this.f45677q);
        value.s(new b());
    }

    private final void H() {
        String str;
        int i10;
        int i11;
        BaseTextView baseTextView = n().f38967d;
        int i12 = R$string.login_activity_login_with;
        if (this.f45676p) {
            str = "Google";
        } else {
            str = "Facebook";
        }
        baseTextView.setText(getString(i12, str));
        ImageView imageView = n().f38966c;
        if (this.f45676p) {
            i10 = R$drawable.ic_login_google;
        } else {
            i10 = R$drawable.ic_login_facebook;
        }
        imageView.setImageResource(i10);
        View view = n().f38965b;
        if (this.f45676p) {
            i11 = R$drawable.bg_login_method_google;
        } else {
            i11 = R$drawable.bg_login_method_facebook;
        }
        view.setBackgroundResource(i11);
        view.setOnClickListener(new c());
    }

    private final void I() {
        BaseTextView policyTv = n().f38972i;
        Intrinsics.checkNotNullExpressionValue(policyTv, "policyTv");
        String string = getString(R$string.login_activity_policy, getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        y.l(policyTv, string, new String[]{getString(R$string.settings_fragment_user_agreement), getString(R$string.settings_fragment_privacy_policy)}, ContextCompat.getColor(requireContext(), 17170443), yf.a.f70794a.g(), 0.0f, false, CollectionsKt.t(this.f45673m, this.f45674n), 48, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseAuthManager J() {
        return new FirebaseAuthManager();
    }

    private final void K() {
        ViewStubProxy loginRewardCoinViewstub = n().f38968e;
        Intrinsics.checkNotNullExpressionValue(loginRewardCoinViewstub, "loginRewardCoinViewstub");
        e0.g(loginRewardCoinViewstub);
    }

    private final void L() {
        ViewStubProxy loginRewardIconViewstub = n().f38969f;
        Intrinsics.checkNotNullExpressionValue(loginRewardIconViewstub, "loginRewardIconViewstub");
        e0.g(loginRewardIconViewstub);
    }

    private final void M() {
        BaseTextView baseTextView;
        String h10;
        ViewStubProxy viewStubProxy = n().f38970g;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root instanceof BaseTextView) {
            baseTextView = (BaseTextView) root;
        } else {
            baseTextView = null;
        }
        if (baseTextView != null) {
            int i10 = R$string.profile_fragment_reward_tip2;
            if (this.f45676p) {
                h10 = AccountManager.f41533a.g();
            } else {
                h10 = AccountManager.f41533a.h();
            }
            baseTextView.setText(getString(i10, h10));
        }
    }

    private final void N() {
        L();
        K();
        M();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_profile_login_guide;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        if (!this.f45675o.getValue().l(requireActivity, i10, i11, intent)) {
            super.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (AccountRepo.f43052a.J0()) {
            dismiss();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        H();
        N();
        I();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ProfileLoginGuideDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        if (this.f45675o.isInitialized()) {
            this.f45675o.getValue().n();
        }
    }
}
