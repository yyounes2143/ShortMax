package com.startshorts.androidplayer.ui.fragment.base;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseFragment;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import fk.h0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,215:1\n15#2,9:216\n*S KotlinDebug\n*F\n+ 1 BaseFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseFragment\n*L\n112#1:216,9\n*E\n"})
/* loaded from: classes7.dex */
public class BaseFragment extends Fragment {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f45704g = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f45705a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f45706b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f45707c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45708d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f45709e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45710f;

    /* compiled from: BaseFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 BaseFragment.kt\ncom/startshorts/androidplayer/ui/fragment/base/BaseFragment\n*L\n1#1,20:1\n113#2,2:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f45712b;

        public b(String str) {
            this.f45712b = str;
        }

        public final void a() {
            Toast.makeText(BaseFragment.this.requireContext(), this.f45712b, 0).show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    private final void u() {
        if (!this.f45705a) {
            if (id.a.f53392a.c()) {
                r("registerEventBus");
            }
            this.f45705a = true;
            au.c.d().p(this);
            return;
        }
        g("already register EventBus");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(BaseFragment baseFragment, String str) {
        try {
            FragmentExtKt.b(baseFragment, new b(str), new c());
        } catch (Exception unused) {
        }
    }

    private final void z() {
        if (this.f45705a) {
            if (id.a.f53392a.c()) {
                r("unregisterEventBus");
            }
            this.f45705a = false;
            au.c.d().r(this);
        }
    }

    public final void f(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        if (id.a.f53392a.c()) {
            Logger.f41511a.h(q(), info);
        }
    }

    public final void g(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(q(), error);
    }

    public final void h() {
        FragmentActivity activity = getActivity();
        if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
            activity.finish();
        }
    }

    public boolean i() {
        return true;
    }

    @Nullable
    public final BaseActivity j() {
        FragmentActivity activity = getActivity();
        if (activity instanceof BaseActivity) {
            return (BaseActivity) activity;
        }
        return null;
    }

    public boolean k() {
        return false;
    }

    @LayoutRes
    public int l() {
        return 0;
    }

    public final boolean m() {
        return this.f45706b;
    }

    public final boolean n() {
        return this.f45707c;
    }

    public boolean o() {
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (id.a.f53392a.c()) {
            r("onCreate");
        }
        this.f45709e = false;
        this.f45710f = false;
        if (o()) {
            u();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        if (!this.f45710f) {
            if (id.a.f53392a.c()) {
                r("onDestroy");
            }
            this.f45710f = true;
            this.f45706b = false;
            v();
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
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
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        this.f45707c = true;
        super.onPause();
        r("onPause");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        r("onResume");
        this.f45707c = false;
        if (p() && !this.f45706b) {
            this.f45706b = true;
            t();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (id.a.f53392a.c()) {
            r("onStart");
        }
        this.f45708d = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        if (id.a.f53392a.c()) {
            r("onStop");
        }
        this.f45708d = true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (id.a.f53392a.c()) {
            r("onViewCreated");
        }
    }

    public boolean p() {
        return false;
    }

    @NotNull
    public String q() {
        return "BaseFragment";
    }

    public final void r(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(q(), info);
    }

    public void t() {
        r("onFirstUserVisible");
    }

    public void v() {
        this.f45709e = true;
        z();
    }

    public final void w(int i10) {
        x(getString(i10));
    }

    public final void x(@Nullable final String str) {
        if (str != null && str.length() != 0) {
            h0.f51735a.e(new Runnable() { // from class: oi.c
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFragment.y(BaseFragment.this, str);
                }
            });
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    public void s() {
    }
}
