package com.startshorts.androidplayer.ui.view.pagestate;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import au.c;
import com.hades.aar.pagestate.State;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.eventbus.UpdateMainTabEvent;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
/* compiled from: MyListRecentlyEmptyView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MyListRecentlyEmptyView extends BaseConstraintLayout implements la.b {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f47495c = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BaseTextView f47496b;

    /* compiled from: MyListRecentlyEmptyView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MyListRecentlyEmptyView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Context f47497e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context) {
            super(0L, 1, null);
            this.f47497e = context;
        }

        @Override // yd.d
        public void a(View v10) {
            Activity activity;
            Intrinsics.checkNotNullParameter(v10, "v");
            c.d().l(new UpdateMainTabEvent(MainTab.Type.DISCOVER, false, null, null, 14, null));
            if (!(this.f47497e instanceof MainActivity)) {
                Context context = v10.getContext();
                if (context instanceof Activity) {
                    activity = (Activity) context;
                } else {
                    activity = null;
                }
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyListRecentlyEmptyView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_my_list_empty_recently;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "MyListEmptyView";
    }

    @Override // la.b
    @NotNull
    public State m() {
        return State.EMPTY;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47496b = (BaseTextView) findViewById(R$id.title_tv);
        View findViewById = findViewById(R$id.go_home_button);
        if (findViewById != null) {
            findViewById.setOnClickListener(new b(context));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyListRecentlyEmptyView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // la.b
    public void b() {
    }

    @Override // la.b
    public void d() {
    }

    @Override // la.b
    public void onPause() {
    }

    @Override // la.b
    public void onResume() {
    }
}
