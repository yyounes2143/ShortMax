package com.startshorts.androidplayer.ui.fragment.profile;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import com.ss.ttm.player.MediaFormat;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.language.LanguageAdapter;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.databinding.FragmentRecyclerViewBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarRVFragment;
import com.startshorts.androidplayer.ui.fragment.profile.AppLanguageFragment;
import com.startshorts.androidplayer.ui.view.base.RVDecoration;
import com.startshorts.androidplayer.viewmodel.profile.LanguageViewModel;
import com.startshorts.androidplayer.viewmodel.profile.a;
import com.startshorts.androidplayer.viewmodel.profile.b;
import fk.z;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AppLanguageFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAppLanguageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLanguageFragment.kt\ncom/startshorts/androidplayer/ui/fragment/profile/AppLanguageFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"})
/* loaded from: classes7.dex */
public final class AppLanguageFragment extends ToolbarRVFragment<AppLanguage, FragmentRecyclerViewBinding> {
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    public static final a f46388y = new a(null);
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final i f46389x = kotlin.c.b(new Function0() { // from class: si.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            LanguageViewModel w02;
            w02 = AppLanguageFragment.w0(AppLanguageFragment.this);
            return w02;
        }
    });

    /* compiled from: AppLanguageFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AppLanguageFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<AppLanguage> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ LanguageAdapter f46391b;

        b(LanguageAdapter languageAdapter) {
            this.f46391b = languageAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, AppLanguage d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            AppLanguageFragment.this.z0(this.f46391b, d10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppLanguageFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46392a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46392a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f46392a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46392a.invoke(obj);
        }
    }

    private final LanguageViewModel v0() {
        return (LanguageViewModel) this.f46389x.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LanguageViewModel w0(final AppLanguageFragment appLanguageFragment) {
        LanguageViewModel languageViewModel = (LanguageViewModel) new ViewModelProvider(appLanguageFragment).get(LanguageViewModel.class);
        languageViewModel.B().observe(appLanguageFragment, new c(new Function1() { // from class: si.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit x02;
                x02 = AppLanguageFragment.x0(AppLanguageFragment.this, (com.startshorts.androidplayer.viewmodel.profile.b) obj);
                return x02;
            }
        }));
        return languageViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(AppLanguageFragment appLanguageFragment, com.startshorts.androidplayer.viewmodel.profile.b bVar) {
        if (bVar instanceof b.a) {
            appLanguageFragment.o0(((b.a) bVar).a());
        } else if (bVar instanceof b.C0674b) {
            appLanguageFragment.startActivity(new Intent(appLanguageFragment.requireContext(), MainActivity.class));
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    private final void y0(AppLanguage appLanguage) {
        if (!Intrinsics.areEqual(appLanguage.getOfficialName(), ud.a.f68411a.b())) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString(MediaFormat.KEY_LANGUAGE, appLanguage.getOfficialName());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "language_result", bundle, 0L, 4, null);
            v0().E(new a.b(appLanguage));
            return;
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NotifyDataSetChanged"})
    public final void z0(LanguageAdapter languageAdapter, AppLanguage appLanguage) {
        String str;
        Object obj;
        String str2;
        Iterator it = languageAdapter.m().iterator();
        while (true) {
            str = null;
            if (it.hasNext()) {
                obj = it.next();
                if (((AppLanguage) obj).isSelected()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        AppLanguage appLanguage2 = (AppLanguage) obj;
        if (appLanguage2 != null) {
            str2 = appLanguage2.getOfficialName();
        } else {
            str2 = null;
        }
        if (str2 != null && str2.length() != 0) {
            if (appLanguage2 != null) {
                str = appLanguage2.getOfficialName();
            }
            if (Intrinsics.areEqual(str, appLanguage.getOfficialName())) {
                return;
            }
        }
        for (D d10 : languageAdapter.m()) {
            d10.setSelected(Intrinsics.areEqual(d10.getOfficialName(), appLanguage.getOfficialName()));
        }
        languageAdapter.notifyDataSetChanged();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        RVDecoration.a aVar = RVDecoration.f47108f;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        m0(RVDecoration.a.b(aVar, requireContext, null, z.f51786a.g(), false, 10, null));
        LanguageAdapter languageAdapter = new LanguageAdapter();
        languageAdapter.K(true);
        languageAdapter.B(new b(languageAdapter));
        k0(languageAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean k() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        q0(R$string.app_language_fragment_title);
        LanguageViewModel v02 = v0();
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        v02.E(new a.C0673a(requireContext));
        EventManager.s0(EventManager.f42463a, "language_setting_show", null, 0L, 6, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarRVFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "AppLanguageFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void s() {
        Object obj;
        if (e0() instanceof LanguageAdapter) {
            RecyclerView.Adapter<?> e02 = e0();
            Intrinsics.checkNotNull(e02, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.language.LanguageAdapter");
            Iterator it = ((LanguageAdapter) e02).m().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (((AppLanguage) obj).isSelected()) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            AppLanguage appLanguage = (AppLanguage) obj;
            if (appLanguage != null) {
                y0(appLanguage);
                return;
            } else {
                h();
                return;
            }
        }
        h();
    }
}
