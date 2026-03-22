package com.startshorts.androidplayer.ui.fragment.mylist;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.FragmentMyListBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.auth.ProfileLoginGuide2DialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment;
import com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MyListFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MyListFragment extends BaseVDBFragment<FragmentMyListBinding> {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f46298k = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private PermissionBottomSheetDialogFragment f46299i;

    /* renamed from: j  reason: collision with root package name */
    private final int f46300j = R$layout.fragment_my_list;

    /* compiled from: MyListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MyListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements ProfileLoginGuide2DialogFragment.b {
        b() {
        }

        @Override // com.startshorts.androidplayer.ui.fragment.auth.ProfileLoginGuide2DialogFragment.b
        public void onDismiss() {
            MyListFragment.this.f46299i = null;
        }
    }

    private final void F() {
        A().f39528d.setTextSize(2, 20.0f);
        ed.a aVar = ed.a.f51339a;
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        aVar.b(requireActivity, true);
        ConstraintLayout.LayoutParams layoutParams = new ConstraintLayout.LayoutParams(-2, -2);
        if (!(getContext() instanceof MainActivity)) {
            ConstraintLayout constraintLayout = A().f39529e;
            ImageView imageView = new ImageView(requireContext());
            imageView.setImageResource(R$drawable.ic_toolbar_back);
            fk.z zVar = fk.z.f51786a;
            ConstraintLayout.LayoutParams layoutParams2 = new ConstraintLayout.LayoutParams(zVar.h(), zVar.h());
            layoutParams2.startToStart = 0;
            layoutParams2.topToTop = 0;
            layoutParams2.bottomToBottom = 0;
            layoutParams2.setMarginStart(zVar.d());
            imageView.setLayoutParams(layoutParams2);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.ui.fragment.mylist.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MyListFragment.G(MyListFragment.this, view);
                }
            });
            constraintLayout.addView(imageView);
            BaseTextView baseTextView = A().f39528d;
            layoutParams.startToStart = 0;
            layoutParams.endToEnd = 0;
            layoutParams.topToTop = 0;
            layoutParams.bottomToBottom = 0;
            baseTextView.setLayoutParams(layoutParams);
        } else {
            ConstraintLayout toolbarView = A().f39529e;
            Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
            jk.b0.g(toolbarView, DeviceUtil.f48146a.J());
        }
        BaseTextView baseTextView2 = A().f39528d;
        layoutParams.startToStart = 0;
        layoutParams.topToTop = 0;
        layoutParams.bottomToBottom = 0;
        layoutParams.setMarginStart(fk.z.f51786a.d());
        baseTextView2.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(MyListFragment myListFragment, View view) {
        myListFragment.requireActivity().onBackPressed();
    }

    private final void H() {
        MainActivity mainActivity;
        if (AccountRepo.f43052a.J0()) {
            return;
        }
        String f10 = TimeUtil.f48175a.f(jk.f.a(new Date()));
        ud.b bVar = ud.b.f68412a;
        if (!bVar.J1(f10) || !CampaignRepo.f43678a.w()) {
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
        bVar.W4(f10, false);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", "mylist_window");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "login_windows_show", bundle, 0L, 4, null);
        EventManager.s0(eventManager, "login_guide_show", null, 0L, 6, null);
        ProfileLoginGuide2DialogFragment profileLoginGuide2DialogFragment = new ProfileLoginGuide2DialogFragment();
        profileLoginGuide2DialogFragment.b0("mylist_window");
        profileLoginGuide2DialogFragment.a0(new b());
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
        profileLoginGuide2DialogFragment.v(childFragmentManager);
        this.f46299i = profileLoginGuide2DialogFragment;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f46300j;
    }

    @Override // androidx.fragment.app.Fragment
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        PermissionBottomSheetDialogFragment permissionBottomSheetDialogFragment = this.f46299i;
        if (permissionBottomSheetDialogFragment == null) {
            super.onActivityResult(i10, i11, intent);
        } else if (permissionBottomSheetDialogFragment != null) {
            permissionBottomSheetDialogFragment.onActivityResult(i10, i11, intent);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        H();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "MyListFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        F();
        getChildFragmentManager().beginTransaction().replace(R$id.fl_container, new MyListMixFragment()).commitAllowingStateLoss();
    }
}
