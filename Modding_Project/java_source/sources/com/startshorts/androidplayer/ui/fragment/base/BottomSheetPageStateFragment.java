package com.startshorts.androidplayer.ui.fragment.base;

import android.os.Bundle;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.view.pagestate.SEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BottomSheetPageStateFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class BottomSheetPageStateFragment<VDB extends ViewDataBinding> extends BaseBottomSheetDialogFragment<VDB> {
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final a f45719n = new a(null);
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private StateViewGroup f45720m;

    /* compiled from: BottomSheetPageStateFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: BottomSheetPageStateFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f45721a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BottomSheetPageStateFragment<VDB> f45722b;

        /* compiled from: BottomSheetPageStateFragment.kt */
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

        /* compiled from: BottomSheetPageStateFragment.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment$b$b  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0635b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BottomSheetPageStateFragment<VDB> f45723a;

            C0635b(BottomSheetPageStateFragment<VDB> bottomSheetPageStateFragment) {
                this.f45723a = bottomSheetPageStateFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45723a.L();
                this.f45723a.J();
            }
        }

        /* compiled from: BottomSheetPageStateFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BottomSheetPageStateFragment<VDB> f45724a;

            c(BottomSheetPageStateFragment<VDB> bottomSheetPageStateFragment) {
                this.f45724a = bottomSheetPageStateFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45724a.L();
                this.f45724a.J();
            }
        }

        b(StateViewGroup stateViewGroup, BottomSheetPageStateFragment<VDB> bottomSheetPageStateFragment) {
            this.f45721a = stateViewGroup;
            this.f45722b = bottomSheetPageStateFragment;
        }

        @Override // la.a
        public void a(State state) {
            Object obj;
            la.b bVar;
            la.b bVar2;
            Intrinsics.checkNotNullParameter(state, "state");
            int i10 = a.$EnumSwitchMapping$0[state.ordinal()];
            SEmptyView sEmptyView = null;
            SOtherErrorView sOtherErrorView = null;
            SNetworkErrorView sNetworkErrorView = null;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        WeakReference<la.b> a10 = this.f45721a.a(State.OTHER_ERROR);
                        if (a10 != null) {
                            bVar2 = a10.get();
                        } else {
                            bVar2 = null;
                        }
                        if (bVar2 instanceof SOtherErrorView) {
                            sOtherErrorView = (SOtherErrorView) bVar2;
                        }
                        if (sOtherErrorView != null) {
                            sOtherErrorView.setMOnRefreshListener(new c(this.f45722b));
                            return;
                        }
                        return;
                    }
                    return;
                }
                WeakReference<la.b> a11 = this.f45721a.a(State.NETWORK_ERROR);
                if (a11 != null) {
                    bVar = a11.get();
                } else {
                    bVar = null;
                }
                if (bVar instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.setMOnRefreshListener(new C0635b(this.f45722b));
                    return;
                }
                return;
            }
            WeakReference<la.b> a12 = this.f45721a.a(State.EMPTY);
            if (a12 != null) {
                obj = (la.b) a12.get();
            } else {
                obj = null;
            }
            if (obj instanceof SEmptyView) {
                sEmptyView = (SEmptyView) obj;
            }
            if (sEmptyView != null) {
                sEmptyView.v(this.f45722b.B());
            }
        }
    }

    private final void I() {
        if (this.f45720m == null) {
            StateViewGroup stateViewGroup = (StateViewGroup) n().getRoot().findViewById(R$id.page_state_view);
            this.f45720m = stateViewGroup;
            if (stateViewGroup != null) {
                stateViewGroup.setMOnInflatedListener(new b(stateViewGroup, this));
                stateViewGroup.f(R$layout.viewstub_page_state_loading, State.LOADING);
                stateViewGroup.f(R$layout.viewstub_page_state_empty, State.EMPTY);
                stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
                stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
            }
        }
        L();
    }

    @NotNull
    public String B() {
        String string = getString(R$string.common_data_empty);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void C() {
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.EMPTY);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void D() {
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.LOADING);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void E() {
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.NETWORK_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void F() {
        Object obj;
        WeakReference<la.b> a10;
        StateViewGroup stateViewGroup = this.f45720m;
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
    public final void G() {
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.OTHER_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void H() {
        Object obj;
        WeakReference<la.b> a10;
        StateViewGroup stateViewGroup = this.f45720m;
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

    /* JADX INFO: Access modifiers changed from: protected */
    public final void K() {
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.EMPTY);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void L() {
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.LOADING);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void M() {
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.NETWORK_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void N(@Nullable String str) {
        Object obj;
        StateViewGroup stateViewGroup = this.f45720m;
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

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.d();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.e();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        I();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "BottomSheetPageStateFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        StateViewGroup stateViewGroup = this.f45720m;
        if (stateViewGroup != null) {
            stateViewGroup.g();
        }
        this.f45720m = null;
    }

    public void J() {
    }
}
