package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.LayoutRes;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.login.LoginClient;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LoginFragment.kt */
@Metadata
/* loaded from: classes3.dex */
public class LoginFragment extends Fragment {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f16489f = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f16490a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private LoginClient.Request f16491b;

    /* renamed from: c  reason: collision with root package name */
    private LoginClient f16492c;

    /* renamed from: d  reason: collision with root package name */
    private ActivityResultLauncher<Intent> f16493d;

    /* renamed from: e  reason: collision with root package name */
    private View f16494e;

    /* compiled from: LoginFragment.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: LoginFragment.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements LoginClient.a {
        b() {
        }

        @Override // com.facebook.login.LoginClient.a
        public void a() {
            LoginFragment.this.u();
        }

        @Override // com.facebook.login.LoginClient.a
        public void b() {
            LoginFragment.this.n();
        }
    }

    private final Function1<ActivityResult, Unit> m(final FragmentActivity fragmentActivity) {
        return new Function1<ActivityResult, Unit>() { // from class: com.facebook.login.LoginFragment$getLoginMethodHandlerCallback$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            public final void b(@NotNull ActivityResult result) {
                Intrinsics.checkNotNullParameter(result, "result");
                if (result.getResultCode() == -1) {
                    LoginFragment.this.l().B(LoginClient.f16448m.b(), result.getResultCode(), result.getData());
                } else {
                    fragmentActivity.finish();
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ActivityResult activityResult) {
                b(activityResult);
                return Unit.f60915a;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        View view = this.f16494e;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
            view = null;
        }
        view.setVisibility(8);
        s();
    }

    private final void o(Activity activity) {
        ComponentName callingActivity = activity.getCallingActivity();
        if (callingActivity == null) {
            return;
        }
        this.f16490a = callingActivity.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(LoginFragment this$0, LoginClient.Result outcome) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(outcome, "outcome");
        this$0.r(outcome);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(Function1 tmp0, ActivityResult activityResult) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(activityResult);
    }

    private final void r(LoginClient.Result result) {
        int i10;
        this.f16491b = null;
        if (result.f16481a == LoginClient.Result.Code.CANCEL) {
            i10 = 0;
        } else {
            i10 = -1;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.facebook.LoginFragment:Result", result);
        Intent intent = new Intent();
        intent.putExtras(bundle);
        FragmentActivity activity = getActivity();
        if (isAdded() && activity != null) {
            activity.setResult(i10, intent);
            activity.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        View view = this.f16494e;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("progressBar");
            view = null;
        }
        view.setVisibility(0);
        t();
    }

    @NotNull
    protected LoginClient i() {
        return new LoginClient(this);
    }

    @NotNull
    public final ActivityResultLauncher<Intent> j() {
        ActivityResultLauncher<Intent> activityResultLauncher = this.f16493d;
        if (activityResultLauncher != null) {
            return activityResultLauncher;
        }
        Intrinsics.throwUninitializedPropertyAccessException("launcher");
        return null;
    }

    @LayoutRes
    protected int k() {
        return com.facebook.common.d.f15301c;
    }

    @NotNull
    public final LoginClient l() {
        LoginClient loginClient = this.f16492c;
        if (loginClient != null) {
            return loginClient;
        }
        Intrinsics.throwUninitializedPropertyAccessException("loginClient");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        l().B(i10, i11, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        LoginClient loginClient;
        Bundle bundleExtra;
        super.onCreate(bundle);
        if (bundle != null) {
            loginClient = (LoginClient) bundle.getParcelable("loginClient");
        } else {
            loginClient = null;
        }
        if (loginClient != null) {
            loginClient.D(this);
        } else {
            loginClient = i();
        }
        this.f16492c = loginClient;
        l().E(new LoginClient.d() { // from class: com.facebook.login.l
            @Override // com.facebook.login.LoginClient.d
            public final void a(LoginClient.Result result) {
                LoginFragment.p(LoginFragment.this, result);
            }
        });
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        o(activity);
        Intent intent = activity.getIntent();
        if (intent != null && (bundleExtra = intent.getBundleExtra("com.facebook.LoginFragment:Request")) != null) {
            this.f16491b = (LoginClient.Request) bundleExtra.getParcelable(AdActivity.REQUEST_KEY_EXTRA);
        }
        ActivityResultContracts.StartActivityForResult startActivityForResult = new ActivityResultContracts.StartActivityForResult();
        final Function1<ActivityResult, Unit> m10 = m(activity);
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(startActivityForResult, new ActivityResultCallback() { // from class: com.facebook.login.m
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                LoginFragment.q(Function1.this, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…andlerCallback(activity))");
        this.f16493d = registerForActivityResult;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View inflate = inflater.inflate(k(), viewGroup, false);
        View findViewById = inflate.findViewById(com.facebook.common.c.f15291d);
        Intrinsics.checkNotNullExpressionValue(findViewById, "view.findViewById<View>(…in_fragment_progress_bar)");
        this.f16494e = findViewById;
        l().C(new b());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        l().c();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        View view;
        super.onPause();
        View view2 = getView();
        if (view2 != null) {
            view = view2.findViewById(com.facebook.common.c.f15291d);
        } else {
            view = null;
        }
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f16490a == null) {
            Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        l().G(this.f16491b);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putParcelable("loginClient", l());
    }

    protected void s() {
    }

    protected void t() {
    }
}
