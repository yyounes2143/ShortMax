package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.databinding.DialogFragmentComingSoonDetailBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.FoldableTextArea;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonFullWidthChip;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComingSoonDetailDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ComingSoonDetailDialogFragment extends BottomSheetPageStateFragment<DialogFragmentComingSoonDetailBinding> {
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final a f45847t = new a(null);
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private static ComingSoonDetailDialogFragment f45848u;

    /* renamed from: o  reason: collision with root package name */
    private final int f45849o;

    /* renamed from: p  reason: collision with root package name */
    private final int f45850p;

    /* renamed from: q  reason: collision with root package name */
    private final float f45851q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private DiscoverShorts f45852r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private DiscoverTab f45853s;

    /* compiled from: ComingSoonDetailDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull FragmentManager supportFragmentManager, @NotNull DiscoverShorts shorts, @Nullable DiscoverTab discoverTab) {
            Intrinsics.checkNotNullParameter(supportFragmentManager, "supportFragmentManager");
            Intrinsics.checkNotNullParameter(shorts, "shorts");
            ComingSoonDetailDialogFragment comingSoonDetailDialogFragment = ComingSoonDetailDialogFragment.f45848u;
            if (comingSoonDetailDialogFragment != null) {
                comingSoonDetailDialogFragment.dismiss();
            }
            ComingSoonDetailDialogFragment.f45848u = null;
            ComingSoonDetailDialogFragment comingSoonDetailDialogFragment2 = new ComingSoonDetailDialogFragment(shorts, discoverTab);
            ComingSoonDetailDialogFragment.f45848u = comingSoonDetailDialogFragment2;
            comingSoonDetailDialogFragment2.v(supportFragmentManager);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", "coming_soon");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "introduction_pop_show", bundle, 0L, 4, null);
        }

        private a() {
        }
    }

    public ComingSoonDetailDialogFragment() {
        this.f45849o = jk.g.a(80.0f);
        this.f45850p = jk.g.a(108.0f);
        this.f45851q = fk.z.f51786a.r();
    }

    private final void Q(DiscoverShorts discoverShorts) {
        kk.f fVar = kk.f.f60747a;
        CustomFrescoView customFrescoView = ((DialogFragmentComingSoonDetailBinding) n()).f38815b;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(discoverShorts.getPicUrl());
        id.c cVar = id.c.f53397a;
        frescoConfig.setOssWidth(cVar.b());
        frescoConfig.setOssHeight(cVar.a());
        frescoConfig.setResizeWidth(this.f45849o);
        frescoConfig.setResizeHeight(this.f45850p);
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f45851q);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    public final void R() {
        DiscoverShorts discoverShorts = this.f45852r;
        if (discoverShorts == null) {
            return;
        }
        Q(discoverShorts);
        ze.c cVar = ze.c.f71647a;
        FragmentManager parentFragmentManager = getParentFragmentManager();
        BaseTextView shortsNameTv = ((DialogFragmentComingSoonDetailBinding) n()).f38818e;
        Intrinsics.checkNotNullExpressionValue(shortsNameTv, "shortsNameTv");
        BaseTextView dateTv = ((DialogFragmentComingSoonDetailBinding) n()).f38816c;
        Intrinsics.checkNotNullExpressionValue(dateTv, "dateTv");
        ComingSoonFullWidthChip comingSoonButton = ((DialogFragmentComingSoonDetailBinding) n()).f38814a;
        Intrinsics.checkNotNullExpressionValue(comingSoonButton, "comingSoonButton");
        ze.c.e(cVar, parentFragmentManager, null, discoverShorts, shortsNameTv, dateTv, comingSoonButton, null, null, this.f45853s, false, 704, null);
        FoldableTextArea foldableTextArea = ((DialogFragmentComingSoonDetailBinding) n()).f38817d;
        String summary = discoverShorts.getSummary();
        if (summary == null) {
            summary = "";
        }
        FoldableTextArea.f(foldableTextArea, 4, 6, summary, 0, 8, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_coming_soon_detail;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        f45848u = null;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        f45848u = null;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        R();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ComingSoonDetailDialogFragment";
    }

    public ComingSoonDetailDialogFragment(@NotNull DiscoverShorts shorts, @Nullable DiscoverTab discoverTab) {
        Intrinsics.checkNotNullParameter(shorts, "shorts");
        this.f45849o = jk.g.a(80.0f);
        this.f45850p = jk.g.a(108.0f);
        this.f45851q = fk.z.f51786a.r();
        this.f45852r = shorts;
        this.f45853s = discoverTab;
    }
}
