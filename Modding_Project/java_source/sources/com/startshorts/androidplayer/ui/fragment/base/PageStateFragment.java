package com.startshorts.androidplayer.ui.fragment.base;

import android.os.Bundle;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.fragment.base.PageStateFragment;
import com.startshorts.androidplayer.ui.view.pagestate.ImgTextBtnEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PageStateFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class PageStateFragment<VDB extends ViewDataBinding> extends PermissionFragment<VDB> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f45749n = new a(null);
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private StateViewGroup f45750m;

    /* compiled from: PageStateFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PageStateFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f45751a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PageStateFragment<VDB> f45752b;

        /* compiled from: PageStateFragment.kt */
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

        /* compiled from: PageStateFragment.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.base.PageStateFragment$b$b  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0637b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PageStateFragment<VDB> f45753a;

            C0637b(PageStateFragment<VDB> pageStateFragment) {
                this.f45753a = pageStateFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45753a.T();
                this.f45753a.R();
            }
        }

        /* compiled from: PageStateFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PageStateFragment<VDB> f45754a;

            c(PageStateFragment<VDB> pageStateFragment) {
                this.f45754a = pageStateFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45754a.T();
                this.f45754a.R();
            }
        }

        b(StateViewGroup stateViewGroup, PageStateFragment<VDB> pageStateFragment) {
            this.f45751a = stateViewGroup;
            this.f45752b = pageStateFragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(PageStateFragment pageStateFragment) {
            pageStateFragment.Q();
            return Unit.f60915a;
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
                        WeakReference<la.b> a10 = this.f45751a.a(State.OTHER_ERROR);
                        if (a10 != null) {
                            bVar2 = a10.get();
                        } else {
                            bVar2 = null;
                        }
                        if (bVar2 instanceof SOtherErrorView) {
                            sOtherErrorView = (SOtherErrorView) bVar2;
                        }
                        if (sOtherErrorView != null) {
                            sOtherErrorView.setMOnRefreshListener(new c(this.f45752b));
                            return;
                        }
                        return;
                    }
                    return;
                }
                WeakReference<la.b> a11 = this.f45751a.a(State.NETWORK_ERROR);
                if (a11 != null) {
                    bVar = a11.get();
                } else {
                    bVar = null;
                }
                if (bVar instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.setMOnRefreshListener(new C0637b(this.f45752b));
                    return;
                }
                return;
            }
            WeakReference<la.b> a12 = this.f45751a.a(State.EMPTY);
            if (a12 != null) {
                bVar3 = a12.get();
            }
            if (bVar3 instanceof SEmptyView) {
                ((SEmptyView) bVar3).v(this.f45752b.H());
            } else if (bVar3 instanceof ImgTextBtnEmptyView) {
                ImgTextBtnEmptyView imgTextBtnEmptyView = (ImgTextBtnEmptyView) bVar3;
                imgTextBtnEmptyView.v(this.f45752b.H());
                final PageStateFragment<VDB> pageStateFragment = this.f45752b;
                imgTextBtnEmptyView.setEmptyBtnClick(new Function0() { // from class: oi.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit c10;
                        c10 = PageStateFragment.b.c(PageStateFragment.this);
                        return c10;
                    }
                });
            }
        }
    }

    private final void P() {
        if (this.f45750m == null) {
            StateViewGroup stateViewGroup = (StateViewGroup) A().getRoot().findViewById(R$id.page_state_view);
            this.f45750m = stateViewGroup;
            if (stateViewGroup != null) {
                stateViewGroup.setMOnInflatedListener(new b(stateViewGroup, this));
                stateViewGroup.f(R$layout.viewstub_page_state_loading, State.LOADING);
                stateViewGroup.f(G(), State.EMPTY);
                stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
                stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
            }
        }
        T();
    }

    public int G() {
        return R$layout.viewstub_page_state_empty;
    }

    @NotNull
    public String H() {
        String string = getString(R$string.common_data_empty);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final StateViewGroup I() {
        return this.f45750m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void J() {
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.EMPTY);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void K() {
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.LOADING);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void L() {
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.NETWORK_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void M() {
        Object obj;
        WeakReference<la.b> a10;
        StateViewGroup stateViewGroup = this.f45750m;
        SNetworkErrorView sNetworkErrorView = null;
        if (stateViewGroup != null && (a10 = stateViewGroup.a(State.NETWORK_ERROR)) != null) {
            obj = (la.b) a10.get();
        } else {
            obj = null;
        }
        if (obj instanceof SNetworkErrorView) {
            sNetworkErrorView = (SNetworkErrorView) obj;
        }
        if (sNetworkErrorView != null) {
            sNetworkErrorView.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void N() {
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.OTHER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void O() {
        Object obj;
        WeakReference<la.b> a10;
        StateViewGroup stateViewGroup = this.f45750m;
        SOtherErrorView sOtherErrorView = null;
        if (stateViewGroup != null && (a10 = stateViewGroup.a(State.OTHER_ERROR)) != null) {
            obj = (la.b) a10.get();
        } else {
            obj = null;
        }
        if (obj instanceof SOtherErrorView) {
            sOtherErrorView = (SOtherErrorView) obj;
        }
        if (sOtherErrorView != null) {
            sOtherErrorView.v();
        }
    }

    public void S() {
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.EMPTY);
        }
    }

    public void T() {
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.LOADING);
        }
    }

    public void U() {
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.NETWORK_ERROR);
        }
    }

    public void V(@Nullable String str) {
        Object obj;
        StateViewGroup stateViewGroup = this.f45750m;
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

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.d();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.e();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        P();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "PageStateFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        StateViewGroup stateViewGroup = this.f45750m;
        if (stateViewGroup != null) {
            stateViewGroup.g();
        }
        this.f45750m = null;
    }

    public void Q() {
    }

    public void R() {
    }
}
