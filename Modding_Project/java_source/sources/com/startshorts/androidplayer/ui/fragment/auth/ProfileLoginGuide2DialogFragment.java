package com.startshorts.androidplayer.ui.fragment.auth;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.autofill.HintConstants;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.FragmentActivity;
import com.hades.aar.auth.base.AuthType;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.auth.AuthReason;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.databinding.DialogFragmentProfileLoginGuide2Binding;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.auth.FirebaseAuthManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.fragment.auth.ProfileLoginGuide2DialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import fk.u;
import java.lang.ref.WeakReference;
import jk.b0;
import jk.e0;
import jk.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileLoginGuide2DialogFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProfileLoginGuide2DialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,319:1\n15#2,9:320\n*S KotlinDebug\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment\n*L\n193#1:320,9\n*E\n"})
/* loaded from: classes7.dex */
public final class ProfileLoginGuide2DialogFragment extends BaseBottomSheetDialogFragment<DialogFragmentProfileLoginGuide2Binding> {
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    public static final a f45651x = new a(null);
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private b f45655p;

    /* renamed from: r  reason: collision with root package name */
    private boolean f45657r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private View f45658s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f45659t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f45660u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private String f45661v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f45662w;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final j f45652m = new j();
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final i f45653n = new i();
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ms.i<FirebaseAuthManager> f45654o = kotlin.c.b(new Function0() { // from class: ni.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            FirebaseAuthManager X;
            X = ProfileLoginGuide2DialogFragment.X();
            return X;
        }
    });
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private String f45656q = "";

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void onDismiss();
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements ke.b {
        c() {
        }

        @Override // ke.b
        public void a(AuthType authType) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            ProfileLoginGuide2DialogFragment.this.dismiss();
        }

        @Override // ke.b
        public void b(AuthType authType, int i10, String str) {
            Intrinsics.checkNotNullParameter(authType, "authType");
            ProfileLoginGuide2DialogFragment.this.x(str);
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginGuide2DialogFragment.this.V();
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginGuide2DialogFragment.this.V();
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        f() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginGuide2DialogFragment.this.W();
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends yd.d {
        g() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginGuide2DialogFragment.this.Y();
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends yd.d {
        h() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginGuide2DialogFragment.this.Y();
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nProfileLoginGuide2DialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$mPrivacyPolicyClickListener$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n82#2:320\n83#2:322\n1#3:321\n*S KotlinDebug\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$mPrivacyPolicyClickListener$1\n*L\n59#1:320\n59#1:322\n59#1:321\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class i extends yd.d {
        i() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginGuide2DialogFragment profileLoginGuide2DialogFragment = ProfileLoginGuide2DialogFragment.this;
            if (profileLoginGuide2DialogFragment.getContext() != null) {
                IntentUtil intentUtil = IntentUtil.f48164a;
                Context requireContext = profileLoginGuide2DialogFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                String string = profileLoginGuide2DialogFragment.getString(R$string.policy_private_policy);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                intentUtil.c(requireContext, string);
            }
        }
    }

    /* compiled from: ProfileLoginGuide2DialogFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nProfileLoginGuide2DialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$mUserAgreementClickListener$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,319:1\n82#2:320\n83#2:322\n1#3:321\n*S KotlinDebug\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$mUserAgreementClickListener$1\n*L\n51#1:320\n51#1:322\n51#1:321\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class j extends yd.d {
        j() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ProfileLoginGuide2DialogFragment profileLoginGuide2DialogFragment = ProfileLoginGuide2DialogFragment.this;
            if (profileLoginGuide2DialogFragment.getContext() != null) {
                IntentUtil intentUtil = IntentUtil.f48164a;
                Context requireContext = profileLoginGuide2DialogFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                String string = profileLoginGuide2DialogFragment.getString(R$string.policy_user_agreement);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                intentUtil.c(requireContext, string);
            }
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment\n*L\n1#1,20:1\n194#2,25:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class k implements Function0<Unit> {
        public k() {
        }

        public final void a() {
            ProfileLoginGuide2DialogFragment.this.U(HintConstants.AUTOFILL_HINT_PHONE);
            ProfileLoginGuide2DialogFragment.this.N();
            FragmentContainer.a aVar = FragmentContainer.f45006p;
            Context requireContext = ProfileLoginGuide2DialogFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            String i10 = com.startshorts.androidplayer.ui.fragment.a.f45609a.i();
            StringBundle stringBundle = new StringBundle("auth_reason", "1");
            String str = ProfileLoginGuide2DialogFragment.this.f45659t;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            StringBundle stringBundle2 = new StringBundle("auth_reason_phone", str);
            String str3 = ProfileLoginGuide2DialogFragment.this.f45660u;
            if (str3 == null) {
                str3 = "";
            }
            StringBundle stringBundle3 = new StringBundle("auth_reason_area_code", str3);
            String str4 = ProfileLoginGuide2DialogFragment.this.f45661v;
            if (str4 != null) {
                str2 = str4;
            }
            ProfileLoginGuide2DialogFragment.this.f45662w.launch(aVar.c(requireContext, i10, stringBundle, stringBundle2, stringBundle3, new StringBundle("auth_reason_country_code", str2), new StringBundle("from", ProfileLoginGuide2DialogFragment.this.f45656q)));
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    public ProfileLoginGuide2DialogFragment() {
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: ni.q
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                ProfileLoginGuide2DialogFragment.Z(ProfileLoginGuide2DialogFragment.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResult(...)");
        this.f45662w = registerForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N() {
        EventManager.s0(EventManager.f42463a, "login_guide_click", null, 0L, 6, null);
        if (this.f45654o.isInitialized()) {
            return;
        }
        q("initAuthManager");
        FirebaseAuthManager value = this.f45654o.getValue();
        value.p(new WeakReference<>(requireActivity()));
        value.F(this.f45656q);
        value.s(new c());
    }

    private final void O() {
        ViewStubProxy loginGetBonus = n().f38954e;
        Intrinsics.checkNotNullExpressionValue(loginGetBonus, "loginGetBonus");
        View c10 = e0.c(loginGetBonus);
        if (c10 != null) {
            if (this.f45657r) {
                b0.d(c10);
            } else {
                String h10 = AccountManager.f41533a.h();
                if (h10.length() > 0 && !Intrinsics.areEqual(h10, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    ((TextView) c10.findViewById(R$id.facebook_login_bonus)).setText(u.f51776a.e(R$string.login_get_bonus, h10));
                    b0.l(c10);
                    c10.setOnClickListener(new d());
                } else {
                    b0.d(c10);
                }
            }
        }
        if (this.f45657r) {
            n().f38950a.setBackgroundResource(R$drawable.bg_login_method_google2);
            n().f38951b.setTextColor(u.f51776a.a(R$color.t_b_83));
        } else {
            n().f38950a.setBackgroundResource(R$drawable.bg_login_method_facebook2);
            n().f38951b.setTextColor(u.f51776a.a(R$color.color_common_white));
        }
        n().f38950a.setOnClickListener(new e());
    }

    private final void P() {
        n().f38952c.setOnClickListener(new f());
    }

    private final void Q() {
        R();
        O();
        P();
    }

    private final void R() {
        if (this.f45657r) {
            b0.l(n().f38957h);
            n().f38957h.setOnClickListener(new g());
            if (this.f45658s == null) {
                ViewStubProxy phoneLoginGetBonus = n().f38956g;
                Intrinsics.checkNotNullExpressionValue(phoneLoginGetBonus, "phoneLoginGetBonus");
                this.f45658s = e0.c(phoneLoginGetBonus);
            }
            View view = this.f45658s;
            if (view != null) {
                String i10 = AccountManager.f41533a.i();
                if (i10.length() > 0 && !Intrinsics.areEqual(i10, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    TextView textView = (TextView) view.findViewById(R$id.phone_login_bonus);
                    if (textView != null) {
                        textView.setText(u.f51776a.e(R$string.login_get_bonus, i10));
                    }
                    b0.l(view);
                    view.setOnClickListener(new h());
                    return;
                }
                b0.d(view);
                return;
            }
            return;
        }
        b0.d(n().f38957h);
    }

    private final void S() {
        BaseTextView policyTv = n().f38958i;
        Intrinsics.checkNotNullExpressionValue(policyTv, "policyTv");
        u uVar = u.f51776a;
        y.l(policyTv, uVar.e(R$string.login_activity_policy, uVar.d(R$string.settings_fragment_user_agreement), uVar.d(R$string.settings_fragment_privacy_policy)), new String[]{uVar.d(R$string.settings_fragment_user_agreement), uVar.d(R$string.settings_fragment_privacy_policy)}, uVar.a(R$color.color_common_white), yf.a.f70794a.g(), 0.0f, false, CollectionsKt.t(this.f45652m, this.f45653n), 48, null);
    }

    private final void T() {
        this.f45657r = AccountRepo.f43052a.L0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", this.f45656q);
        bundle.putString("type", str);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_click", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V() {
        N();
        U("facebook");
        this.f45654o.getValue().a(AuthReason.LOGIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W() {
        N();
        U("google");
        this.f45654o.getValue().b(AuthReason.LOGIN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FirebaseAuthManager X() {
        return new FirebaseAuthManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y() {
        FragmentExtKt.b(this, new k(), new l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(ProfileLoginGuide2DialogFragment profileLoginGuide2DialogFragment, ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            profileLoginGuide2DialogFragment.dismiss();
        }
    }

    public final void a0(@Nullable b bVar) {
        this.f45655p = bVar;
    }

    public final void b0(@NotNull String scene) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        this.f45656q = scene;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_profile_login_guide2;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        if (!this.f45654o.getValue().l(requireActivity, i10, i11, intent)) {
            super.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        b bVar = this.f45655p;
        if (bVar != null) {
            bVar.onDismiss();
        }
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
        T();
        Q();
        S();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ProfileLoginGuideDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        if (this.f45654o.isInitialized()) {
            this.f45654o.getValue().n();
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class l implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
