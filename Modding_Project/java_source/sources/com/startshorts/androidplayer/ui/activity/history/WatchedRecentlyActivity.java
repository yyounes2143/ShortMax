package com.startshorts.androidplayer.ui.activity.history;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.ActivityMyListDetailBinding;
import com.startshorts.androidplayer.ui.activity.base.PermissionActivity;
import com.startshorts.androidplayer.ui.fragment.mylist.ContainerRecentlyWatchedFragment;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WatchedRecentlyActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WatchedRecentlyActivity extends PermissionActivity<ActivityMyListDetailBinding> {
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final a f45252p = new a(null);

    /* compiled from: WatchedRecentlyActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, WatchedRecentlyActivity.class));
        }

        private a() {
        }
    }

    private final void K() {
        getSupportFragmentManager().beginTransaction().replace(R$id.fl_container, new ContainerRecentlyWatchedFragment()).commitAllowingStateLoss();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_my_list_detail;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        L();
        M();
        K();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "MyListDetailActivity";
    }

    private final void L() {
    }

    public final void M() {
    }
}
