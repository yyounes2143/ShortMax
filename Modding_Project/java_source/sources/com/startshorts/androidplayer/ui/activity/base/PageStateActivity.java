package com.startshorts.androidplayer.ui.activity.base;

import android.os.Bundle;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.view.pagestate.ImgTextEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PageStateActivity.kt */
@Metadata
/* loaded from: classes7.dex */
public class PageStateActivity<VDB extends ViewDataBinding> extends PermissionActivity<VDB> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f45011q = new a(null);
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private StateViewGroup f45012p;

    /* compiled from: PageStateActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PageStateActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f45013a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PageStateActivity<VDB> f45014b;

        /* compiled from: PageStateActivity.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.EMPTY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.NETWORK_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[State.OTHER_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* compiled from: PageStateActivity.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.activity.base.PageStateActivity$b$b  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0629b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PageStateActivity<VDB> f45015a;

            C0629b(PageStateActivity<VDB> pageStateActivity) {
                this.f45015a = pageStateActivity;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45015a.U();
                this.f45015a.S();
            }
        }

        /* compiled from: PageStateActivity.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PageStateActivity<VDB> f45016a;

            c(PageStateActivity<VDB> pageStateActivity) {
                this.f45016a = pageStateActivity;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45016a.U();
                this.f45016a.S();
            }
        }

        b(StateViewGroup stateViewGroup, PageStateActivity<VDB> pageStateActivity) {
            this.f45013a = stateViewGroup;
            this.f45014b = pageStateActivity;
        }

        @Override // la.a
        public void a(State state) {
            la.b bVar;
            la.b bVar2;
            Intrinsics.checkNotNullParameter(state, "state");
            int i10 = a.$EnumSwitchMapping$0[state.ordinal()];
            la.b bVar3 = null;
            SOtherErrorView sOtherErrorView = null;
            SNetworkErrorView sNetworkErrorView = null;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        WeakReference<la.b> a10 = this.f45013a.a(State.OTHER_ERROR);
                        if (a10 != null) {
                            bVar2 = a10.get();
                        } else {
                            bVar2 = null;
                        }
                        if (bVar2 instanceof SOtherErrorView) {
                            sOtherErrorView = (SOtherErrorView) bVar2;
                        }
                        if (sOtherErrorView != null) {
                            sOtherErrorView.setMOnRefreshListener(new c(this.f45014b));
                            return;
                        }
                        return;
                    }
                    return;
                }
                WeakReference<la.b> a11 = this.f45013a.a(State.NETWORK_ERROR);
                if (a11 != null) {
                    bVar = a11.get();
                } else {
                    bVar = null;
                }
                if (bVar instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.setMOnRefreshListener(new C0629b(this.f45014b));
                    return;
                }
                return;
            }
            WeakReference<la.b> a12 = this.f45013a.a(State.EMPTY);
            if (a12 != null) {
                bVar3 = a12.get();
            }
            if (bVar3 instanceof SEmptyView) {
                ((SEmptyView) bVar3).v(this.f45014b.L());
            } else if (bVar3 instanceof ImgTextEmptyView) {
                ((ImgTextEmptyView) bVar3).v(this.f45014b.L());
            }
        }
    }

    private final void init() {
        if (this.f45012p == null) {
            StateViewGroup stateViewGroup = (StateViewGroup) E().getRoot().findViewById(R$id.page_state_view);
            this.f45012p = stateViewGroup;
            if (stateViewGroup != null) {
                stateViewGroup.setMOnInflatedListener(new b(stateViewGroup, this));
                stateViewGroup.f(R$layout.viewstub_page_state_loading, State.LOADING);
                stateViewGroup.f(K(), State.EMPTY);
                stateViewGroup.f(M(), State.NETWORK_ERROR);
                stateViewGroup.f(N(), State.OTHER_ERROR);
            }
        }
        U();
    }

    public int K() {
        return R$layout.viewstub_page_state_empty;
    }

    @NotNull
    public String L() {
        String string = getString(R$string.common_data_empty);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public int M() {
        return R$layout.viewstub_page_state_network_error;
    }

    public int N() {
        return R$layout.viewstub_page_state_other_error;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void O() {
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.EMPTY);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void P() {
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.LOADING);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Q() {
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.NETWORK_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void R() {
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.OTHER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void T() {
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.EMPTY);
        }
    }

    public void U() {
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.LOADING);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void V() {
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.NETWORK_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void W(@Nullable String str) {
        Object obj;
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            State state = State.OTHER_ERROR;
            stateViewGroup.h(state);
            if (str != null && str.length() != 0) {
                WeakReference<la.b> a10 = stateViewGroup.a(state);
                SOtherErrorView sOtherErrorView = null;
                if (a10 != null) {
                    obj = (la.b) a10.get();
                } else {
                    obj = null;
                }
                if (obj instanceof SOtherErrorView) {
                    sOtherErrorView = (SOtherErrorView) obj;
                }
                if (sOtherErrorView != null) {
                    sOtherErrorView.w(str);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        init();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.e();
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "PageStateActivity";
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        StateViewGroup stateViewGroup = this.f45012p;
        if (stateViewGroup != null) {
            stateViewGroup.g();
        }
        this.f45012p = null;
    }

    public void S() {
    }
}
