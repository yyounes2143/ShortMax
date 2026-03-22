package com.startshorts.androidplayer.ui.fragment.base;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
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
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
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
/* compiled from: BaseDialogFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBaseDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment\n+ 2 ColorDrawable.kt\nandroidx/core/graphics/drawable/ColorDrawableKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,279:1\n28#2:280\n15#3,9:281\n*S KotlinDebug\n*F\n+ 1 BaseDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment\n*L\n106#1:280\n131#1:281,9\n*E\n"})
/* loaded from: classes7.dex */
public class BaseDialogFragment<VDB extends ViewDataBinding> extends DialogFragment {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f45693h = new a(null);

    /* renamed from: a  reason: collision with root package name */
    protected VDB f45694a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45695b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f45696c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45697d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f45698e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45699f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private b f45700g;

    /* compiled from: BaseDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BaseDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void onDismiss();
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 BaseDialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment\n*L\n1#1,20:1\n132#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f45702b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f45703c;

        public c(String str, int i10) {
            this.f45702b = str;
            this.f45703c = i10;
        }

        public final void a() {
            Toast.makeText(BaseDialogFragment.this.requireContext(), this.f45702b, this.f45703c).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    public static /* synthetic */ void A(BaseDialogFragment baseDialogFragment, int i10, int i11, int i12, Object obj) {
        if (obj == null) {
            if ((i12 & 2) != 0) {
                i11 = 0;
            }
            baseDialogFragment.y(i10, i11);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toast");
    }

    public static /* synthetic */ void B(BaseDialogFragment baseDialogFragment, String str, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 2) != 0) {
                i10 = 0;
            }
            baseDialogFragment.z(str, i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toast");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(BaseDialogFragment baseDialogFragment, String str, int i10) {
        try {
            FragmentExtKt.b(baseDialogFragment, new c(str, i10), new d());
        } catch (Exception unused) {
        }
    }

    private final void D() {
        if (this.f45695b) {
            f("unregisterEventBus");
            this.f45695b = false;
            au.c.d().r(this);
        }
    }

    private final void s() {
        if (!this.f45695b) {
            f("registerEventBus");
            this.f45695b = true;
            au.c.d().p(this);
            return;
        }
        g("already register EventBus");
    }

    public final void E(float f10) {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = f10;
            window.setAttributes(attributes);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        try {
            super.dismiss();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BaseDialogFragment", "dismiss exception -> " + e10.getMessage());
        }
    }

    public final void f(@Nullable String str) {
        if (id.a.f53392a.c()) {
            Logger.f41511a.h(o(), str);
        }
    }

    public final void g(@Nullable String str) {
        Logger.f41511a.e(o(), str);
    }

    @Nullable
    public final BaseActivity h() {
        FragmentActivity activity = getActivity();
        if (activity instanceof BaseActivity) {
            return (BaseActivity) activity;
        }
        return null;
    }

    public float i() {
        return 0.7f;
    }

    public int j() {
        return -2;
    }

    @LayoutRes
    public int k() {
        return 0;
    }

    public int l() {
        return 17;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final VDB m() {
        VDB vdb = this.f45694a;
        if (vdb != null) {
            return vdb;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mBinding");
        return null;
    }

    public boolean n() {
        return false;
    }

    @NotNull
    public String o() {
        return "BaseDialogFragment";
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        f("onCreate");
        this.f45699f = false;
        if (n()) {
            s();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        if (this.f45694a == null) {
            v(DataBindingUtil.inflate(inflater, k(), null, false));
        } else {
            View root = m().getRoot();
            Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            b0.f(root);
        }
        return m().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        if (!this.f45699f) {
            f("onDestroy");
            this.f45699f = true;
            t();
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
        if (this.f45694a != null) {
            m().unbind();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        b bVar = this.f45700g;
        if (bVar != null) {
            bVar.onDismiss();
        }
        this.f45700g = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f45696c = true;
        super.onPause();
        f("onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        f("onResume");
        this.f45696c = false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        f("onStart");
        this.f45697d = false;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        f("onStop");
        this.f45697d = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        f("onViewCreated");
        u();
    }

    public int p() {
        return -2;
    }

    public final void q(@Nullable String str) {
        Logger.f41511a.h(o(), str);
    }

    public final boolean r() {
        return this.f45696c;
    }

    public void t() {
        this.f45698e = true;
        D();
    }

    public void u() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setGravity(l());
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = i();
            attributes.width = p();
            attributes.height = j();
            window.setAttributes(attributes);
        }
    }

    protected final void v(@NotNull VDB vdb) {
        Intrinsics.checkNotNullParameter(vdb, "<set-?>");
        this.f45694a = vdb;
    }

    public final void w(@Nullable b bVar) {
        this.f45700g = bVar;
    }

    public final boolean x(@NotNull FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        try {
            if (!ae.a.f627a.h()) {
                return false;
            }
            show(fragmentManager, "BaseDialogFragment");
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("BaseDialogFragment", "show exception -> " + e10.getMessage());
            return false;
        }
    }

    public final void y(int i10, int i11) {
        z(getString(i10), i11);
    }

    public final void z(@Nullable final String str, final int i10) {
        if (str != null && str.length() != 0) {
            h0.f51735a.e(new Runnable() { // from class: oi.b
                @Override // java.lang.Runnable
                public final void run() {
                    BaseDialogFragment.C(BaseDialogFragment.this, str, i10);
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
