package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomTabActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCustomTabActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTabActivity.kt\ncom/facebook/CustomTabActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"})
/* loaded from: classes3.dex */
public final class CustomTabActivity extends Activity {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f14783b = new a(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final String f14784c = CustomTabActivity.class.getSimpleName() + ".action_customTabRedirect";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final String f14785d = CustomTabActivity.class.getSimpleName() + ".action_destroy";
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private BroadcastReceiver f14786a;

    /* compiled from: CustomTabActivity.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i11 == 0) {
            Intent intent2 = new Intent(f14784c);
            intent2.putExtra(CustomTabMainActivity.f14792g, getIntent().getDataString());
            LocalBroadcastManager.getInstance(this).sendBroadcast(intent2);
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.facebook.CustomTabActivity$onActivityResult$closeReceiver$1
                @Override // android.content.BroadcastReceiver
                public void onReceive(@NotNull Context context, @NotNull Intent intent3) {
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(intent3, "intent");
                    CustomTabActivity.this.finish();
                }
            };
            LocalBroadcastManager.getInstance(this).registerReceiver(broadcastReceiver, new IntentFilter(f14785d));
            this.f14786a = broadcastReceiver;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent(this, CustomTabMainActivity.class);
        intent.setAction(f14784c);
        intent.putExtra(CustomTabMainActivity.f14792g, getIntent().getDataString());
        intent.addFlags(603979776);
        startActivityForResult(intent, 2);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        BroadcastReceiver broadcastReceiver = this.f14786a;
        if (broadcastReceiver != null) {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(broadcastReceiver);
        }
        super.onDestroy();
    }
}
