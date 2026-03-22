package com.startshorts.androidplayer.ui.fragment.purchase;

import androidx.fragment.app.DialogFragment;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.ui.fragment.purchase.StateDialogFragment;
import com.startshorts.androidplayer.ui.view.pagestate.ImgTextBtnEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SEmptyView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StateDialogFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public class StateDialogFragment extends DialogFragment {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private StateViewGroup f46458a;

    /* compiled from: StateDialogFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f46459a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ StateDialogFragment f46460b;

        /* compiled from: StateDialogFragment.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.ui.fragment.purchase.StateDialogFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        public /* synthetic */ class C0641a {
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

        /* compiled from: StateDialogFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ StateDialogFragment f46461a;

            b(StateDialogFragment stateDialogFragment) {
                this.f46461a = stateDialogFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f46461a.l();
                this.f46461a.j();
            }
        }

        /* compiled from: StateDialogFragment.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ StateDialogFragment f46462a;

            c(StateDialogFragment stateDialogFragment) {
                this.f46462a = stateDialogFragment;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f46462a.l();
                this.f46462a.j();
            }
        }

        a(StateViewGroup stateViewGroup, StateDialogFragment stateDialogFragment) {
            this.f46459a = stateViewGroup;
            this.f46460b = stateDialogFragment;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(StateDialogFragment stateDialogFragment) {
            stateDialogFragment.h();
            return Unit.f60915a;
        }

        @Override // la.a
        public void a(State state) {
            la.b bVar;
            la.b bVar2;
            Intrinsics.checkNotNullParameter(state, "state");
            int i10 = C0641a.$EnumSwitchMapping$0[state.ordinal()];
            la.b bVar3 = null;
            SOtherErrorView sOtherErrorView = null;
            SNetworkErrorView sNetworkErrorView = null;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        WeakReference<la.b> a10 = this.f46459a.a(State.OTHER_ERROR);
                        if (a10 != null) {
                            bVar2 = a10.get();
                        } else {
                            bVar2 = null;
                        }
                        if (bVar2 instanceof SOtherErrorView) {
                            sOtherErrorView = (SOtherErrorView) bVar2;
                        }
                        if (sOtherErrorView != null) {
                            sOtherErrorView.setMOnRefreshListener(new c(this.f46460b));
                            return;
                        }
                        return;
                    }
                    return;
                }
                WeakReference<la.b> a11 = this.f46459a.a(State.NETWORK_ERROR);
                if (a11 != null) {
                    bVar = a11.get();
                } else {
                    bVar = null;
                }
                if (bVar instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.setMOnRefreshListener(new b(this.f46460b));
                    return;
                }
                return;
            }
            WeakReference<la.b> a12 = this.f46459a.a(State.EMPTY);
            if (a12 != null) {
                bVar3 = a12.get();
            }
            if (bVar3 instanceof SEmptyView) {
                ((SEmptyView) bVar3).v(this.f46460b.f());
            } else if (bVar3 instanceof ImgTextBtnEmptyView) {
                ImgTextBtnEmptyView imgTextBtnEmptyView = (ImgTextBtnEmptyView) bVar3;
                imgTextBtnEmptyView.v(this.f46460b.f());
                final StateDialogFragment stateDialogFragment = this.f46460b;
                imgTextBtnEmptyView.setEmptyBtnClick(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.purchase.o
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit c10;
                        c10 = StateDialogFragment.a.c(StateDialogFragment.this);
                        return c10;
                    }
                });
            }
        }
    }

    public final int e() {
        return R$layout.viewstub_download_empty;
    }

    @NotNull
    public final String f() {
        String string = getString(R$string.common_data_empty);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g() {
        StateViewGroup stateViewGroup = this.f46458a;
        if (stateViewGroup != null) {
            stateViewGroup.c(State.LOADING);
        }
    }

    public final void i() {
        StateViewGroup stateViewGroup = this.f46458a;
        if (stateViewGroup != null) {
            stateViewGroup.g();
        }
        this.f46458a = null;
    }

    public final void k(@NotNull StateViewGroup stateViewGroup) {
        Intrinsics.checkNotNullParameter(stateViewGroup, "<this>");
        this.f46458a = stateViewGroup;
        stateViewGroup.setMOnInflatedListener(new a(stateViewGroup, this));
        stateViewGroup.f(R$layout.viewstub_page_state_loading, State.LOADING);
        stateViewGroup.f(e(), State.EMPTY);
        stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
        stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
    }

    public void l() {
        StateViewGroup stateViewGroup = this.f46458a;
        if (stateViewGroup != null) {
            stateViewGroup.h(State.LOADING);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        i();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        StateViewGroup stateViewGroup = this.f46458a;
        if (stateViewGroup != null) {
            stateViewGroup.d();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        StateViewGroup stateViewGroup = this.f46458a;
        if (stateViewGroup != null) {
            stateViewGroup.e();
        }
    }

    public void h() {
    }

    public void j() {
    }
}
