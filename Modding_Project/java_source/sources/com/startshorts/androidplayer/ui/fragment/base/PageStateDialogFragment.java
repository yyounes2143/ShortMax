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
/* compiled from: PageStateDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class PageStateDialogFragment<VDB extends ViewDataBinding> extends BaseDialogFragment<VDB> {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f45743j = new a(null);
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private StateViewGroup f45744i;

    /* compiled from: PageStateDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PageStateDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f45745a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ PageStateDialogFragment<VDB> f45746b;

        /* compiled from: PageStateDialogFragment.kt */
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

        /* compiled from: PageStateDialogFragment.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment$b$b  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public static final class C0636b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PageStateDialogFragment<VDB> f45747a;

            C0636b(PageStateDialogFragment<VDB> pageStateDialogFragment) {
                this.f45747a = pageStateDialogFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45747a.J();
                this.f45747a.I();
            }
        }

        /* compiled from: PageStateDialogFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ PageStateDialogFragment<VDB> f45748a;

            c(PageStateDialogFragment<VDB> pageStateDialogFragment) {
                this.f45748a = pageStateDialogFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f45748a.J();
                this.f45748a.I();
            }
        }

        b(StateViewGroup stateViewGroup, PageStateDialogFragment<VDB> pageStateDialogFragment) {
            this.f45745a = stateViewGroup;
            this.f45746b = pageStateDialogFragment;
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
                        WeakReference<la.b> a10 = this.f45745a.a(State.OTHER_ERROR);
                        if (a10 != null) {
                            bVar2 = a10.get();
                        } else {
                            bVar2 = null;
                        }
                        if (bVar2 instanceof SOtherErrorView) {
                            sOtherErrorView = (SOtherErrorView) bVar2;
                        }
                        if (sOtherErrorView != null) {
                            sOtherErrorView.setMOnRefreshListener(new c(this.f45746b));
                            return;
                        }
                        return;
                    }
                    return;
                }
                WeakReference<la.b> a11 = this.f45745a.a(State.NETWORK_ERROR);
                if (a11 != null) {
                    bVar = a11.get();
                } else {
                    bVar = null;
                }
                if (bVar instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.setMOnRefreshListener(new C0636b(this.f45746b));
                    return;
                }
                return;
            }
            WeakReference<la.b> a12 = this.f45745a.a(State.EMPTY);
            if (a12 != null) {
                obj = (la.b) a12.get();
            } else {
                obj = null;
            }
            if (obj instanceof SEmptyView) {
                sEmptyView = (SEmptyView) obj;
            }
            if (sEmptyView != null) {
                sEmptyView.v(this.f45746b.F());
            }
        }
    }

    private final void H() {
        if (this.f45744i == null) {
            StateViewGroup stateViewGroup = (StateViewGroup) m().getRoot().findViewById(R$id.page_state_view);
            this.f45744i = stateViewGroup;
            if (stateViewGroup != null) {
                stateViewGroup.setMOnInflatedListener(new b(stateViewGroup, this));
                stateViewGroup.f(R$layout.viewstub_page_state_loading, State.LOADING);
                stateViewGroup.f(R$layout.viewstub_page_state_empty, State.EMPTY);
                stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
                stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
            }
        }
        J();
    }

    @NotNull
    public String F() {
        String string = getString(R$string.common_data_empty);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void G() {
        StateViewGroup stateViewGroup = this.f45744i;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.LOADING);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void J() {
        StateViewGroup stateViewGroup = this.f45744i;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.LOADING);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void K() {
        StateViewGroup stateViewGroup = this.f45744i;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.NETWORK_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void L(@Nullable String str) {
        Object obj;
        StateViewGroup stateViewGroup = this.f45744i;
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

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "PageStateDialogFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        StateViewGroup stateViewGroup = this.f45744i;
        if (stateViewGroup != null) {
            stateViewGroup.d();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        StateViewGroup stateViewGroup = this.f45744i;
        if (stateViewGroup != null) {
            stateViewGroup.e();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        H();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public void t() {
        super.t();
        StateViewGroup stateViewGroup = this.f45744i;
        if (stateViewGroup != null) {
            stateViewGroup.g();
        }
        this.f45744i = null;
    }

    public void I() {
    }
}
