package com.startshorts.androidplayer.ui.activity.download;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.drake.brv.BindingAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.databinding.DialogFragmentClarityChooseBinding;
import com.startshorts.androidplayer.databinding.ItemClarityChooseBinding;
import com.startshorts.androidplayer.ui.activity.download.ClarityChooseDialog;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ClarityChooseDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nClarityChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClarityChooseDialog.kt\ncom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n*L\n1#1,118:1\n1755#2,3:119\n1755#2,3:122\n1755#2,3:125\n1160#3,7:128\n243#4,6:135\n*S KotlinDebug\n*F\n+ 1 ClarityChooseDialog.kt\ncom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog\n*L\n52#1:119,3\n55#1:122,3\n58#1:125,3\n74#1:128,7\n71#1:135,6\n*E\n"})
/* loaded from: classes7.dex */
public final class ClarityChooseDialog extends BottomSheetPageStateFragment<DialogFragmentClarityChooseBinding> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final a f45032r = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private PlayResolution f45033o = PlayResolution.Companion.getPLAY_RESOLUTION_1080P();
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private List<uh.d> f45034p = CollectionsKt.t(new uh.d(1080));
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Function1<? super uh.d, Unit> f45035q;

    /* compiled from: ClarityChooseDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit S(final ClarityChooseDialog clarityChooseDialog, BindingAdapter setup, RecyclerView it) {
        Intrinsics.checkNotNullParameter(setup, "$this$setup");
        Intrinsics.checkNotNullParameter(it, "it");
        final int i10 = R$layout.item_clarity_choose;
        if (Modifier.isInterface(uh.d.class.getModifiers())) {
            setup.q().put(Reflection.typeOf(uh.d.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.ClarityChooseDialog$onViewCreated$lambda$5$$inlined$addType$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i11) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i10);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        } else {
            setup.y().put(Reflection.typeOf(uh.d.class), new Function2<Object, Integer, Integer>() { // from class: com.startshorts.androidplayer.ui.activity.download.ClarityChooseDialog$onViewCreated$lambda$5$$inlined$addType$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @NotNull
                public final Integer b(@NotNull Object obj, int i11) {
                    Intrinsics.checkNotNullParameter(obj, "$this$null");
                    return Integer.valueOf(i10);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(Object obj, Integer num) {
                    return b(obj, num.intValue());
                }
            });
        }
        setup.D(new Function1() { // from class: uh.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit T;
                T = ClarityChooseDialog.T(ClarityChooseDialog.this, (BindingAdapter.BindingViewHolder) obj);
                return T;
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T(final ClarityChooseDialog clarityChooseDialog, BindingAdapter.BindingViewHolder onBind) {
        ItemClarityChooseBinding itemClarityChooseBinding;
        Intrinsics.checkNotNullParameter(onBind, "$this$onBind");
        final uh.d dVar = (uh.d) onBind.j();
        if (onBind.l() == null) {
            Object invoke = ItemClarityChooseBinding.class.getMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, View.class).invoke(null, onBind.itemView);
            if (invoke != null) {
                itemClarityChooseBinding = (ItemClarityChooseBinding) invoke;
                onBind.n(itemClarityChooseBinding);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemClarityChooseBinding");
            }
        } else {
            ViewBinding l10 = onBind.l();
            if (l10 != null) {
                itemClarityChooseBinding = (ItemClarityChooseBinding) l10;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemClarityChooseBinding");
            }
        }
        if (dVar.c()) {
            itemClarityChooseBinding.f39810b.setVisibility(0);
            if (clarityChooseDialog.f45033o.getResolutionValue() == dVar.b()) {
                itemClarityChooseBinding.f39809a.setBackgroundResource(R$drawable.bg_resolution_1080_selected);
            } else {
                itemClarityChooseBinding.f39809a.setBackgroundResource(R$drawable.bg_resolution_1080_unselected);
            }
        } else {
            itemClarityChooseBinding.f39810b.setVisibility(8);
            if (clarityChooseDialog.f45033o.getResolutionValue() == dVar.b()) {
                itemClarityChooseBinding.f39809a.setBackgroundResource(R$drawable.bg_resolution_selected);
            } else {
                itemClarityChooseBinding.f39809a.setBackgroundResource(R$drawable.bg_resolution_unselected);
            }
        }
        itemClarityChooseBinding.f39811c.setText(dVar.a(onBind.i()));
        View root = itemClarityChooseBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        b0.c(root, 0L, new Function1() { // from class: uh.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit U;
                U = ClarityChooseDialog.U(d.this, clarityChooseDialog, (View) obj);
                return U;
            }
        }, 1, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U(uh.d dVar, ClarityChooseDialog clarityChooseDialog, View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (dVar.b() == clarityChooseDialog.f45033o.getResolutionValue()) {
            clarityChooseDialog.dismiss();
            return Unit.f60915a;
        }
        Function1<? super uh.d, Unit> function1 = clarityChooseDialog.f45035q;
        if (function1 != null) {
            function1.invoke(dVar);
        }
        clarityChooseDialog.dismiss();
        return Unit.f60915a;
    }

    public final void R(@NotNull PlayResolution cur, @NotNull List<PlayResolution> list) {
        Intrinsics.checkNotNullParameter(cur, "cur");
        Intrinsics.checkNotNullParameter(list, "list");
        this.f45033o = cur;
        this.f45034p.clear();
        List<PlayResolution> list2 = list;
        boolean z10 = list2 instanceof Collection;
        if (!z10 || !list2.isEmpty()) {
            Iterator<T> it = list2.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((PlayResolution) it.next()).getResolutionValue() == 1080) {
                        this.f45034p.add(new uh.d(1080));
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (!z10 || !list2.isEmpty()) {
            Iterator<T> it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((PlayResolution) it2.next()).getResolutionValue() == 720) {
                        this.f45034p.add(new uh.d(720));
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        if (!z10 || !list2.isEmpty()) {
            for (PlayResolution playResolution : list2) {
                if (playResolution.getResolutionValue() == 480) {
                    this.f45034p.add(new uh.d(480));
                    return;
                }
            }
        }
    }

    public final void V(@Nullable Function1<? super uh.d, Unit> function1) {
        this.f45035q = function1;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_clarity_choose;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public boolean o() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        RecyclerView recyclerView = ((DialogFragmentClarityChooseBinding) n()).f38807a;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        o1.b.f(recyclerView, this.f45034p);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        RecyclerView recyclerView = ((DialogFragmentClarityChooseBinding) n()).f38807a;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        o1.b.g(o1.b.c(recyclerView, 4, 0, false, false, 14, null), new Function2() { // from class: uh.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit S;
                S = ClarityChooseDialog.S(ClarityChooseDialog.this, (BindingAdapter) obj, (RecyclerView) obj2);
                return S;
            }
        }).K(this.f45034p);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ClarityChooseDialog";
    }
}
