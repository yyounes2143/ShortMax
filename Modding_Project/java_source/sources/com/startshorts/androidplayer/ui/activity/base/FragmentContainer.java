package com.startshorts.androidplayer.ui.activity.base;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewStubProxy;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.bundle.BooleanBundle;
import com.startshorts.androidplayer.bean.bundle.FragmentBundle;
import com.startshorts.androidplayer.bean.bundle.IFragmentBundle;
import com.startshorts.androidplayer.bean.bundle.IntBundle;
import com.startshorts.androidplayer.bean.bundle.LongBundle;
import com.startshorts.androidplayer.bean.bundle.SerializableBundle;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.databinding.ActivityFragmentContainerBinding;
import com.startshorts.androidplayer.ui.fragment.base.BaseFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.List;
import jk.e0;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: FragmentContainer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFragmentContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentContainer.kt\ncom/startshorts/androidplayer/ui/activity/base/FragmentContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,238:1\n256#2,2:239\n*S KotlinDebug\n*F\n+ 1 FragmentContainer.kt\ncom/startshorts/androidplayer/ui/activity/base/FragmentContainer\n*L\n86#1:239,2\n*E\n"})
/* loaded from: classes7.dex */
public final class FragmentContainer extends PermissionActivity<ActivityFragmentContainerBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f45006p = new a(null);
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final IntBundle f45007q = new IntBundle("fragment_type", 1);

    /* compiled from: FragmentContainer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final IntBundle a() {
            return FragmentContainer.f45007q;
        }

        public final void b(@NotNull Context context, @NotNull String fragmentName, @NotNull IFragmentBundle... bundles) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(fragmentName, "fragmentName");
            Intrinsics.checkNotNullParameter(bundles, "bundles");
            Intent intent = new Intent(context, FragmentContainer.class);
            intent.putExtra("fragment_name", fragmentName);
            List x12 = n.x1(bundles);
            if (!x12.isEmpty()) {
                intent.putExtra("fragment_bundle", new FragmentBundle(x12));
            }
            context.startActivity(intent);
        }

        @NotNull
        public final Intent c(@NotNull Context context, @NotNull String fragmentName, @NotNull IFragmentBundle... bundles) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(fragmentName, "fragmentName");
            Intrinsics.checkNotNullParameter(bundles, "bundles");
            Intent intent = new Intent(context, FragmentContainer.class);
            intent.putExtra("fragment_name", fragmentName);
            List x12 = n.x1(bundles);
            if (!x12.isEmpty()) {
                intent.putExtra("fragment_bundle", new FragmentBundle(x12));
            }
            return intent;
        }

        private a() {
        }
    }

    /* compiled from: FragmentContainer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            FragmentContainer.this.onBackPressed();
        }
    }

    private final BaseFragment L() {
        Fragment N = N();
        if (N instanceof BaseFragment) {
            return (BaseFragment) N;
        }
        return null;
    }

    private final Bundle M() {
        List<IFragmentBundle> list;
        FragmentBundle fragmentBundle = (FragmentBundle) getIntent().getSerializableExtra("fragment_bundle");
        if (fragmentBundle != null) {
            list = fragmentBundle.getList();
        } else {
            list = null;
        }
        if (list == null) {
            return null;
        }
        s(fragmentBundle.toString());
        Bundle bundle = new Bundle();
        for (IFragmentBundle iFragmentBundle : fragmentBundle.getList()) {
            if (iFragmentBundle instanceof StringBundle) {
                StringBundle stringBundle = (StringBundle) iFragmentBundle;
                bundle.putString(stringBundle.getKey(), stringBundle.getValue());
            } else if (iFragmentBundle instanceof IntBundle) {
                IntBundle intBundle = (IntBundle) iFragmentBundle;
                bundle.putInt(intBundle.getKey(), intBundle.getValue());
            } else if (iFragmentBundle instanceof LongBundle) {
                LongBundle longBundle = (LongBundle) iFragmentBundle;
                bundle.putLong(longBundle.getKey(), longBundle.getValue());
            } else if (iFragmentBundle instanceof BooleanBundle) {
                BooleanBundle booleanBundle = (BooleanBundle) iFragmentBundle;
                bundle.putBoolean(booleanBundle.getKey(), booleanBundle.getValue());
            } else if (iFragmentBundle instanceof SerializableBundle) {
                SerializableBundle serializableBundle = (SerializableBundle) iFragmentBundle;
                bundle.putSerializable(serializableBundle.getKey(), serializableBundle.getValue());
            }
        }
        return bundle;
    }

    private final Fragment N() {
        return getSupportFragmentManager().findFragmentByTag("FragmentContainer");
    }

    private final void O(Bundle bundle) {
        int i10;
        ViewGroup viewGroup;
        int i11;
        ed.a.f51339a.b(this, true);
        if (bundle != null) {
            i10 = bundle.getInt("fragment_type", 0);
        } else {
            i10 = 0;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                ViewParent parent = ((ActivityFragmentContainerBinding) E()).f38260e.getParent();
                if (parent instanceof ViewGroup) {
                    viewGroup = (ViewGroup) parent;
                } else {
                    viewGroup = null;
                }
                if (viewGroup != null) {
                    int childCount = viewGroup.getChildCount();
                    for (int i12 = 0; i12 < childCount; i12++) {
                        View childAt = viewGroup.getChildAt(i12);
                        Intrinsics.checkNotNull(childAt);
                        if (Intrinsics.areEqual(childAt, ((ActivityFragmentContainerBinding) E()).f38256a)) {
                            i11 = 0;
                        } else {
                            i11 = 8;
                        }
                        childAt.setVisibility(i11);
                    }
                }
                int J = DeviceUtil.f48146a.J();
                FrameLayout frameLayout = ((ActivityFragmentContainerBinding) E()).f38256a;
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) layoutParams;
                if (bundle != null) {
                    J = bundle.getInt("fragment_container_top_margin", J);
                }
                ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin = J;
                frameLayout.setLayoutParams(layoutParams2);
                return;
            }
            return;
        }
        int J2 = DeviceUtil.f48146a.J();
        View view = ((ActivityFragmentContainerBinding) E()).f38261f;
        ViewGroup.LayoutParams layoutParams3 = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.LayoutParams layoutParams4 = (ConstraintLayout.LayoutParams) layoutParams3;
        if (bundle != null) {
            J2 = bundle.getInt("fragment_container_top_margin", J2);
        }
        ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin = J2;
        view.setLayoutParams(layoutParams4);
        P();
    }

    private final void P() {
        ((ActivityFragmentContainerBinding) E()).f38258c.setOnClickListener(new b());
    }

    private final void Q(Bundle bundle) {
        String stringExtra = getIntent().getStringExtra("fragment_name");
        if (stringExtra != null && stringExtra.length() != 0) {
            Fragment instantiate = getSupportFragmentManager().getFragmentFactory().instantiate(getClassLoader(), stringExtra);
            Intrinsics.checkNotNullExpressionValue(instantiate, "instantiate(...)");
            if (bundle != null) {
                bundle.setClassLoader(instantiate.getClass().getClassLoader());
                instantiate.setArguments(bundle);
            }
            R(instantiate);
        }
    }

    private final void R(Fragment fragment) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        Fragment findFragmentById = supportFragmentManager.findFragmentById(R$id.fragment_container);
        if (fragment != null && findFragmentById == null) {
            FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
            beginTransaction.replace(R$id.fragment_container, fragment, "FragmentContainer");
            beginTransaction.setMaxLifecycle(fragment, Lifecycle.State.RESUMED);
            beginTransaction.commitNowAllowingStateLoss();
        }
    }

    public final void S(int i10, @NotNull View.OnClickListener onClickListener) {
        BaseTextView baseTextView;
        Intrinsics.checkNotNullParameter(onClickListener, "onClickListener");
        ViewStubProxy viewStubProxy = ((ActivityFragmentContainerBinding) E()).f38257b;
        Intrinsics.checkNotNull(viewStubProxy);
        e0.h(viewStubProxy);
        View root = viewStubProxy.getRoot();
        if (root instanceof BaseTextView) {
            baseTextView = (BaseTextView) root;
        } else {
            baseTextView = null;
        }
        if (baseTextView != null) {
            baseTextView.setText(getString(i10));
            baseTextView.setOnClickListener(onClickListener);
        }
    }

    public final void T(@Nullable String str) {
        ((ActivityFragmentContainerBinding) E()).f38260e.setText(str);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_fragment_container;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        BaseFragment L = L();
        if (L != null) {
            L.onActivityResult(i10, i11, intent);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @c
    public void onBackPressed() {
        BaseFragment L = L();
        if (L != null) {
            if (L.i()) {
                if (L.k()) {
                    L.s();
                    return;
                } else {
                    super.onBackPressed();
                    return;
                }
            }
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle M = M();
        O(M);
        Q(M);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "FragmentContainer";
    }
}
