package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.u0;
import com.facebook.login.LoginTargetApp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomTabMainActivity.kt */
@Metadata
/* loaded from: classes3.dex */
public final class CustomTabMainActivity extends Activity {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f14788c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final String f14789d = CustomTabMainActivity.class.getSimpleName() + ".extra_action";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final String f14790e = CustomTabMainActivity.class.getSimpleName() + ".extra_params";
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final String f14791f = CustomTabMainActivity.class.getSimpleName() + ".extra_chromePackage";
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final String f14792g = CustomTabMainActivity.class.getSimpleName() + ".extra_url";
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final String f14793h = CustomTabMainActivity.class.getSimpleName() + ".extra_targetApp";
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final String f14794i = CustomTabMainActivity.class.getSimpleName() + ".action_refresh";
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final String f14795j = CustomTabMainActivity.class.getSimpleName() + ".no_activity_exception";

    /* renamed from: a  reason: collision with root package name */
    private boolean f14796a = true;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BroadcastReceiver f14797b;

    /* compiled from: CustomTabMainActivity.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bundle b(String str) {
            Uri parse = Uri.parse(str);
            Bundle p02 = u0.p0(parse.getQuery());
            p02.putAll(u0.p0(parse.getFragment()));
            return p02;
        }

        private a() {
        }
    }

    /* compiled from: CustomTabMainActivity.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginTargetApp.values().length];
            try {
                iArr[LoginTargetApp.INSTAGRAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void a(int i10, Intent intent) {
        Bundle bundle;
        BroadcastReceiver broadcastReceiver = this.f14797b;
        if (broadcastReceiver != null) {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(broadcastReceiver);
        }
        if (intent != null) {
            String stringExtra = intent.getStringExtra(f14792g);
            if (stringExtra != null) {
                bundle = f14788c.b(stringExtra);
            } else {
                bundle = new Bundle();
            }
            Intent intent2 = getIntent();
            Intrinsics.checkNotNullExpressionValue(intent2, "intent");
            Intent m10 = com.facebook.internal.l0.m(intent2, bundle, null);
            if (m10 != null) {
                intent = m10;
            }
            setResult(i10, intent);
        } else {
            Intent intent3 = getIntent();
            Intrinsics.checkNotNullExpressionValue(intent3, "intent");
            setResult(i10, com.facebook.internal.l0.m(intent3, null, null));
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        String stringExtra;
        com.facebook.internal.d dVar;
        super.onCreate(bundle);
        String str = CustomTabActivity.f14784c;
        if (Intrinsics.areEqual(str, getIntent().getAction())) {
            setResult(0);
            finish();
        } else if (bundle != null || (stringExtra = getIntent().getStringExtra(f14789d)) == null) {
        } else {
            Bundle bundleExtra = getIntent().getBundleExtra(f14790e);
            String stringExtra2 = getIntent().getStringExtra(f14791f);
            if (b.$EnumSwitchMapping$0[LoginTargetApp.Companion.a(getIntent().getStringExtra(f14793h)).ordinal()] == 1) {
                dVar = new com.facebook.internal.d0(stringExtra, bundleExtra);
            } else {
                dVar = new com.facebook.internal.d(stringExtra, bundleExtra);
            }
            boolean a10 = dVar.a(this, stringExtra2);
            this.f14796a = false;
            if (!a10) {
                setResult(0, getIntent().putExtra(f14795j, true));
                finish();
                return;
            }
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.facebook.CustomTabMainActivity$onCreate$redirectReceiver$1
                @Override // android.content.BroadcastReceiver
                public void onReceive(@NotNull Context context, @NotNull Intent intent) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(intent, "intent");
                    Intent intent2 = new Intent(CustomTabMainActivity.this, CustomTabMainActivity.class);
                    intent2.setAction(CustomTabMainActivity.f14794i);
                    String str2 = CustomTabMainActivity.f14792g;
                    intent2.putExtra(str2, intent.getStringExtra(str2));
                    intent2.addFlags(603979776);
                    CustomTabMainActivity.this.startActivity(intent2);
                }
            };
            this.f14797b = broadcastReceiver;
            LocalBroadcastManager.getInstance(this).registerReceiver(broadcastReceiver, new IntentFilter(str));
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        if (Intrinsics.areEqual(f14794i, intent.getAction())) {
            LocalBroadcastManager.getInstance(this).sendBroadcast(new Intent(CustomTabActivity.f14785d));
            a(-1, intent);
        } else if (Intrinsics.areEqual(CustomTabActivity.f14784c, intent.getAction())) {
            a(-1, intent);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.f14796a) {
            a(0, null);
        }
        this.f14796a = true;
    }
}
