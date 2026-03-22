package com.startshorts.androidplayer.ui.fragment.settings;

import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.databinding.FragmentDeleteAccountBinding;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment;
import com.startshorts.androidplayer.ui.fragment.settings.DeleteAccountFragment;
import com.startshorts.androidplayer.viewmodel.settings.SettingsViewModel;
import com.startshorts.androidplayer.viewmodel.settings.a;
import com.startshorts.androidplayer.viewmodel.settings.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DeleteAccountFragment.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DeleteAccountFragment extends ToolbarFragment<FragmentDeleteAccountBinding> {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final a f46773k = new a(null);
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final i f46774j = kotlin.c.b(new Function0() { // from class: wi.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            SettingsViewModel M;
            M = DeleteAccountFragment.M(DeleteAccountFragment.this);
            return M;
        }
    });

    /* compiled from: DeleteAccountFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DeleteAccountFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DeleteAccountFragment.this.h();
        }
    }

    /* compiled from: DeleteAccountFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            DeleteAccountFragment.this.J().G(new a.C0689a(DeleteAccountFragment.this.getContext()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DeleteAccountFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46777a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46777a = function;
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
            return this.f46777a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46777a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SettingsViewModel J() {
        return (SettingsViewModel) this.f46774j.getValue();
    }

    private final void K() {
        ((FragmentDeleteAccountBinding) A()).f39410a.setOnClickListener(new b());
    }

    private final void L() {
        ((FragmentDeleteAccountBinding) A()).f39411b.setOnClickListener(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SettingsViewModel M(DeleteAccountFragment deleteAccountFragment) {
        SettingsViewModel settingsViewModel = (SettingsViewModel) new ViewModelProvider(deleteAccountFragment).get(SettingsViewModel.class);
        settingsViewModel.C().observe(deleteAccountFragment, new d(new Function1() { // from class: wi.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit N;
                N = DeleteAccountFragment.N((com.startshorts.androidplayer.viewmodel.settings.b) obj);
                return N;
            }
        }));
        return settingsViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N(com.startshorts.androidplayer.viewmodel.settings.b bVar) {
        if (bVar instanceof b.a) {
            AccountManager.p(AccountManager.f41533a, null, false, false, 7, null);
            aa.a aVar = aa.a.f321a;
            String name = MainActivity.class.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            aVar.i(name);
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_delete_account;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        E(R$string.settings_fragment_delete_account);
        L();
        K();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ToolbarFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "DeleteAccountFragment";
    }
}
