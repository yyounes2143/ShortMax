package com.startshorts.androidplayer.viewmodel.base;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import fk.u;
import gt.g;
import gt.g0;
import gt.q0;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public class BaseViewModel extends ViewModel {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f48310c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String f48311d = "BaseViewModel";

    /* renamed from: a  reason: collision with root package name */
    private boolean f48312a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final i f48313b = c.b(new Function0() { // from class: qk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData d10;
            d10 = BaseViewModel.d();
            return d10;
        }
    });

    /* compiled from: BaseViewModel.kt */
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
    public static final MutableLiveData d() {
        return new MutableLiveData();
    }

    public static /* synthetic */ r i(BaseViewModel baseViewModel, String str, boolean z10, Function2 function2, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return baseViewModel.g(str, z10, function2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeTask");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ r j(BaseViewModel baseViewModel, String str, boolean z10, Function2 function2, Function1 function1, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            if ((i10 & 8) != 0) {
                function1 = null;
            }
            return baseViewModel.h(str, z10, function2, function1);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeTask");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(BaseViewModel baseViewModel, String str) {
        baseViewModel.y(str);
        return Unit.f60915a;
    }

    public static /* synthetic */ r n(BaseViewModel baseViewModel, g0 g0Var, String str, boolean z10, Function2 function2, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 4) != 0) {
                z10 = false;
            }
            return baseViewModel.m(g0Var, str, z10, function2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: executeTaskIgnoreCancel");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u(Exception exc, Function1<? super String, Unit> function1) {
        exc.printStackTrace();
        String message = exc.getMessage();
        if (function1 != null) {
            function1.invoke(message);
        } else {
            z(exc);
        }
    }

    public final void f(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(t(), error);
    }

    @NotNull
    public final r g(@NotNull String taskName, boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task) {
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        return h(taskName, z10, task, null);
    }

    @NotNull
    public final r h(@NotNull String taskName, boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task, @Nullable Function1<? super String, Unit> function1) {
        r d10;
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        d10 = g.d(ViewModelKt.getViewModelScope(this), q0.b(), null, new BaseViewModel$executeTask$1(task, this, function1, z10, taskName, null), 2, null);
        return d10;
    }

    @NotNull
    public final r k(@NotNull g0 customScope, @NotNull String taskName, boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task, @Nullable Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(customScope, "customScope");
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        String str = t() + ':' + taskName;
        if (function1 == null) {
            function1 = new Function1() { // from class: qk.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit l10;
                    l10 = BaseViewModel.l(BaseViewModel.this, (String) obj);
                    return l10;
                }
            };
        }
        return coroutineUtil.i(customScope, str, z10, task, function1);
    }

    @NotNull
    public final r m(@NotNull g0 customScope, @NotNull String taskName, boolean z10, @NotNull Function2<? super g0, ? super rs.c<? super Unit>, ? extends Object> task) {
        Intrinsics.checkNotNullParameter(customScope, "customScope");
        Intrinsics.checkNotNullParameter(taskName, "taskName");
        Intrinsics.checkNotNullParameter(task, "task");
        return k(customScope, taskName, z10, task, null);
    }

    @NotNull
    public final MutableLiveData<ApiErrorState> o() {
        return (MutableLiveData) this.f48313b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        this.f48312a = true;
        v("onCleared");
    }

    @NotNull
    public final ApiErrorState p(@NotNull ResponseException throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        if (throwable.isNetworkError()) {
            return new ApiErrorState(1, u.f51776a.d(R$string.common_network_error));
        }
        return new ApiErrorState(2, u.f51776a.e(R$string.common_error_code, String.valueOf(throwable.getCode())));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean q() {
        return this.f48312a;
    }

    @NotNull
    public final ResponseException r(@Nullable String str) {
        return s(new Throwable(str));
    }

    @NotNull
    public final ResponseException s(@Nullable Throwable th2) {
        return z.a(th2);
    }

    @NotNull
    public String t() {
        return f48311d;
    }

    public final void v(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(t(), info);
    }

    public void x(@NotNull ResponseException throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        o.b(o(), p(throwable));
    }

    public final void y(@Nullable String str) {
        x(r(str));
    }

    public void z(@NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        x(s(throwable));
    }

    public final void e() {
    }

    public void w() {
    }
}
