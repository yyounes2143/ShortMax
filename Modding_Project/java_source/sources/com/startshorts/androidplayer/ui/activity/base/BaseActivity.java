package com.startshorts.androidplayer.ui.activity.base;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.widget.Toast;
import androidx.annotation.LayoutRes;
import au.c;
import com.google.android.material.R;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.v;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public class BaseActivity extends IDActivity {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f44995j = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<IDActivity> f44996b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f44997c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f44998d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f44999e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45000f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45001g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Function0<Unit> f45002h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f45003i = true;

    /* compiled from: BaseActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BaseActivity.kt */
    @Metadata
    @SuppressLint({"PrivateResource"})
    /* loaded from: classes7.dex */
    public static final class b extends ContextThemeWrapper {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Configuration f45004a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context, Configuration configuration, int i10) {
            super(context, i10);
            this.f45004a = configuration;
        }

        @Override // android.view.ContextThemeWrapper
        public void applyOverrideConfiguration(Configuration overrideConfiguration) {
            Intrinsics.checkNotNullParameter(overrideConfiguration, "overrideConfiguration");
            overrideConfiguration.setTo(this.f45004a);
            super.applyOverrideConfiguration(overrideConfiguration);
        }
    }

    private final void A() {
        if (this.f44999e) {
            this.f44999e = false;
            c.d().r(this);
        }
    }

    private final void u() {
        if (!this.f44999e) {
            this.f44999e = true;
            c.d().p(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(BaseActivity baseActivity, String str) {
        try {
            if (baseActivity.t()) {
                Toast.makeText(baseActivity, str, 0).show();
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.ContextThemeWrapper
    public void applyOverrideConfiguration(@NotNull Configuration overrideConfiguration) {
        Intrinsics.checkNotNullParameter(overrideConfiguration, "overrideConfiguration");
        if (!n()) {
            if (id.a.f53392a.c()) {
                s("applyOverrideConfiguration -> " + DeviceUtil.f48146a.e());
            }
            int i10 = overrideConfiguration.uiMode;
            overrideConfiguration.setTo(getBaseContext().getResources().getConfiguration());
            overrideConfiguration.uiMode = i10;
        }
        super.applyOverrideConfiguration(overrideConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(@NotNull Context newBase) {
        Intrinsics.checkNotNullParameter(newBase, "newBase");
        try {
            if (!n()) {
                Context a10 = v.f51778a.a(newBase, DeviceUtil.f48146a.e());
                super.attachBaseContext(new b(a10, a10.getResources().getConfiguration(), R.style.Theme_AppCompat_Empty));
            } else {
                super.attachBaseContext(newBase);
            }
        } catch (Exception unused) {
            super.attachBaseContext(newBase);
        }
    }

    public final void l(@Nullable String str) {
        if (id.a.f53392a.c()) {
            Logger.f41511a.h(r(), str);
        }
    }

    public final void m(@Nullable String str) {
        Logger.f41511a.e(r(), str);
    }

    public boolean n() {
        return false;
    }

    @LayoutRes
    public int o() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        if (!n()) {
            try {
                v.f51778a.c(this, DeviceUtil.f48146a.e());
            } catch (Exception e10) {
                m("setAppLanguage exception -> " + e10.getMessage());
            }
        }
        super.onCreate(bundle);
        s("onCreate " + bundle);
        getWindow().setBackgroundDrawable(null);
        this.f45000f = false;
        WeakReference<IDActivity> weakReference = new WeakReference<>(this);
        this.f44996b = weakReference;
        aa.a.f321a.a(weakReference);
        if (q()) {
            u();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (id.a.f53392a.c()) {
            s("onDestroy");
        }
        if (!this.f45000f) {
            this.f45000f = true;
            v();
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        if (isFinishing() && !this.f45000f) {
            this.f45000f = true;
            v();
        }
        super.onPause();
        s("onPause");
        this.f44997c = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        s("onResume");
        this.f44998d = false;
        this.f44997c = false;
        this.f45001g = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        if (id.a.f53392a.c()) {
            s("onStop");
        }
        this.f44998d = true;
    }

    public final boolean p() {
        return this.f44997c;
    }

    public boolean q() {
        return false;
    }

    @NotNull
    public String r() {
        return "BaseActivity";
    }

    public final void s(@Nullable String str) {
        Logger.f41511a.h(r(), str);
    }

    public final boolean t() {
        if (!isFinishing() && !isDestroyed()) {
            return true;
        }
        return false;
    }

    public void v() {
        if (id.a.f53392a.c()) {
            s("release");
        }
        A();
        WeakReference<IDActivity> weakReference = this.f44996b;
        if (weakReference != null) {
            aa.a.f321a.g(weakReference);
            weakReference.clear();
        }
        this.f44996b = null;
        Logger.f41511a.f();
        EventManager eventManager = EventManager.f42463a;
        eventManager.U();
        EventManager.s(eventManager, false, 1, null);
        Function0<Unit> function0 = this.f45002h;
        if (function0 != null) {
            function0.invoke();
        }
        this.f45002h = null;
    }

    public final void w(@NotNull Function0<Unit> onRelease) {
        Intrinsics.checkNotNullParameter(onRelease, "onRelease");
        this.f45002h = onRelease;
    }

    public final void x(int i10) {
        y(getString(i10));
    }

    public final void y(@Nullable final String str) {
        if (str != null && str.length() != 0) {
            runOnUiThread(new Runnable() { // from class: th.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseActivity.z(BaseActivity.this, str);
                }
            });
        }
    }
}
