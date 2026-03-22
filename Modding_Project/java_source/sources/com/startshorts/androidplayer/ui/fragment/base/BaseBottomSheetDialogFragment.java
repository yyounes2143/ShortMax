package com.startshorts.androidplayer.ui.fragment.base;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;
import androidx.annotation.LayoutRes;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.R$style;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import fk.h0;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseBottomSheetDialogFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBaseBottomSheetDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseBottomSheetDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,260:1\n15#2,9:261\n*S KotlinDebug\n*F\n+ 1 BaseBottomSheetDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment\n*L\n220#1:261,9\n*E\n"})
/* loaded from: classes7.dex */
public class BaseBottomSheetDialogFragment<VDB extends ViewDataBinding> extends PermissionBottomSheetDialogFragment {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f45683l = new a(null);

    /* renamed from: e  reason: collision with root package name */
    protected VDB f45684e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45685f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45686g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f45687h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f45688i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f45689j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private b f45690k;

    /* compiled from: BaseBottomSheetDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BaseBottomSheetDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void onDismiss();
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 BaseBottomSheetDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment\n*L\n1#1,20:1\n221#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f45692b;

        public c(String str) {
            this.f45692b = str;
        }

        public final void a() {
            Toast.makeText(BaseBottomSheetDialogFragment.this.requireContext(), this.f45692b, 0).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    private final void r() {
        if (!this.f45685f) {
            i("registerEventBus");
            this.f45685f = true;
            au.c.d().p(this);
            return;
        }
        j("already register EventBus");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(BaseBottomSheetDialogFragment baseBottomSheetDialogFragment, String str) {
        try {
            FragmentExtKt.b(baseBottomSheetDialogFragment, new c(str), new d());
        } catch (Exception unused) {
        }
    }

    private final void z() {
        if (this.f45685f) {
            i("unregisterEventBus");
            this.f45685f = false;
            au.c.d().r(this);
        }
    }

    public final void A(float f10) {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = f10;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BaseBottomSheetDialogFragment", "dismiss exception -> " + e10.getMessage());
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        try {
            super.dismissAllowingStateLoss();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BaseBottomSheetDialogFragment", "dismissAllowingStateLoss exception -> " + e10.getMessage());
        }
    }

    public final void i(@Nullable String str) {
        if (id.a.f53392a.c()) {
            Logger.f41511a.h(p(), str);
        }
    }

    public final void j(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(p(), error);
    }

    @Nullable
    public final BaseActivity k() {
        FragmentActivity activity = getActivity();
        if (activity instanceof BaseActivity) {
            return (BaseActivity) activity;
        }
        return null;
    }

    public float l() {
        return 0.7f;
    }

    @LayoutRes
    public int m() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final VDB n() {
        VDB vdb = this.f45684e;
        if (vdb != null) {
            return vdb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBinding");
        return null;
    }

    public boolean o() {
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        i("onCreate");
        this.f45689j = false;
        setStyle(0, R$style.BottomSheetDialogTheme_TransparentBackground);
        if (o()) {
            r();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        if (this.f45684e == null) {
            t(DataBindingUtil.inflate(inflater, m(), null, false));
        } else {
            View root = n().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            b0.f(root);
        }
        return n().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        if (!this.f45689j) {
            i("onDestroy");
            this.f45689j = true;
            s();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        ViewGroup viewGroup;
        View view = getView();
        if (view instanceof ViewGroup) {
            viewGroup = (ViewGroup) view;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDestroyView();
        i("onDestroyView");
        if (this.f45684e != null) {
            n().unbind();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        b bVar = this.f45690k;
        if (bVar != null) {
            bVar.onDismiss();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f45686g = true;
        super.onPause();
        i("onPause");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        i("onResume");
        this.f45686g = false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        i("onStart");
        this.f45687h = false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        i("onStop");
        this.f45687h = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        i("onViewCreated");
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = l();
            window.setAttributes(attributes);
        }
    }

    @NotNull
    public String p() {
        return "BaseBottomSheetDialogFragment";
    }

    public final void q(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(p(), info);
    }

    public void s() {
        this.f45688i = true;
        this.f45690k = null;
        z();
    }

    protected final void t(@NotNull VDB vdb) {
        Intrinsics.checkNotNullParameter(vdb, "<set-?>");
        this.f45684e = vdb;
    }

    public final void u(@Nullable b bVar) {
        this.f45690k = bVar;
    }

    public final boolean v(@NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        try {
            show(fragmentManager, "BaseBottomSheetDialogFragment");
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BaseBottomSheetDialogFragment", "show exception -> " + e10.getMessage());
            return false;
        }
    }

    public final void w(int i10) {
        x(getString(i10));
    }

    public final void x(@Nullable final String str) {
        if (str != null && str.length() != 0) {
            h0.f51735a.e(new Runnable() { // from class: oi.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseBottomSheetDialogFragment.y(BaseBottomSheetDialogFragment.this, str);
                }
            });
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class d implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
