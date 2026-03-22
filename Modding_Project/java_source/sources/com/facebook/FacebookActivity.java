package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.u0;
import com.facebook.login.LoginFragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FacebookActivity.kt */
@Metadata
/* loaded from: classes3.dex */
public class FacebookActivity extends FragmentActivity {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f14799b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final String f14800c = FacebookActivity.class.getName();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Fragment f14801a;

    /* compiled from: FacebookActivity.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void l() {
        Intent requestIntent = getIntent();
        Intrinsics.checkNotNullExpressionValue(requestIntent, "requestIntent");
        FacebookException r10 = com.facebook.internal.l0.r(com.facebook.internal.l0.v(requestIntent));
        Intent intent = getIntent();
        Intrinsics.checkNotNullExpressionValue(intent, "intent");
        setResult(0, com.facebook.internal.l0.m(intent, null, r10));
        finish();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void dump(@NotNull String prefix, @Nullable FileDescriptor fileDescriptor, @NotNull PrintWriter writer, @Nullable String[] strArr) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(prefix, "prefix");
            Intrinsics.checkNotNullParameter(writer, "writer");
            r4.a.f65558a.a();
            super.dump(prefix, fileDescriptor, writer, strArr);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Nullable
    public final Fragment j() {
        return this.f14801a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.facebook.internal.FacebookDialogFragment, androidx.fragment.app.Fragment, androidx.fragment.app.DialogFragment] */
    @NotNull
    protected Fragment k() {
        LoginFragment loginFragment;
        Intent intent = getIntent();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "supportFragmentManager");
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag("SingleFragment");
        if (findFragmentByTag == null) {
            if (Intrinsics.areEqual("FacebookDialogFragment", intent.getAction())) {
                ?? facebookDialogFragment = new FacebookDialogFragment();
                facebookDialogFragment.setRetainInstance(true);
                facebookDialogFragment.show(supportFragmentManager, "SingleFragment");
                loginFragment = facebookDialogFragment;
            } else {
                LoginFragment loginFragment2 = new LoginFragment();
                loginFragment2.setRetainInstance(true);
                supportFragmentManager.beginTransaction().add(com.facebook.common.c.f15290c, loginFragment2, "SingleFragment").commit();
                loginFragment = loginFragment2;
            }
            return loginFragment;
        }
        return findFragmentByTag;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NotNull Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Fragment fragment = this.f14801a;
        if (fragment != null) {
            fragment.onConfigurationChanged(newConfig);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (!v.G()) {
            u0.k0(f14800c, "Facebook SDK not initialized. Make sure you call sdkInitialize inside your Application's onCreate method.");
            Context applicationContext = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            v.N(applicationContext);
        }
        setContentView(com.facebook.common.d.f15299a);
        if (Intrinsics.areEqual("PassThrough", intent.getAction())) {
            l();
        } else {
            this.f14801a = k();
        }
    }
}
