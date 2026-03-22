package com.startshorts.androidplayer.ui.fragment.profile;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.profile.ProfileMenuAdapter;
import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ResourceIndex;
import com.startshorts.androidplayer.bean.bundle.IFragmentBundle;
import com.startshorts.androidplayer.bean.bundle.IntBundle;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshMyListRedPointEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.profile.ProfileMenu;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.FragmentProfileBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.discount.DiscountSubscribeManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.auth.LoginActivity;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.activity.download.DownloadManageActivity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.ui.fragment.auth.ProfileLoginGuide2DialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment;
import com.startshorts.androidplayer.ui.fragment.profile.ProfileFragment;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.login.ProfileLoginButton;
import com.startshorts.androidplayer.ui.view.subs.ProfileSubsView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.comingsoon.ComingSoonViewModel;
import com.startshorts.androidplayer.viewmodel.comingsoon.a;
import com.startshorts.androidplayer.viewmodel.profile.ProfileViewModel;
import com.startshorts.androidplayer.viewmodel.profile.e;
import com.startshorts.androidplayer.viewmodel.profile.f;
import com.startshorts.androidplayer.viewmodel.subs.SubsViewModel;
import com.startshorts.androidplayer.viewmodel.subs.a;
import com.startshorts.androidplayer.viewmodel.subs.b;
import fk.e;
import fk.u;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import jk.b0;
import jk.e0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.i0;
/* compiled from: ProfileFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,821:1\n15#2,9:822\n295#3,2:831\n360#3,7:833\n774#3:840\n865#3,2:841\n1971#3,14:843\n*S KotlinDebug\n*F\n+ 1 ProfileFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment\n*L\n248#1:822,9\n651#1:831,2\n665#1:833,7\n749#1:840\n749#1:841,2\n749#1:843,14\n*E\n"})
/* loaded from: classes7.dex */
public final class ProfileFragment extends RecyclerViewFragment<ProfileMenu, FragmentProfileBinding> {
    @NotNull
    public static final a M = new a(null);
    @Nullable
    private ProfileLoginButton B;
    @Nullable
    private BaseTextView C;
    @Nullable
    private PermissionBottomSheetDialogFragment D;
    private long E;
    @Nullable
    private ProfileSubsView F;
    private long G;
    @Nullable
    private ek.b H;
    @Nullable
    private String I;
    @Nullable
    private ActBanner J;
    private boolean K;
    @Nullable
    private View L;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final ms.i f46393w = kotlin.c.b(new Function0() { // from class: si.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ProfileViewModel m12;
            m12 = ProfileFragment.m1(ProfileFragment.this);
            return m12;
        }
    });
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final ms.i f46394x = kotlin.c.b(new Function0() { // from class: si.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SubsViewModel o12;
            o12 = ProfileFragment.o1(ProfileFragment.this);
            return o12;
        }
    });
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private final ms.i f46395y = kotlin.c.b(new Function0() { // from class: si.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel k12;
            k12 = ProfileFragment.k1(ProfileFragment.this);
            return k12;
        }
    });
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private final ms.i f46396z = kotlin.c.b(new Function0() { // from class: si.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ComingSoonViewModel l12;
            l12 = ProfileFragment.l1(ProfileFragment.this);
            return l12;
        }
    });
    @NotNull
    private final ProfileFragment$mPropertyObserver$1 A = new ProfileFragment$mPropertyObserver$1(this);

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements e.a {
        b() {
        }

        @Override // fk.e.a
        public void a(String str, String str2, GPayPriceInfo gPayPriceInfo) {
            e.a.C0745a.a(this, str, str2, gPayPriceInfo);
        }

        @Override // fk.e.a
        public void b(String scene) {
            Intrinsics.checkNotNullParameter(scene, "scene");
            ProfileFragment.this.E1(scene);
        }

        @Override // fk.e.a
        public void c(TTPInfoResult tTPInfoResult) {
            e.a.C0745a.c(this, tTPInfoResult);
        }

        @Override // fk.e.a
        public void d(int i10, String str, String gpSkuId, GPayPriceInfo priceInfo) {
            Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
            Intrinsics.checkNotNullParameter(priceInfo, "priceInfo");
            ProfileFragment.this.X0(2, str, gpSkuId, priceInfo);
        }

        @Override // fk.e.a
        public void e(List<? extends Object> list) {
            ProfileFragment.this.Y0(list);
        }

        @Override // fk.e.a
        public void f() {
            ProfileFragment.this.s1();
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            String userCode;
            Intrinsics.checkNotNullParameter(v10, "v");
            long L = DeviceUtil.f48146a.L();
            if (L - ProfileFragment.this.G >= 5000) {
                ProfileFragment.this.G = L;
                Account a02 = AccountRepo.f43052a.a0();
                if (a02 != null && (userCode = a02.getUserCode()) != null) {
                    ProfileFragment profileFragment = ProfileFragment.this;
                    fk.j jVar = fk.j.f51739a;
                    Context requireContext = profileFragment.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    jVar.b(requireContext, userCode);
                    profileFragment.y1();
                    return;
                }
                return;
            }
            u.f51776a.g(R$string.common_duplicate_op_tip, 0);
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements BaseAdapter.b<ProfileMenu> {
        d() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, ProfileMenu d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            switch (d10.getType()) {
                case 1:
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString("scene", "profile_reward");
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "reward_click", bundle, 0L, 4, null);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("scene", "profile_reward");
                    EventManager.s0(eventManager, "reward_show", bundle2, 0L, 4, null);
                    RewardsFragment.a aVar = RewardsFragment.Y;
                    Context requireContext = ProfileFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                    RewardsFragment.a.d(aVar, requireContext, "profile_reward", true, null, null, 24, null);
                    return;
                case 2:
                    EventManager.s0(EventManager.f42463a, "feedback_click", null, 0L, 6, null);
                    Logger.f41511a.l(null);
                    IntentUtil intentUtil = IntentUtil.f48164a;
                    Context requireContext2 = ProfileFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
                    String string = ProfileFragment.this.getString(R$string.feedback_email);
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    String string2 = ProfileFragment.this.getString(R$string.profile_fragment_feedback);
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    ProfileFragment profileFragment = ProfileFragment.this;
                    int i11 = R$string.profile_fragment_feedback_content;
                    String t02 = AccountRepo.f43052a.t0();
                    DeviceUtil deviceUtil = DeviceUtil.f48146a;
                    String V = deviceUtil.V();
                    String string3 = profileFragment.getString(i11, t02, V, "Android-" + deviceUtil.O() + ',' + deviceUtil.C());
                    Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                    intentUtil.e(requireContext2, string, string2, string3);
                    return;
                case 3:
                    EventManager.s0(EventManager.f42463a, "language_click", null, 0L, 6, null);
                    FragmentContainer.a aVar2 = FragmentContainer.f45006p;
                    Context requireContext3 = ProfileFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext3, "requireContext(...)");
                    aVar2.b(requireContext3, com.startshorts.androidplayer.ui.fragment.a.f45609a.a(), new IFragmentBundle[0]);
                    return;
                case 4:
                    FragmentContainer.a aVar3 = FragmentContainer.f45006p;
                    Context requireContext4 = ProfileFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext4, "requireContext(...)");
                    aVar3.b(requireContext4, com.startshorts.androidplayer.ui.fragment.a.f45609a.k(), new IFragmentBundle[0]);
                    return;
                case 5:
                    FragmentContainer.a aVar4 = FragmentContainer.f45006p;
                    Context requireContext5 = ProfileFragment.this.requireContext();
                    Intrinsics.checkNotNullExpressionValue(requireContext5, "requireContext(...)");
                    aVar4.b(requireContext5, com.startshorts.androidplayer.ui.fragment.a.f45609a.g(), aVar4.a(), new IntBundle("fragment_container_top_margin", jk.g.a(44.0f)));
                    return;
                case 6:
                    if (!i0.f68447a.b()) {
                        EventManager.s0(EventManager.f42463a, "me_download_click", null, 0L, 6, null);
                        DownloadManageActivity.a aVar5 = DownloadManageActivity.f45123v;
                        Context requireContext6 = ProfileFragment.this.requireContext();
                        Intrinsics.checkNotNullExpressionValue(requireContext6, "requireContext(...)");
                        aVar5.a(requireContext6);
                        return;
                    }
                    return;
                case 7:
                    String str = (String) ng.e.f62912a.i("faqUrl", "");
                    if (str.length() == 0) {
                        str = "https://previewpage.shorttv.live/h5/FULL/1937404883520479233/1750748294";
                    }
                    Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str));
                    intent.setFlags(268435456);
                    u.f51776a.b().startActivity(intent);
                    return;
                default:
                    return;
            }
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "my_wallet_click", null, 0L, 6, null);
            if (AccountRepo.f43052a.w0()) {
                FragmentContainer.a aVar = FragmentContainer.f45006p;
                Context requireContext = ProfileFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                aVar.b(requireContext, com.startshorts.androidplayer.ui.fragment.a.f45609a.h(), new IFragmentBundle[0]);
            }
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ProfileFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/ProfileFragment\n*L\n1#1,20:1\n249#2,6:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f implements Function0<Unit> {
        public f() {
        }

        public final void a() {
            BaseActivity j10 = ProfileFragment.this.j();
            if (j10 != null) {
                DiscountSubscribeManager.f42447a.j(j10, new h(j10));
            }
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseActivity f46407a;

        h(BaseActivity baseActivity) {
            this.f46407a = baseActivity;
        }

        public final void a() {
            SubsDetailActivity.a.b(SubsDetailActivity.Q, this.f46407a, "profile", null, null, false, "current_membership_upgrade", 28, null);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class i implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46408a;

        i(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46408a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f46408a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46408a.invoke(obj);
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class j implements ProfileLoginGuide2DialogFragment.b {
        j() {
        }

        @Override // com.startshorts.androidplayer.ui.fragment.auth.ProfileLoginGuide2DialogFragment.b
        public void onDismiss() {
            ProfileFragment.this.D = null;
            ProfileFragment.this.P0(true);
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k extends yd.d {
        k() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "me_login_click", null, 0L, 6, null);
            LoginActivity.a aVar = LoginActivity.f44979t;
            Context requireContext = ProfileFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            aVar.a(requireContext, "login_page");
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class l implements ProfileSubsView.b {
        l() {
        }

        @Override // com.startshorts.androidplayer.ui.view.subs.ProfileSubsView.b
        public void a() {
            SubsDetailActivity.a aVar = SubsDetailActivity.Q;
            Context requireContext = ProfileFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            SubsDetailActivity.a.b(aVar, requireContext, "profile", null, null, false, "sub_portal", 28, null);
        }
    }

    /* compiled from: ProfileFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class m extends yd.d {
        m() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager.s0(EventManager.f42463a, "topup_click", null, 0L, 6, null);
            FragmentContainer.a aVar = FragmentContainer.f45006p;
            Context requireContext = ProfileFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            aVar.b(requireContext, com.startshorts.androidplayer.ui.fragment.a.f45609a.n(), new IFragmentBundle[0]);
        }
    }

    private final void A1(boolean z10) {
        String h10;
        BaseTextView baseTextView = ((FragmentProfileBinding) A()).f39595s;
        u uVar = u.f51776a;
        baseTextView.setText(uVar.d(R$string.normal_login_guide_dialog_fragment_log_in));
        b0.l(((FragmentProfileBinding) A()).f39585i);
        b0.l(((FragmentProfileBinding) A()).f39587k);
        if (z10) {
            if (this.L == null) {
                ViewStubProxy tip2Viewstub = ((FragmentProfileBinding) A()).f39592p;
                Intrinsics.checkNotNullExpressionValue(tip2Viewstub, "tip2Viewstub");
                this.L = e0.c(tip2Viewstub);
            }
            View view = this.L;
            if (view != null) {
                if (AccountRepo.f43052a.L0()) {
                    h10 = AccountManager.f41533a.i();
                } else {
                    h10 = AccountManager.f41533a.h();
                }
                if (h10.length() > 0 && !Intrinsics.areEqual(h10, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    ((TextView) view.findViewById(R$id.login_get_bonus)).setText(uVar.e(R$string.top_up_fragment_bonus, h10));
                    b0.l(view);
                } else {
                    b0.d(view);
                }
            }
        } else {
            View view2 = this.L;
            if (view2 != null) {
                b0.d(view2);
            }
        }
        ((FragmentProfileBinding) A()).f39586j.setClickable(true);
        ((FragmentProfileBinding) A()).f39586j.setOnClickListener(new k());
    }

    private final void B1() {
        ProfileSubsView profileSubsView;
        ProfileSubsView profileSubsView2 = this.F;
        if (profileSubsView2 == null) {
            ViewStubProxy subsViewstub = ((FragmentProfileBinding) A()).f39591o;
            Intrinsics.checkNotNullExpressionValue(subsViewstub, "subsViewstub");
            View c10 = e0.c(subsViewstub);
            if (c10 instanceof ProfileSubsView) {
                profileSubsView = (ProfileSubsView) c10;
            } else {
                profileSubsView = null;
            }
            this.F = profileSubsView;
            if (profileSubsView != null) {
                profileSubsView.setMListener(new l());
                profileSubsView.setMOnDiscountCountdownFinish(new Function0() { // from class: si.h
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit C1;
                        C1 = ProfileFragment.C1(ProfileFragment.this);
                        return C1;
                    }
                });
                b0.l(profileSubsView);
            }
        } else if (profileSubsView2 != null) {
            profileSubsView2.setVisibility(0);
        }
        j1();
        if (this.K) {
            this.K = false;
            EventManager.s0(EventManager.f42463a, "profile_pay_show", null, 0L, 6, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C1(ProfileFragment profileFragment) {
        profileFragment.j1();
        return Unit.f60915a;
    }

    private final void D1() {
        if (this.C == null) {
            BaseTextView baseTextView = ((FragmentProfileBinding) A()).f39593q;
            this.C = baseTextView;
            if (baseTextView != null) {
                baseTextView.setOnClickListener(new m());
            }
        }
        BaseTextView baseTextView2 = this.C;
        if (baseTextView2 != null) {
            baseTextView2.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E1(String str) {
        T0().W(new a.g(str));
    }

    private final void M0(int i10, boolean z10) {
        List<ProfileMenu> m10;
        Object obj;
        int i11;
        BaseAdapter<ProfileMenu> Z = Z();
        if (Z != null && (m10 = Z.m()) != null) {
            Iterator<T> it = m10.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((ProfileMenu) obj).getType() == i10) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            ProfileMenu profileMenu = (ProfileMenu) obj;
            if (profileMenu == null) {
                return;
            }
            int indexOf = m10.indexOf(profileMenu);
            if (indexOf < 0) {
                g("changeRedPointVisible not found -> profileMenu=" + profileMenu + ",visible=" + z10 + ",index=" + indexOf);
                return;
            }
            r("changeRedPointVisible -> profileMenu=" + profileMenu + ",visible=" + z10);
            if (z10) {
                i11 = 0;
            } else {
                i11 = 8;
            }
            profileMenu.setRedPointVisibility(i11);
            RecyclerView.Adapter<?> e02 = e0();
            if (e02 != null) {
                e02.notifyItemChanged(indexOf);
            }
        }
    }

    private final r N0() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "checkActBannerVisible", false, new ProfileFragment$checkActBannerVisible$1(this, null), 2, null);
    }

    private final void O0() {
        long L = DeviceUtil.f48146a.L();
        if (L - this.E > ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
            this.E = L;
            AccountRepo.Z0(AccountRepo.f43052a, false, null, null, 7, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P0(boolean z10) {
        if (AccountRepo.f43052a.O0()) {
            A1(z10);
        } else {
            b1();
        }
    }

    private final void Q0() {
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.k0()) {
            if (accountRepo.D0()) {
                c1();
            } else {
                B1();
            }
        } else if (accountRepo.z0() && !accountRepo.D0()) {
            B1();
        } else {
            c1();
        }
    }

    private final void R0() {
        if (AccountRepo.f43052a.w0()) {
            D1();
        } else {
            d1();
        }
    }

    private final void S0() {
        T0().W(new a.c("subs"));
    }

    private final BillingViewModel T0() {
        return (BillingViewModel) this.f46395y.getValue();
    }

    private final ComingSoonViewModel U0() {
        return (ComingSoonViewModel) this.f46396z.getValue();
    }

    private final ProfileViewModel V0() {
        return (ProfileViewModel) this.f46393w.getValue();
    }

    private final SubsViewModel W0() {
        return (SubsViewModel) this.f46394x.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0(int i10, String str, String str2, GPayPriceInfo gPayPriceInfo) {
        int i11;
        if (i10 == 2) {
            i11 = R$string.subscription_detail_activity_subs_success;
        } else {
            i11 = R$string.subscription_detail_activity_subs_update_success;
        }
        w(i11);
        Q0();
        W0().N(new a.b("profile_pay", str, str2, gPayPriceInfo, null, 0, 32, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0(List<? extends Object> list) {
        W0().N(new a.C0692a(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Z0() {
        r("hideActBanner");
        ViewStubProxy actBannerViewstub = ((FragmentProfileBinding) A()).f39577a;
        Intrinsics.checkNotNullExpressionValue(actBannerViewstub, "actBannerViewstub");
        e0.b(actBannerViewstub, 0, 1, null);
        this.J = null;
    }

    private final void a1() {
        ek.b bVar = this.H;
        if (bVar != null) {
            bVar.cancel();
        }
        this.H = null;
    }

    private final void b1() {
        b0.d(((FragmentProfileBinding) A()).f39585i);
        b0.d(((FragmentProfileBinding) A()).f39587k);
        View view = this.L;
        if (view != null) {
            b0.d(view);
        }
        ((FragmentProfileBinding) A()).f39586j.setOnClickListener(null);
        ((FragmentProfileBinding) A()).f39586j.setClickable(false);
    }

    private final void c1() {
        ProfileSubsView profileSubsView = this.F;
        if (profileSubsView != null) {
            profileSubsView.setVisibility(8);
        }
    }

    private final void d1() {
        BaseTextView baseTextView = this.C;
        if (baseTextView != null) {
            baseTextView.setVisibility(8);
        }
    }

    private final void e1() {
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        new fk.e(requireContext, viewLifecycleOwner, T0(), new b()).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetTextI18n"})
    public final void f1() {
        int e02 = AccountRepo.f43052a.e0();
        if (e02 > 99999) {
            ((FragmentProfileBinding) A()).f39580d.setText("99999+");
        } else {
            ((FragmentProfileBinding) A()).f39580d.setText(String.valueOf(e02));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetTextI18n"})
    public final void g1() {
        int g02 = AccountRepo.f43052a.g0();
        if (g02 > 99999) {
            ((FragmentProfileBinding) A()).f39582f.setText("99999+");
        } else {
            ((FragmentProfileBinding) A()).f39582f.setText(String.valueOf(g02));
        }
    }

    private final void h1() {
        ((FragmentProfileBinding) A()).f39583g.setOnClickListener(new c());
    }

    private final void i1() {
        Drawable drawable = ContextCompat.getDrawable(requireContext(), R$drawable.ic_profile_coins);
        if (drawable != null) {
            int a10 = fc.a.a(getContext(), 2.0f);
            drawable.setBounds(0, a10, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight() + a10);
            ((FragmentProfileBinding) A()).f39594r.setCompoundDrawablesRelative(drawable, null, null, null);
        }
        ((FragmentProfileBinding) A()).f39596t.setOnClickListener(new e());
    }

    private final void j1() {
        SubsSku p10 = DiscountSubscribeManager.f42447a.p();
        if (p10 != null) {
            ProfileSubsView profileSubsView = this.F;
            if (profileSubsView != null) {
                profileSubsView.G(p10);
                return;
            }
            return;
        }
        List<SubsSku> B = ud.a.f68411a.B();
        List<SubsSku> list = B;
        if (list != null && !list.isEmpty()) {
            SubsSku f10 = qf.h.f65328a.f(B);
            ProfileSubsView profileSubsView2 = this.F;
            if (profileSubsView2 != null) {
                profileSubsView2.G(f10);
                return;
            }
            return;
        }
        ProfileSubsView profileSubsView3 = this.F;
        if (profileSubsView3 != null) {
            profileSubsView3.G(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel k1(ProfileFragment profileFragment) {
        return (BillingViewModel) new ViewModelProvider(profileFragment).get(BillingViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComingSoonViewModel l1(ProfileFragment profileFragment) {
        return (ComingSoonViewModel) new ViewModelProvider(profileFragment).get(ComingSoonViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ProfileViewModel m1(final ProfileFragment profileFragment) {
        ProfileViewModel profileViewModel = (ProfileViewModel) new ViewModelProvider(profileFragment).get(ProfileViewModel.class);
        profileViewModel.D().observe(profileFragment, new i(new Function1() { // from class: si.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit n12;
                n12 = ProfileFragment.n1(ProfileFragment.this, (com.startshorts.androidplayer.viewmodel.profile.f) obj);
                return n12;
            }
        }));
        return profileViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1(ProfileFragment profileFragment, com.startshorts.androidplayer.viewmodel.profile.f fVar) {
        if (fVar instanceof f.a) {
            profileFragment.o0(((f.a) fVar).a());
        } else if (fVar instanceof f.b) {
            profileFragment.u1(((f.b) fVar).a());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SubsViewModel o1(final ProfileFragment profileFragment) {
        SubsViewModel subsViewModel = (SubsViewModel) new ViewModelProvider(profileFragment).get(SubsViewModel.class);
        subsViewModel.H().observe(profileFragment, new i(new Function1() { // from class: si.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit p12;
                p12 = ProfileFragment.p1(ProfileFragment.this, (com.startshorts.androidplayer.viewmodel.subs.b) obj);
                return p12;
            }
        }));
        return subsViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(ProfileFragment profileFragment, com.startshorts.androidplayer.viewmodel.subs.b bVar) {
        if (bVar instanceof b.C0693b) {
            if (!((b.C0693b) bVar).a()) {
                profileFragment.S0();
            }
        } else if (bVar instanceof b.c) {
            profileFragment.r1(((b.c) bVar).a());
        } else if (bVar instanceof b.g) {
            profileFragment.t1(((b.g) bVar).b());
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.a().getState() == 1) {
                profileFragment.U();
            } else {
                profileFragment.V(aVar.a().getMsg());
            }
        }
        return Unit.f60915a;
    }

    private final void q1() {
        AccountRepo.f43052a.O(this.A);
    }

    private final void r1(List<zc.g> list) {
        T0().W(new a.h(list));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s1() {
        W0().N(a.e.f49429a);
    }

    private final void t1(List<SubsSku> list) {
        int i10;
        SubsSku subsSku;
        Object next;
        boolean z10;
        if (list != null) {
            i10 = list.size();
        } else {
            i10 = 0;
        }
        if (i10 > 0) {
            SubsSku subsSku2 = null;
            if (list != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (((SubsSku) obj).getWeight() > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        arrayList.add(obj);
                    }
                }
                Iterator it = arrayList.iterator();
                if (!it.hasNext()) {
                    next = null;
                } else {
                    next = it.next();
                    if (it.hasNext()) {
                        int weight = ((SubsSku) next).getWeight();
                        do {
                            Object next2 = it.next();
                            int weight2 = ((SubsSku) next2).getWeight();
                            if (weight < weight2) {
                                next = next2;
                                weight = weight2;
                            }
                        } while (it.hasNext());
                    }
                }
                subsSku = (SubsSku) next;
            } else {
                subsSku = null;
            }
            ProfileSubsView profileSubsView = this.F;
            if (profileSubsView != null) {
                if (subsSku == null) {
                    if (list != null) {
                        subsSku2 = list.get(0);
                    }
                } else {
                    subsSku2 = subsSku;
                }
                profileSubsView.G(subsSku2);
            }
        }
    }

    private final void u1(int i10) {
        List<ProfileMenu> m10;
        ProfileMenuAdapter profileMenuAdapter;
        BaseAdapter<ProfileMenu> Z = Z();
        if (Z != null && (m10 = Z.m()) != null) {
            Iterator<ProfileMenu> it = m10.iterator();
            int i11 = 0;
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getType() == 1) {
                        break;
                    }
                    i11++;
                } else {
                    i11 = -1;
                    break;
                }
            }
            if (-1 != i11) {
                RecyclerView.Adapter<?> e02 = e0();
                if (e02 instanceof ProfileMenuAdapter) {
                    profileMenuAdapter = (ProfileMenuAdapter) e02;
                } else {
                    profileMenuAdapter = null;
                }
                if (profileMenuAdapter == null) {
                    return;
                }
                profileMenuAdapter.F(i10);
                profileMenuAdapter.notifyItemChanged(i11);
            }
        }
    }

    @SuppressLint({"SetTextI18n"})
    private final void v1(Account account) {
        if (account != null) {
            String headPic = account.getHeadPic();
            int a10 = jk.g.a(64.0f);
            kk.f fVar = kk.f.f60747a;
            CustomFrescoView customFrescoView = ((FragmentProfileBinding) A()).f39578b;
            FrescoConfig frescoConfig = new FrescoConfig();
            frescoConfig.setUrl(headPic);
            frescoConfig.setOssWidth(a10);
            frescoConfig.setOssHeight(a10);
            frescoConfig.setResizeWidth(a10);
            frescoConfig.setResizeHeight(a10);
            frescoConfig.setCircleCrop(true);
            frescoConfig.setPlaceholderResId(R$drawable.ic_default_avatar);
            Unit unit = Unit.f60915a;
            fVar.A(customFrescoView, frescoConfig);
            BaseTextView baseTextView = ((FragmentProfileBinding) A()).f39595s;
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            baseTextView.setText(account.getFormatNickname(requireContext));
            b1();
        }
        ((FragmentProfileBinding) A()).f39584h.setText(getString(R$string.profile_fragment_uid, (account == null || (r6 = account.getUserCode()) == null) ? "" : ""));
        g1();
        f1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w1(List<ActResource> list) {
        ActBanner actBanner;
        r("showActBanner");
        ViewStubProxy viewStubProxy = ((FragmentProfileBinding) A()).f39577a;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.g(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root instanceof ActBanner) {
            actBanner = (ActBanner) root;
        } else {
            actBanner = null;
        }
        ActBanner actBanner2 = actBanner;
        if (actBanner2 != null) {
            this.J = actBanner2;
            ud.b bVar = ud.b.f68412a;
            ResourceIndex l12 = bVar.l1();
            int i10 = 0;
            if (l12 == null) {
                bVar.z4(new ResourceIndex(0, DeviceUtil.f48146a.K()));
            } else {
                int index = l12.getIndex();
                if (!TimeUtil.f48175a.n(l12.getTime(), DeviceUtil.f48146a.K(), 1)) {
                    i10 = (index + 1) % list.size();
                }
            }
            ActBanner.B(actBanner2, new WeakReference(requireActivity()), "profile_banner", z.f51786a.m(), i10, new Function1() { // from class: si.g
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit x12;
                    x12 = ProfileFragment.x1(((Integer) obj).intValue());
                    return x12;
                }
            }, getLifecycle(), list, null, 128, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(int i10) {
        ud.b.f68412a.z4(new ResourceIndex(i10, DeviceUtil.f48146a.K()));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y1() {
        if (this.H == null) {
            Context requireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            this.H = new ek.b(requireContext);
        }
        ek.b bVar = this.H;
        if (bVar != null) {
            bVar.show();
        }
    }

    private final void z1() {
        MainActivity mainActivity;
        if (AccountRepo.f43052a.J0()) {
            return;
        }
        String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
        ud.b bVar = ud.b.f68412a;
        if (!bVar.L1(f10) || !CampaignRepo.f43678a.w()) {
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity instanceof MainActivity) {
            mainActivity = (MainActivity) activity;
        } else {
            mainActivity = null;
        }
        if (mainActivity != null) {
            mainActivity.o0();
        }
        bVar.Y4(f10, false);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "porfile_windows");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_windows_show", bundle, 0L, 4, null);
        EventManager.s0(eventManager, "login_guide_show", null, 0L, 6, null);
        ProfileLoginGuide2DialogFragment profileLoginGuide2DialogFragment = new ProfileLoginGuide2DialogFragment();
        profileLoginGuide2DialogFragment.b0("porfile_windows");
        profileLoginGuide2DialogFragment.a0(new j());
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
        profileLoginGuide2DialogFragment.v(childFragmentManager);
        this.D = profileLoginGuide2DialogFragment;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        ProfileMenuAdapter profileMenuAdapter = new ProfileMenuAdapter();
        profileMenuAdapter.B(new d());
        k0(profileMenuAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_profile;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        PermissionBottomSheetDialogFragment permissionBottomSheetDialogFragment = this.D;
        if (permissionBottomSheetDialogFragment == null) {
            super.onActivityResult(i10, i11, intent);
        } else if (permissionBottomSheetDialogFragment != null) {
            permissionBottomSheetDialogFragment.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        a1();
        ActBanner actBanner = this.J;
        if (actBanner != null) {
            actBanner.F();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        boolean z10 = true;
        this.K = true;
        FragmentExtKt.b(this, new f(), new g());
        z1();
        if (this.D != null) {
            z10 = false;
        }
        P0(z10);
        R0();
        Q0();
        AccountManager.f41533a.v();
        O0();
        U0().F(a.b.f48432a);
        N0();
        ActBanner actBanner = this.J;
        if (actBanner != null) {
            actBanner.H();
        }
        V0().G(e.b.f48981a);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "ProfileFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        boolean z10;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshAccountEvent");
        q1();
        v1(AccountRepo.f43052a.a0());
        if (this.D == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        P0(z10);
        R0();
        Q0();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshMyListRedPointEvent(@NotNull RefreshMyListRedPointEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        M0(5, !event.getShortIds().isEmpty());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        e1();
        q1();
        v1(AccountRepo.f43052a.a0());
        i1();
        h1();
        ProfileViewModel V0 = V0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        V0.G(new e.a(requireContext));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        ProfileLoginButton profileLoginButton = this.B;
        if (profileLoginButton != null) {
            profileLoginButton.release();
        }
        AccountRepo.f43052a.d1(this.A);
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
